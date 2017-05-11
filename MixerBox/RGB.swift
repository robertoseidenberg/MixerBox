import simd

public struct RGB {

  public var red:   Float // Range: 0...1
  public var green: Float // Range: 0...1
  public var blue:  Float // Range: 0...1
  public var alpha: Float // Range: 0...1

  public init(red: Float, green: Float, blue: Float, alpha: Float = 1.0) {    
    self.red   = red  .clamp(min: 0, max: 1)
    self.green = green.clamp(min: 0, max: 1)
    self.blue  = blue .clamp(min: 0, max: 1)
    self.alpha = alpha.clamp(min: 0, max: 1)
  }
  
  public init(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat = 1.0) {
    self.red   = Float(red)  .clamp(min: 0, max: 1)
    self.green = Float(green).clamp(min: 0, max: 1)
    self.blue  = Float(blue) .clamp(min: 0, max: 1)
    self.alpha = Float(alpha).clamp(min: 0, max: 1)
  }
}

extension RGB {
  
  public func hsb() -> HSB {
    return UIColor(rgb: self).hsb()
  }
}
