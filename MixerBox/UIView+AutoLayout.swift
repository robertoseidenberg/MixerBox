import UIKit

extension UIView {

  func autoLayoutBindTopToSuperviewTop() {

    if let superview = self.superview {
      let top = NSLayoutConstraint(item: self,
                                   attribute: .top,
                                   relatedBy: .equal,
                                   toItem: superview,
                                   attribute: .top,
                                   multiplier: 1,
                                   constant: 0)

      superview.addConstraint(top)
    }
  }

  func autoLayoutBindTopToSuperviewLeft() {

    if let superview = self.superview {
      let top = NSLayoutConstraint(item: self,
                                   attribute: .left,
                                   relatedBy: .equal,
                                   toItem: superview,
                                   attribute: .left,
                                   multiplier: 1,
                                   constant: 0)

      superview.addConstraint(top)
    }
  }

  func autoLayoutCenterInSuperview() {

    if let superview = self.superview {
      let midX = NSLayoutConstraint(item: self,
                                    attribute: .centerX,
                                    relatedBy: .equal,
                                    toItem: superview,
                                    attribute: .centerX,
                                    multiplier: 1,
                                    constant: 0)

      let midY = NSLayoutConstraint(item: self,
                                    attribute: .centerY,
                                    relatedBy: .equal,
                                    toItem: superview,
                                    attribute: .centerY,
                                    multiplier: 1,
                                    constant: 0)

      superview.addConstraint(midX)
      superview.addConstraint(midY)
    }
  }

  func autoLayoutBindFrameToSuperviewBounds() {

    autoLayoutBindFrameToSuperviewWidth()
    autoLayoutBindFrameToSuperviewHeight()
  }

  func autoLayoutBindFrameToSuperviewWidth() {

    if let superview = self.superview {
      superview.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-0-[subview]-0-|",
                                                              options: [],
                                                              metrics: nil,
                                                              views: ["subview": self]))
    }
  }

  func autoLayoutBindFrameToSuperviewHeight() {

    if let superview = self.superview {
      superview.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-0-[subview]-0-|",
                                                              options: [],
                                                              metrics: nil,
                                                              views: ["subview": self]))
    }
  }

  @discardableResult func autoLayoutFixedWidth(_ width: CGFloat) -> NSLayoutConstraint {

    let widthConstraint = NSLayoutConstraint(item: self,
                                             attribute: .width,
                                             relatedBy: .equal,
                                             toItem: nil,
                                             attribute: .notAnAttribute,
                                             multiplier: 1,
                                             constant: width)
    addConstraint(widthConstraint)
    return widthConstraint
  }

  @discardableResult func autoLayoutFixedHeight(_ height: CGFloat) -> NSLayoutConstraint {

    let heightConstraint = NSLayoutConstraint(item: self,
                                              attribute: .height,
                                              relatedBy: .equal,
                                              toItem: nil,
                                              attribute: .notAnAttribute,
                                              multiplier: 1,
                                              constant: height)
    addConstraint(heightConstraint)
    return heightConstraint
  }
}
