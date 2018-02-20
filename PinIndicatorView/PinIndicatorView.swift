//  Copyright © 2018 Inloop. All rights reserved.

import UIKit

@IBDesignable
public class PinIndicatorView: UIView {
    @IBInspectable public var digitCount: Int = 4 { didSet { setNeedsDisplay() } }
    @IBInspectable public var inputCount: Int = 0 { didSet { setNeedsDisplay() } }
    @IBInspectable public var color: UIColor = .blue
    public var renderer: IndicatorRenderer = CircleIndicatorRenderer()

    public var isFilled: Bool {
        return inputCount == digitCount
    }

    override public func draw(_ rect: CGRect) {
        let strokeWidth: CGFloat = 1
        let radius = frame.height / 2 - strokeWidth
        let interval = (frame.width - 2 * radius) / (CGFloat(digitCount) - 1) - strokeWidth

        guard let context = UIGraphicsGetCurrentContext() else { return }
        context.setStrokeColor(color.cgColor)
        context.setFillColor(color.cgColor)
        context.setLineWidth(strokeWidth)

        for i in 0..<digitCount {
            let x = CGFloat(i) * interval + strokeWidth / 2
            let y = strokeWidth / 2
            let rect = CGRect(x: x, y: y, width: 2 * radius, height: 2 * radius)
            if i < inputCount {
                renderer.renderFilled(in: rect, context: context)
            }
            else {
                renderer.renderEmpty(in: rect, context: context)
            }
        }
    }

    public func addDigit() {
        inputCount = min(inputCount + 1, digitCount)
    }

    public func deleteDigit() {
        inputCount = max(inputCount - 1, 0)
    }

    public func clear() {
        inputCount = 0
    }

    public func shake() {
        let animation = CAKeyframeAnimation(keyPath: "transform.translation.x")
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        animation.duration = 0.6
        animation.values = [-20.0, 20.0, -20.0, 20.0, -10.0, 10.0, -5.0, 5.0, 0.0]
        layer.add(animation, forKey: "pinIndicator.shake")
    }
}
