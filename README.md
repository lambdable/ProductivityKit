# ProductivityKit ![build-travis](https://travis-ci.com/zaimramlan/ProductivityKit.svg?branch=develop)
![pod-version](https://cocoapod-badges.herokuapp.com/v/ProductivityKit/badge.png) ![pod-platform](https://cocoapod-badges.herokuapp.com/p/ProductivityKit/badge.png)
A repository with nifty Swift extensions to make you more productive!
<sub>(This repository will have on-going updates. More extensions coming soon!)</sub>

## Requirements
- Swift 4.2
- iOS 10 or later

## Installation
**Cocoapods**

You may opt to install all or only some extensions. Refer to the [Available Extensions](#available-extensions) section to see what extensions are available.

Add **one** of the following to your `Podfile`:
```ruby
# Add this to install all extensions
pod 'ProductivityKit'

# Or, add this to install all UIView extensions
pod 'ProductivityKit/UIView'

# Or, add this to install only the UIView styling extensions
pod 'ProductivityKit/UIView/Styling'
```

## Usage
Simply import the `ProductivityKit` and you can straight away use the extensions installed.
```Swift
import ProductivityKit

class MyController: UIViewController {
    ...
    override func viewDidLoad() {
        super.viewDidLoad()
        let view = UIView()
        view.setupBorder(colour: UIColor.black, width: 0.5)
    }
    ...
}
```

## Available Extensions
Head over to the folders listed to see more details of the extensions for a particular Swift core class.

1. [Date](ProductivityKit/Date)
    - `Utility`
1. [String](ProductivityKit/String)
    - `Formatting`
1. [NSMutableAttributedString](ProductivityKit/NSMutableAttributedString)
    - `Interpolations`
1. [UIColor](ProductivityKit/UIColor)
    - `RGBA`
1. [UIView](ProductivityKit/UIView)
    - `Styling`

Or view the [source code docs](https://zaimramlan.github.io/ProductivityKit) to dive deeper.

## License
See LICENSE file for details
