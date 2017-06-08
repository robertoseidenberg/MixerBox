#if !(SIMULATOR)
import Metal
#endif

extension MetalView {

  func redraw() {
    
    #if !(SIMULATOR)
    if isDrawing == false {

      isDrawing = true
      if let drawable = metalLayer.nextDrawable() {
        let descriptor = MTLRenderPassDescriptor()
        descriptor.colorAttachments[0].texture = drawable.texture
        descriptor.colorAttachments[0].clearColor = MTLClearColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1)
        descriptor.colorAttachments[0].storeAction = .store
        descriptor.colorAttachments[0].loadAction = .clear

        let commandBuffer = commandQueue.makeCommandBuffer()

        let encoder = commandBuffer.makeRenderCommandEncoder(descriptor: descriptor)
        encoder.setRenderPipelineState(pipeline)

        updateFragmentBytes(forEncoder: encoder)

        encoder.setVertexBuffer(vertexBuffer, offset: 0, index: 1)
        encoder.drawPrimitives(type: .triangleStrip, vertexStart: 0, vertexCount: 4)

        encoder.endEncoding()

        commandBuffer.present(drawable)

        commandBuffer.addCompletedHandler { _ in
          self.isDrawing = false
        }

        commandBuffer.commit()
      }
    }
    #endif
  }
}
