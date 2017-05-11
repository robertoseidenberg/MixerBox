extension HSBView {
  
  public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    super.touchesBegan(touches, with: event)
    _hsb = hsb(atPoint: markerPosition())
  }
  
  public override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    super.touchesMoved(touches, with: event)
    _hsb = hsb(atPoint: markerPosition())
  }
  
  public override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    super.touchesEnded(touches, with: event)
    _hsb = hsb(atPoint: markerPosition())
  }
}
