# UIColor
 The extension for the `UIColor` class.

## Usage

### RGBA

This extension allows you to define Hexadecimal colours using RGBA values without the need of dividing it by `255`.

To define, simply use the `rgba(red:,green:,blue:,alpha:)` function and input the equivalent RGBA values of the hexadecimal colour:

```Swift 
static let _1D1D1D = UIColor.rgba(29, 29, 29, 1)
```

To use the colour:

```Swift
let label = UILabel()
label.textColor = UIColor.Hex._1D1D1D
```
