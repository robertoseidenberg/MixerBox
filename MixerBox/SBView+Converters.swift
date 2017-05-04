extension SBView {
  
  func hsb(atPoint position: CGPoint) -> HSB {
    
    var hsb = self.hsb
    hsb.saturation = Float(position.x / bounds.size.width)
    hsb.brightness = 1 - Float(position.y / bounds.size.height)
    
    return hsb
  }
  
  func position(forHSB hsb: HSB) -> CGPoint {
    
    let x = bounds.size.width * CGFloat(hsb.saturation)
    let y = bounds.size.height * CGFloat(1 - hsb.brightness)
    
    return CGPoint(x: x, y: y)
  }
}
