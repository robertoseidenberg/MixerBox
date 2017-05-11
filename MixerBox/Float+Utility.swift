extension Float {
  
  func clamp(min: Float, max: Float) -> Float {
    return Swift.min(Swift.max(self, Swift.min(min, max)), Swift.max(min, max))
  }
}
