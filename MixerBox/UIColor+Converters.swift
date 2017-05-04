public extension UIColor {

  convenience init(rgb: RGB) {
    self.init(red:   CGFloat(rgb.red),
              green: CGFloat(rgb.green),
              blue:  CGFloat(rgb.blue),
              alpha: CGFloat(rgb.alpha))
  }

  convenience init(hsb: HSB) {
    self.init(hue:        CGFloat(hsb.hue),
              saturation: CGFloat(hsb.saturation),
              brightness: CGFloat(hsb.brightness),
              alpha: 1)
  }

  func rgb() -> RGB {
    
    var r = CGFloat(0)
    var g = CGFloat(0)
    var b = CGFloat(0)
    var a = CGFloat(0)
    getRed(&r, green: &g, blue: &b, alpha: &a)
    
    return RGB(red: r, green: g, blue: b)
  }
  
  func hsb() -> HSB {
    
    var h = CGFloat(0)
    var s = CGFloat(0)
    var b = CGFloat(0)
    var a = CGFloat(0)
    getHue(&h, saturation: &s, brightness: &b, alpha: &a)
    
    return HSB(hue: h, saturation: s, brightness: b)
  }
}
