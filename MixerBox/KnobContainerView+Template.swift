extension KnobContainerView {

  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    super.touchesBegan(touches, with: event)
    moveKnobForTouches(touches)
  }

  override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    super.touchesMoved(touches, with: event)
    moveKnobForTouches(touches)
  }

  override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    super.touchesEnded(touches, with: event)
    moveKnobForTouches(touches)
  }
}

extension KnobContainerView {
  
  fileprivate func moveKnobForTouches(_ touches: Set<UITouch>) {
    
    if let position = touches.first?.preciseLocation(in: self) ?? touches.first?.location(in: self) {
      moveKnobTo(position: position, animated: false)
    }
  }
}
