import UIKit

class RoundedCornerView: UIView {

  var borderWidth: CGFloat = 0 { didSet { borderLayer.borderWidth = borderWidth }}

  var borderColor: UIColor = UIColor.clear { didSet { borderLayer.borderColor = borderColor.cgColor }}

  var borderLayer: AnimationlessLayer!

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

    borderLayer.masksToBounds = true
    borderLayer.masksToBounds = true
    borderLayer.allowsEdgeAntialiasing = true
    borderLayer.cornerRadius = min(bounds.size.width, bounds.size.height) / 6
  }

  override var bounds: CGRect { didSet { borderLayer.frame = bounds }}

  func setup() {
    setupSublayers()
  }

  func setupSublayers() {
    borderLayer = AnimationlessLayer()
    layer.addSublayer(borderLayer)
  }

  func updateSublayers() {
    
    if let superview = superview {
      let overlap = superview.frame.intersection(frame)

      let rx         = overlap.width / bounds.width
      let ry         = overlap.height / bounds.height
      let x: CGFloat = frame.origin.x > 0 ? 1.5 - rx : -0.5 + rx
      let y: CGFloat = frame.origin.y > 0 ? 1.5 - ry : -0.5 + ry
      borderLayer.anchorPoint = CGPoint(x: x, y: y)
      
      let size = CGSize(width: overlap.size.width, height: overlap.size.height)
      borderLayer.bounds.size = size
    }
  }
}
