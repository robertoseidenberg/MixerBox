class HSBMetalView: MetalView {

  var brightness: Float = 1

  override func updateFragmentBytes(forEncoder encoder: MTLRenderCommandEncoder) {
    var u = HSBUniforms(size: bounds.size, brightness: brightness)
    encoder.setFragmentBytes(&u, length: MemoryLayout<HSBUniforms>.size, at: 0)
  }
}
