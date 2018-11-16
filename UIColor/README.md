# UIColor Utilities
This extension allows you to predefine Hexadecimal colours as UIColor instance. 

## Usage

To predefine, simply add (into the `UIColor.Hex` class) the equivalent RGBA representation of the hexadecimal colour:

```Swift 
static let _1D1D1D = rgba(29, 29, 29, 1)
```

To use the colour:

```Swift
let label = UILabel()
label.textColor = UIColor.Hex._1D1D1D
```
