import simd

struct SBUniforms {
  
  let width: UInt32
  let height: UInt32
  let hue: Float
  
  init(size: CGSize, hue: Float) {
    width = UInt32(size.width)
    height = UInt32(size.width)
    self.hue = hue
  }
}
