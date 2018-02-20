//  Copyright © 2018 Inloop. All rights reserved.

import Foundation

public protocol IndicatorRenderer {
    func renderFilled(in rect: CGRect, context: CGContext)
    func renderEmpty(in rect: CGRect, context: CGContext)
}

class CircleIndicatorRenderer: IndicatorRenderer {
    func renderFilled(in rect: CGRect, context: CGContext) {
        context.fillEllipse(in: rect)
    }
    
    func renderEmpty(in rect: CGRect, context: CGContext) {
        context.strokeEllipse(in: rect)
    }
}
