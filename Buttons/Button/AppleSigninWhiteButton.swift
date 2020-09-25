//
//  AppleSigninWhiteButton.swift
//  Buttons
//
//  Created by mhlee on 2020/09/25.
//

import Foundation
import UIKit

class AppleSigninWhiteButton: UIButton {
  enum Constant {
    static let imageForNormal = UIImage(named: "appleid_button")
  }
  
  typealias C = Constant
  
  override init(frame: CGRect) {
    super.init(frame: frame)
        
    setImage(C.imageForNormal, for: .normal)
    
    layer.cornerRadius = 4
    layer.borderWidth = 1
    layer.borderColor = UIColor.black.cgColor
  }
  
  convenience init() {
    self.init(frame: .zero)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
