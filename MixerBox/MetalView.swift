import UIKit
import QuartzCore
import Metal

class MetalView: UIView {

  override static var layerClass: AnyClass {
    return CAMetalLayer.self
  }

  var metalLayer: CAMetalLayer {
    return layer as! CAMetalLayer
  }

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
    setup(fragmentFunctionName: fragmentFunctionName)
  }

  override func updateConstraints() {
    super.updateConstraints()
    redraw()
  }
}
