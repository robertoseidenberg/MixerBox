extension KnobContainerView {

  func moveKnobTo(position: CGPoint, animated: Bool) {
    
    let hWidth  = knob.bounds.width / 2
    let hHeight = knob.bounds.height / 2
    
    let min = CGPoint(x: -hWidth, y: -hHeight)
    let max = CGPoint(x: self.bounds.width - hWidth, y: self.bounds.height - hHeight)
    
    let center = position.clamp(min: min, max: max)
    
    let change = {
      self.knob.transform = CGAffineTransform(translationX: center.x, y: center.y)
      self.knob.updateSublayers()
    }
    
    if animated {
      UIView.animate(withDuration: 0.25) { change() }
    } else {
      change()
    }
  }
}
