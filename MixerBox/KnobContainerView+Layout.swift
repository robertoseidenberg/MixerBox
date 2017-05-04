extension KnobContainerView {

  func moveKnobTo(position: CGPoint?) {
    if let position = position {
      knob.center = position.clamp(min: CGPoint.zero,
                                   max: CGPoint(x: bounds.width, y: bounds.height))
      knob.updateSublayers()
    }
  }
}
