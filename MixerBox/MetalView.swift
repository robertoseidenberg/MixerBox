import UIKit
import QuartzCore
import Metal

class MetalView: UIView {
  
  #if !(SIMULATOR)
  override static var layerClass: AnyClass {
    return CAMetalLayer.self
  }
  
  var metalLayer: CAMetalLayer {
    return layer as! CAMetalLayer
  }
  #endif
  
  var device: MTLDevice!
  var commandQueue: MTLCommandQueue!
  var pipeline: MTLRenderPipelineState!
  var vertexBuffer: MTLBuffer!
  
  var isDrawing = false
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("Initializer is not supported. Use init?(frame:fragmentFunctionName:) instead.")
  }
  
  override init(frame: CGRect) {
    fatalError("Initializer is not supported. Use init?(frame:fragmentFunctionName:) instead.")
  }
  
  required init?(frame: CGRect, fragmentFunctionName: String) {
    super.init(frame: frame)
    #if !(SIMULATOR)
    setup(fragmentFunctionName: fragmentFunctionName)
    #endif
  }
  
  override func updateConstraints() {
    super.updateConstraints()
    #if !(SIMULATOR)
    redraw()
    #endif
  }

  #if !(IOS_SIMULATOR)
  func updateFragmentBytes(forEncoder _: MTLRenderCommandEncoder) {
    fatalError("#selector(updateFragmentBytes) implementation missing by MetalView subclass: \(self)")
  }
  #endif
}
