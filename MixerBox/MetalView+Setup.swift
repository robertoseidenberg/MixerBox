import QuartzCore

#if !(SIMULATOR)
import Metal
#endif

extension MetalView {

  func setup(fragmentFunctionName: String) {
    setupDevice()
    setupPipeline(fragmentFunctionName: fragmentFunctionName)
    setupBuffer()
  }

  private func setupDevice() {
    #if !(SIMULATOR)
      
    guard let device = MTLCreateSystemDefaultDevice() else { fatalError("Unexpected nil value") }
    self.device = device
    metalLayer.device = device
    metalLayer.pixelFormat = .bgra8Unorm

    commandQueue = device.makeCommandQueue()
    #endif
  }

  private func setupPipeline(fragmentFunctionName: String) {
    #if !(SIMULATOR)
    
    guard let path = Bundle(for: MixerBox.MetalView).path(forResource: "default", ofType: "metallib") else {
      fatalError("Resource missing: MixerBox: default.metallib")
    }
    guard let library = try? device.makeLibrary(filepath: path) else {
      fatalError("Unexpeted nil value: MixerBox: library")
    }

    let vertexFunc = library.makeFunction(name: "vertex_main")
    let fragmentFunc = library.makeFunction(name: fragmentFunctionName)

    let descriptor = MTLRenderPipelineDescriptor()
    descriptor.vertexFunction = vertexFunc
    descriptor.fragmentFunction = fragmentFunc
    descriptor.colorAttachments[0].pixelFormat = metalLayer.pixelFormat

    do {
      pipeline = try device.makeRenderPipelineState(descriptor: descriptor)
    } catch {
      fatalError(error.localizedDescription)
    }
    #endif
  }

  private func setupBuffer() {
    #if !(SIMULATOR)
      
    let vertices = [
      // Bottom left
      Vertex(postition: [ -1, -1, 0, 1]),
      Vertex(postition: [1, -1, 0, 1]),
      Vertex(postition: [ -1, 1, 0, 1]),

      // Top right
      Vertex(postition: [1, 1, 0, 1]),
    ]

    vertexBuffer = device.makeBuffer(bytes: vertices,
                                     length: MemoryLayout<Vertex>.size * vertices.count,
                                     options: [])
    #endif
  }
}
