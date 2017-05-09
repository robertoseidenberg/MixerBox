import UIKit

// Displays all hues in a colorwheel manner and allows picking hue and saturation
public final class HSBView: ColorPickerView {
  
  var background: HSBMetalView!

  public required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setup()
  }

  public override init(frame: CGRect) {
    super.init(frame: frame)
    setup()
  }
  
  public func hsb() -> HSB {
    return hsb
  }
  
  public func setHSB(_ hsb: HSB, animated: Bool) {
    self.hsb = hsb
    knobContainer.moveKnobTo(position: position(forHSB: hsb), animated: animated)
    background.brightness = Float(hsb.brightness)
    background.redraw()
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
