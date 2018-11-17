# UIView Styling
This extension allows you to add styling to UIView simply invoking a function. 

## Usage

1. Shadow
```Swift
let view = UIView()
view.setupShadow(colour: UIColor.black, opacity: 0.5, offset: CGSize.zero, radius: 8)
```

1. Border
```Swift
let view = UIView()
view.setupBorder(colour: UIColor.black, width: 0.2)
```

1. Gradient
```Swift
let view = UIView()
let colors: [UIColor] = [UIColor.black, UIColor.white]
let locations: [NSNumber] = [0.0, 1.0]
view.setupGradient(colors: colors, locations: locations, orientation: .vertical)
```
