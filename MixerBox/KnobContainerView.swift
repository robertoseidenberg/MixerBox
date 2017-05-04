class KnobContainerView: UIView {

  var knobSize: CGFloat = 20

  var knobBorderColor: UIColor = UIColor.black.withAlphaComponent(0.5) {
    didSet {
      knob.borderColor = knobBorderColor
    }
  }

  var knobBorderWidth: CGFloat = 2 {
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
