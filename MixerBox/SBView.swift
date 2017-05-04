public final class SBView: ColorPickerView {
  
  var background: SBMetalView!
  
  public override var hsb: HSB {
    didSet {
      knobContainer.moveKnobTo(position: position(forHSB: hsb))
      background.hsb = hsb
      background.redraw()
    }
  }
  
  public required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setup()
  }
  
  public override init(frame: CGRect) {
    super.init(frame: frame)
    setup()
  }
  
  private func setup() {
    background = SBMetalView(frame: bounds, fragmentFunctionName: "fragment_hs")
    background.translatesAutoresizingMaskIntoConstraints = false
    addSubview(background)
    background.autoLayoutBindFrameToSuperviewBounds()
  }
}
