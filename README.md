# ProductivityKit
A repository with nifty Swift extensions to make you more productive!  
<sub>(This repository will have on-going updates. More extensions coming soon!)</sub>

## Requirements
- Swift 4.2
- iOS 10 or later

## Installation
**Cocoapods**  

You may opt to install all or only some extensions. Refer to the _Available Extensions_ section to see what extensions are available.  

Add **one** of the following to your `Podfile`:
```ruby
# Add this to install all extensions
pod 'ProductivityKit', '1.0.0'

# Or, add this to install all UIView extensions
pod 'ProductivityKit/UIView', '1.0.0'

# Or, add this to install only the UIView styling extensions
pod 'ProductivityKit/UIView/Styling', '1.0.0'
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

1. `NSMutableAttributedString`
    - `Interpolations`
1. `UIColor`
    - `RGBA`
1. `UIView`
    - `Styling`

## License
Under the MIT license. See LICENSE file for details
