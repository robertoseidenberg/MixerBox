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

    knob.backgroundColor  = knobColor
    knob.innerborderColor = knobInnerBorderColor
    knob.outerborderColor = knobOuterBorderColor
    knob.borderWidth      = knobBorderWidth

    addSubview(knob)
    knob.autoLayoutFixedWidth(knobSize)
    knob.autoLayoutFixedHeight(knobSize)
    knob.autoLayoutBindTopToSuperviewTop()
    knob.autoLayoutBindTopToSuperviewLeft()
  }
}
