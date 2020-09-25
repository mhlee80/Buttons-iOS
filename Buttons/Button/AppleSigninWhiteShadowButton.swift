//
//  AppleSigninWhiteShadowButton.swift
//  Buttons
//
//  Created by mhlee on 2020/09/25.
//

import Foundation
import UIKit

class AppleSigninWhiteShadowButton: UIButton {
  enum Constant {
    static let size = CGSize(width: 240, height: 48)
    static let imageForNormal = UIImage(named: "icApple_18")
    static let titleEdgeInsets = UIEdgeInsets(top: 0, left: 12, bottom: 0, right: 0)
  }
  
  typealias C = Constant
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    setImage(C.imageForNormal, for: .normal)
    setTitleColor(.black, for: .normal)
    setTitle("Sign in with Apple", for: .normal)
    titleEdgeInsets = C.titleEdgeInsets
  }
  
  private var shadowLayer: CAShapeLayer!

  override func layoutSubviews() {
    super.layoutSubviews()
    
    if shadowLayer == nil {
      shadowLayer = CAShapeLayer()
      shadowLayer.path = UIBezierPath(roundedRect: bounds, cornerRadius: 4).cgPath
      shadowLayer.fillColor = UIColor.white.cgColor
      
      shadowLayer.shadowColor = UIColor.darkGray.cgColor
      shadowLayer.shadowPath = shadowLayer.path
      shadowLayer.shadowOffset = CGSize(width: 1.0, height: 1.0)
      shadowLayer.shadowOpacity = 0.5
      shadowLayer.shadowRadius = 2
      
      layer.insertSublayer(shadowLayer, at: 0)
      //layer.insertSublayer(shadowLayer, below: nil) // also works
    }
  }
  
  convenience init() {
    self.init(frame: .zero)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override var intrinsicContentSize: CGSize {
    return C.size
  }
}
