//  Copyright © 2018 Inloop. All rights reserved.

import UIKit
import PinIndicatorView

class ViewController: UIViewController {
    @IBOutlet weak var pinIndicator: PinIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pinIndicator.digitCount = 5
        pinIndicator.color = .gray
    }

    @IBAction func digitButtonPressed(_ sender: Any) {
        pinIndicator.addDigit()
        
        if pinIndicator.isFilled {
            pinIndicator.shake()
            pinIndicator.clear()
        }
    }
    
    @IBAction func deleteButtonPressed(_ sender: Any) {
        pinIndicator.deleteDigit()
    }
}
