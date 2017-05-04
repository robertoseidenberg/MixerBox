extension KnobContainerView {

  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    super.touchesBegan(touches, with: event)
    moveKnobTo(position: touches.first?.preciseLocation(in: self) ?? touches.first?.location(in: self))
  }

  override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    super.touchesMoved(touches, with: event)
    moveKnobTo(position: touches.first?.preciseLocation(in: self) ?? touches.first?.location(in: self))
  }

  override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    super.touchesEnded(touches, with: event)
    moveKnobTo(position: touches.first?.preciseLocation(in: self) ?? touches.first?.location(in: self))
  }
}
