import simd

public struct HSB {

  public var hue: Float        // Range: ???
  public var saturation: Float // Range: 0..1
  public var brightness: Float // Range: 0..1
  
  public init(hue: Float, saturation: Float, brightness: Float) {
    self.hue = hue
    self.saturation = saturation
    self.brightness = brightness
  }
  
  public init(hue: CGFloat, saturation: CGFloat, brightness: CGFloat) {
    self.hue = Float(hue)
    self.saturation = Float(saturation)
    self.brightness = Float(brightness)
  }
}

extension HSB {
  
  public func rgb() -> RGB {
    return UIColor(hsb: self).rgb()
  }
}
