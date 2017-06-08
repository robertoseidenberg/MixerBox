#if !(IOS_SIMULATOR)
import Metal
#endif


extension MetalView {
  
  #if !(IOS_SIMULATOR)
  @objc func updateFragmentBytes(forEncoder _: MTLRenderCommandEncoder) {
    fatalError("#selector(updateFragmentBytes) implementation missing by MetalView subclass: \(self)")
  }
  #endif
}
