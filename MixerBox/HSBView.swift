import UIKit

public final class HSBView: ColorPickerView {
  
  public override var hsb: HSB {
    didSet {
      knobContainer.moveKnobTo(position: position(forHSB: hsb))
      background.brightness = Float(hsb.brightness)
      background.redraw()
    }
  }
  
  var background: HSBMetalView!

  public required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setup()
  }

  public override init(frame: CGRect) {
    super.init(frame: frame)
    setup()
  }
  
  func brightness() -> Float {
    return background.brightness
  }
  
  private func setup() {
    background = HSBMetalView(frame: bounds, fragmentFunctionName: "fragment_hsb")
    background.translatesAutoresizingMaskIntoConstraints = false
    addSubview(background)
    background.autoLayoutBindFrameToSuperviewBounds()
  }
}
