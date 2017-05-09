// Allows selection of saturation and lightness
public final class SBView: ColorPickerView {
  
  var background: SBMetalView!
  
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
    background.hsb = hsb
    background.redraw()
  }
  
  private func setup() {
    background = SBMetalView(frame: bounds, fragmentFunctionName: "fragment_hs")
    background.translatesAutoresizingMaskIntoConstraints = false
    addSubview(background)
    background.autoLayoutBindFrameToSuperviewBounds()
  }
}
