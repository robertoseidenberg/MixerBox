import UIKit

class RoundedCornerView: UIView {

  var borderWidth: CGFloat = 0

  var innerborderColor: UIColor = UIColor.clear
  var outerborderColor: UIColor = UIColor.clear

  var innerBorderLayer: AnimationlessLayer!
  var outerBorderLayer: AnimationlessLayer!

  public required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setup()
  }

  public override init(frame: CGRect) {
    super.init(frame: frame)
    setup()
  }

  override func layoutSubviews() {
    super.layoutSubviews()

    for layer in [innerBorderLayer, outerBorderLayer] {
      layer!.masksToBounds = true
      layer!.masksToBounds = true
      layer!.allowsEdgeAntialiasing = true
    }
    
    innerBorderLayer.cornerRadius = min(bounds.size.width - borderWidth, bounds.size.height - borderWidth) / 6
    outerBorderLayer.cornerRadius = min(bounds.size.width, bounds.size.height) / 6
  }
  
  override var bounds: CGRect {
    didSet {
      if setupSublayers() {
        outerBorderLayer.frame = bounds
      }
    }
  }

  func setup() {
    setupSublayers()
  }

  @discardableResult func setupSublayers() -> Bool {
    
    if innerBorderLayer == nil && bounds != CGRect.zero {
      
      innerBorderLayer                 = AnimationlessLayer()
      innerBorderLayer.borderWidth     = borderWidth
      innerBorderLayer.backgroundColor = innerborderColor.cgColor
      
      outerBorderLayer                 = AnimationlessLayer()
      outerBorderLayer.borderWidth     = borderWidth
      outerBorderLayer.backgroundColor = outerborderColor.cgColor
      
      layer.addSublayer(innerBorderLayer)
      layer.addSublayer(outerBorderLayer)
      
      return true
      
    } else {
      return false
    }
  }

  func updateSublayers() {
    
    if let superview = superview, innerBorderLayer != nil {
      let overlap = superview.frame.intersection(frame)

      let rx         = overlap.width / bounds.width
      let ry         = overlap.height / bounds.height
      let x: CGFloat = frame.origin.x > 0 ? 1.5 - rx : -0.5 + rx
      let y: CGFloat = frame.origin.y > 0 ? 1.5 - ry : -0.5 + ry
      outerBorderLayer.anchorPoint = CGPoint(x: x, y: y)
      
      let size = CGSize(width: overlap.size.width, height: overlap.size.height)
      outerBorderLayer.bounds.size = size
      
      innerBorderLayer.frame = outerBorderLayer.frame.insetBy(dx: borderWidth, dy: borderWidth)
    }
  }
}
