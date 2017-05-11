extension CGFloat {

  func clamp(min: CGFloat, max: CGFloat) -> CGFloat {
    return Swift.min(Swift.max(self, Swift.min(min, max)), Swift.max(min, max))
  }
}

extension CGPoint {

  func clamp(min: CGPoint, max: CGPoint) -> CGPoint {
    let x = self.x.clamp(min: min.x, max: max.x)
    let y = self.y.clamp(min: min.y, max: max.y)
    return CGPoint(x: x, y: y)
  }
}
