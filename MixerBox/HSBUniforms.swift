struct HSBUniforms {

  let width: UInt32
  let height: UInt32
  let brightness: Float

  init(size: CGSize, brightness: Float) {
    width = UInt32(size.width)
    height = UInt32(size.width)
    self.brightness = brightness
  }
}
