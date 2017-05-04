extension KnobContainerView {

  func setup() {
    setupView()
    setupKnob()
  }

  func setupView() {
    clipsToBounds = true
  }

  func setupKnob() {
    knob = RoundedCornerView(frame: CGRect.zero)
    knob.translatesAutoresizingMaskIntoConstraints = false

    knob.backgroundColor = knobColor
    knob.borderColor = knobBorderColor
    knob.borderWidth = knobBorderWidth

    addSubview(knob)
    knob.autoLayoutFixedWidth(knobSize)
    knob.autoLayoutFixedHeight(knobSize)
    knob.autoLayoutCenterInSuperview()
  }
}
