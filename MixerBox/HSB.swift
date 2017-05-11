import simd

public struct HSB {

  public var hue: Float        // Range: 0...1
  public var saturation: Float // Range: 0...1
  public var brightness: Float // Range: 0...1
  
  public init(hue: Float, saturation: Float, brightness: Float) {
    
    self.hue        = hue       .clamp(min: 0, max: 1)
    self.saturation = saturation.clamp(min: 0, max: 1)
    self.brightness = brightness.clamp(min: 0, max: 1)
  }
  
  public init(hue: CGFloat, saturation: CGFloat, brightness: CGFloat) {
    self.hue        = Float(hue)       .clamp(min: 0, max: 1)
    self.saturation = Float(saturation).clamp(min: 0, max: 1)
    self.brightness = Float(brightness).clamp(min: 0, max: 1)
  }
}

extension HSB {
  
  public func rgb() -> RGB {
    return UIColor(hsb: self).rgb()
  }
}
