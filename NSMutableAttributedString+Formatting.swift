extension NSMutableAttributedString {
    
    // MARK: - NSMutableAttributedString Interpolations (With Styling)
    
    /// Replaces all String format specifiers with the given arguments while keeping their styles.
    /// (Only works if the given arguments is an array of NSAttributedStrings)
    ///
    /// - Parameter arguments: List of NSAttributedString replacements.
    /// - Returns: This NSMutableAttributedString with its format specifiers replaced with the given NSAttributedStrings.
    func format(with arguments: CVarArg...) -> NSMutableAttributedString {
        guard let attributedStrings = arguments as? [NSAttributedString] else { return self }
        return self
            .replaceFormatSpecifiersWithIndex(with: attributedStrings)
            .replaceFormatSpecifierWithoutIndex(with: attributedStrings)
    }
    
    /// Replaces String format specifiers (with index) with the given NSAttributedStrings.
    ///
    /// - Parameter attributedStrings: List of NSAttributedString replacements.
    /// - Returns: This NSMutableAttributedString with its format specifiers replaced with the given NSAttributedStrings.
    private func replaceFormatSpecifiersWithIndex(with attributedStrings: [NSAttributedString]) -> NSMutableAttributedString {
        
        // ensure patterns are valid
        let formatSpecifierPattern = "%[\\d]+\\$@"
        let digitPattern = "[\\d]+"
        guard
            let formatSpecifierRegEx = try? NSRegularExpression(pattern: formatSpecifierPattern, options: .useUnixLineSeparators),
            let digitRegEx = try? NSRegularExpression(pattern: digitPattern, options: .useUnixLineSeparators)
        else { return self }
        
        // extract range of format specifiers (if any)
        let currentString = self.string
        var range = NSRange(location: 0, length: currentString.count)
        var matches = formatSpecifierRegEx.matches(in: currentString, options: .withoutAnchoringBounds, range: range)
        
        while matches.count > 0 {
            
            // extract index from format specifier
            guard let matchingFormatSpecifierRange = matches.first?.range else { break }
            let formatSpecifier = self.mutableString.substring(with: matchingFormatSpecifierRange)
            let digitRange = NSRange(location: 0, length: formatSpecifier.count)
            let digitMatches = digitRegEx.matches(in: formatSpecifier, options: .withoutAnchoringBounds, range: digitRange)
            
            guard let matchingDigitRange = digitMatches.first?.range else { break }
            let mutableFormatSpecifier = NSMutableString(string: formatSpecifier)
            let index = NSDecimalNumber(string: mutableFormatSpecifier.substring(with: matchingDigitRange)).intValue - 1
            
            // try to replace string
            let replacementString = index < attributedStrings.count ? attributedStrings[index].string : "(null)"
            self.mutableString.replaceCharacters(in: matchingFormatSpecifierRange, with: replacementString)
            
            // try to add attributes to the string replacement
            if replacementString != "(null)" {
                let attributes = attributedStrings[index].attributes(at: 0, effectiveRange: nil)
                let replacementStringRange = NSRange(location: matchingFormatSpecifierRange.location, length: replacementString.count)
                self.addAttributes(attributes, range: replacementStringRange)
            }

            // overwrite range & matches to reflect newly replaced string
            range = NSRange(location: 0, length: self.mutableString.description.count)
            matches = formatSpecifierRegEx.matches(in: self.mutableString.description, options: .withoutAnchoringBounds, range: range)
        }
        
        return self
    }
    
    /// Replaces String format specifiers (without index) with given NSAttributedStrings.
    ///
    /// - Parameter attributedStrings: List of NSAttributedString replacements.
    /// - Returns: This NSMutableAttributedString with its format specifiers replaced with the given NSAttributedStrings.
    private func replaceFormatSpecifierWithoutIndex(with attributedStrings: [NSAttributedString]) -> NSMutableAttributedString {
        
        // ensure pattern is valid
        let formatSpecifierPattern = "%@"
        guard let regEx = try? NSRegularExpression(pattern: formatSpecifierPattern, options: .useUnixLineSeparators) else { return self }
        
        // extract range of format specifiers (if any)
        let currentString = self.string
        var range = NSRange(location: 0, length: currentString.count)
        var matches = regEx.matches(in: currentString, options: .withoutAnchoringBounds, range: range)
        var index = 0
        
        while matches.count > 0 {
            
            // try to replace string
            guard let matchingFormatSpecifierRange = matches.first?.range else { break }
            let replacementString = index < attributedStrings.count ? attributedStrings[index].string : "(null)"
            self.mutableString.replaceCharacters(in: matchingFormatSpecifierRange, with: replacementString)
            
            // try to add attributes to the string replacement
            if replacementString != "(null)" {
                let attributes = attributedStrings[index].attributes(at: 0, effectiveRange: nil)
                let replacementStringRange = NSRange(location: matchingFormatSpecifierRange.location, length: replacementString.count)
                self.addAttributes(attributes, range: replacementStringRange)
            }
            
            // overwrite range & matches to reflect newly replaced string
            range = NSRange(location: 0, length: self.mutableString.description.count)
            matches = regEx.matches(in: self.mutableString.description, options: .withoutAnchoringBounds, range: range)
            
            index += 1
        }
        
        return self
    }
}