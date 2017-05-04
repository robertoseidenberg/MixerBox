extension HSBView {

  func hsb(atPoint position: CGPoint) -> HSB {
    
    let nx = 1 - (position.x / bounds.size.width)
    let ny = 1 - (position.y / bounds.size.height)
    let norm = CGPoint(x: nx, y: ny)

    let toCenter = CGPoint(x: 0.5 - norm.x, y: 0.5 - norm.y)
    let angle = atan2(toCenter.y, toCenter.x) + CGFloat.pi
    let length = sqrt(pow(toCenter.x, 2) + pow(toCenter.y, 2))
    let extent = CGFloat(2)
    let radius = length * extent

    let hsb = HSB(hue: (Float(angle) / (Float.pi * 2)),
                  saturation: Float(radius),
                  brightness: background.brightness)
    
    return hsb
  }

  func position(forHSB hsb: HSB) -> CGPoint {
    
    let angleInRadians = (hsb.hue - 0.5) * (Float.pi * 2)
    let radius = hsb.saturation
    let xNorm = (radius * cos(angleInRadians) + 1) / 2
    let yNorm = (radius * sin(angleInRadians) + 1) / 2

    let x = CGFloat(xNorm) * bounds.size.width
    let y = CGFloat(yNorm) * bounds.size.height

    return CGPoint(x: x, y: y)
  }
}
