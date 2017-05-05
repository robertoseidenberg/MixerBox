#if !(IOS_SIMULATOR)
  import Metal
#endif


class SBMetalView: MetalView {
  
  var hsb = UIColor.white.hsb() { didSet { redraw() }}
  
  #if !(IOS_SIMULATOR)
  override func updateFragmentBytes(forEncoder encoder: MTLRenderCommandEncoder) {
    var u = SBUniforms(size: bounds.size, hue: hsb.hue)
    encoder.setFragmentBytes(&u, length: MemoryLayout<SBUniforms>.size, at: 0)
  }
  #endif
}
