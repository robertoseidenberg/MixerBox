class KnobContainerView: UIView {

  var knobSize: CGFloat = 20

  var knobInnerBorderColor: UIColor = UIColor.black.withAlphaComponent(0.5) {
    didSet {
      knob.innerborderColor = knobInnerBorderColor
    }
  }
  
  var knobOuterBorderColor: UIColor = UIColor.white.withAlphaComponent(0.5) {
    didSet {
      knob.outerborderColor = knobOuterBorderColor
    }
  }

  var knobBorderWidth: CGFloat = 1 {
    didSet {
      knob.borderWidth = knobBorderWidth
    }
  }

  var knobColor: UIColor = UIColor.clear {
    didSet {
      knob.backgroundColor = knobColor
    }
  }

  var knob: RoundedCornerView!

  public required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setup()
  }

  public override init(frame: CGRect) {
    super.init(frame: frame)
    setup()
  }
}
