import simd

public struct RGB {

  public var red:   Float // Range: 0...1
  public var green: Float // Range: 0...1
  public var blue:  Float // Range: 0...1
  public var alpha: Float // Range: 0...1

  public init(red: Float, green: Float, blue: Float, alpha: Float = 1.0) {    
    self.red = red
    self.green = green
    self.blue = blue
    self.alpha = alpha
  }
  
  public init(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat = 1.0) {
    self.red = Float(red)
    self.green = Float(green)
    self.blue = Float(blue)
    self.alpha = Float(alpha)
  }
}

extension RGB {
  
  public func hsb() -> HSB {
    return UIColor(rgb: self).hsb()
  }
}
