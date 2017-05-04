class SBMetalView: MetalView {
  
  var hsb = UIColor.white.hsb() { didSet { redraw() }}
 
  override func updateFragmentBytes(forEncoder encoder: MTLRenderCommandEncoder) {
    var u = SBUniforms(size: bounds.size, hue: hsb.hue)
    encoder.setFragmentBytes(&u, length: MemoryLayout<SBUniforms>.size, at: 0)
  }
}
