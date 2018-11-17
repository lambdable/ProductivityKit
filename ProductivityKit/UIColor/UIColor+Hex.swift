
import UIKit

public extension UIColor {
    
    /// Utility class to get Hex values
    class Hex {
        
        /// Returns a UIColor instance for the given RGBA color values.
        ///
        /// - Parameters:
        ///   - red: A CGFloat to define the 'red' colour intesity.
        ///   - green: A CGFloat to define the 'green' colour intesity.
        ///   - blue: A CGFloat to define the 'blue' colour intesity.
        ///   - alpha: A CGFloat to define the color's opacity.
        /// - Returns: A UIColor instance representing the RGBA color values.
        class func rgba(_ red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat) -> UIColor {
            let redValue   = red/255
            let greenValue = green/255
            let blueValue  = blue/255
            
            return UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: alpha)
        }
    }
}
