extension KnobContainerView {

  func moveKnobTo(position: CGPoint, animated: Bool) {
    
    let min    = CGPoint.zero
    let max    = CGPoint(x: self.bounds.width, y: self.bounds.height)
    let center = position.clamp(min: min, max: max)
    let change = {
      self.knob.center = center
      self.knob.updateSublayers()
    }
    
    if animated {
      UIView.animate(withDuration: 0.25) { change() }
    } else {
      change()
    }
  }
}
