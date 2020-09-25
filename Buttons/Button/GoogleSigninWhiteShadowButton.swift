//
//  GoogleSigninWhiteShadowButton.swift
//  Buttons
//
//  Created by mhlee on 2020/09/25.
//

import Foundation
import UIKit

class GoogleSigninWhiteShadowButton: UIButton {
  enum Constant {
    static let size = CGSize(width: 240, height: 48)
    static let imageForNormal = UIImage(named: "icGoogle_18")
    static let titleEdgeInsets = UIEdgeInsets(top: 0, left: 12, bottom: 0, right: 0)
  }
  
  typealias C = Constant
  
  override init(frame: CGRect) {
    super.init(frame: frame)

    setBackgroundColor(.white, for: .normal)
    
    setImage(C.imageForNormal, for: .normal)
    setTitleColor(.black, for: .normal)
    setTitle("Sign in with Google", for: .normal)

    titleEdgeInsets = C.titleEdgeInsets
    
    layer.cornerRadius = 8
    
    layer.shadowColor = UIColor.black.cgColor
    layer.shadowOpacity = 0.5
    layer.shadowRadius = 2
    layer.shadowOffset = CGSize(width: 1, height: 1)
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
