public class ColorPickerView: UIView {
  
  public var delegate: ColorPickerViewDelegate?
  
  public internal(set) var hsb: HSB {
    get { return _hsb }
    set { _hsb = newValue }
  }
  var _hsb = UIColor.white.hsb()
  
  var knobContainer: KnobContainerView!
  
  public required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setup()
  }
  
  public override init(frame: CGRect) {
    super.init(frame: frame)
    setup()
  }
  
  private func setup() {
    knobContainer = KnobContainerView(frame: bounds)
    knobContainer.translatesAutoresizingMaskIntoConstraints = false
    addSubview(knobContainer)
    knobContainer.autoLayoutBindFrameToSuperviewBounds()
  }
}
