extension ColorPickerView {
  
  // Returns the position marked by the user adjustable rectangle.
  // Only use this function to get the marked position, the actual views position differs.
  func markerPosition() -> CGPoint {
    
    let x = knobContainer.knob.transform.tx + knobContainer.knob.bounds.width / 2
    let y = knobContainer.knob.transform.ty + knobContainer.knob.bounds.width / 2
    let positon = CGPoint(x: x, y: y)
    
    return positon
  }
}
