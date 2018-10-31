extension ColorPickerView {
  
  public override func updateConstraints() {
    super.updateConstraints()
    bringSubviewToFront(knobContainer)
  }

  public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    super.touchesBegan(touches, with: event)    
    delegate?.colorPickerView(self, didSelectHSB: hsb)
  }

  public override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    super.touchesMoved(touches, with: event)
    delegate?.colorPickerView(self, didSelectHSB: hsb)
  }

  public override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    super.touchesEnded(touches, with: event)
    delegate?.colorPickerView(self, didSelectHSB: hsb)
  }
}
