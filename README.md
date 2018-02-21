![Pin view sample](https://www.dropbox.com/s/kmyida8ryiy4e9w/PinIndicatorView.png?raw=1)

# PinIndicatorView
A simple UI component that mimics the lock screen pin indicator

## Usage
Import the framework
```
import PinIndicatorView
```

Add the `PinIndicatorView` view to your storyboard and create an outlet
```
@IBOutlet weak var pinIndicator: PinIndicatorView!
```

You can set the required number of digits and the colour. The defaults are 4 and blue. You can either set this programatically or in your storyboard
```
pinIndicator.digitCount = 8
pinIndicator.color = .green
```

Fill or unfill the indicator when digit or backspace buttons are pressed
```
pinIndicator.addDigit()
pinIndicator.deleteDigit()
```

You can check if the required number of digits was inputted
```
pinIndicator.isFilled
```

If your validation fails trigger the shake animation and clear the indicator
```
pinIndicator.shake()
pinIndicator.clear()
```

## Instalation
The library is available on cocoapods
```
pod 'PinIndicatorView', '~> 1.0'
```

## Customisation
You can customise the indicator by supplying a custom renderer. The renderer implements the `IndicatorRenderer` protocol and is assigned to the `renderer` property of the indicator.
```
class MyIndicatorRenderer: IndicatorRenderer {
   func renderFilled(in rect: CGRect, context: CGContext) {
      // TODO: Draw the filled shape
   }

   func renderEmpty(in rect: CGRect, context: CGContext) {
      // TODO: Draw the outline
   }
}
```
