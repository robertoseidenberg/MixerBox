class AnimationlessLayer: CALayer, CALayerDelegate {

  override init() {
    super.init()
    setup()
  }

  override init(layer: Any) {
    super.init(layer: layer)
    setup()
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setup()
  }

  func setup() {
    delegate = self
  }
}

extension AnimationlessLayer {

  override func action(forKey event: String) -> CAAction? {
    // Disable all implicit animations
    return nil
  }
}
