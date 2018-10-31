#if !(IOS_SIMULATOR)
import Metal
#endif

class HSBMetalView: MetalView {

  var brightness: Float = 1

  #if !(IOS_SIMULATOR)
  override func updateFragmentBytes(forEncoder encoder: MTLRenderCommandEncoder) {
    var u = HSBUniforms(size: bounds.size, brightness: brightness)
    encoder.setFragmentBytes(&u, length: MemoryLayout<HSBUniforms>.size, index: 0)
  }
  #endif
}
