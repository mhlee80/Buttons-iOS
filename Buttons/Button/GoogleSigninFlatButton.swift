//
//  GoogleSigninFlatButton.swift
//  Buttons
//
//  Created by mhlee on 2020/09/25.
//

import Foundation
import UIKit

class GoogleSigninFlatButton: UIButton {
  enum Constant {
    static let size = CGSize(width: 240, height: 48)
    static let imageForNormal = UIImage(named: "icGoogle_18")
    static let titleEdgeInsets = UIEdgeInsets(top: 0, left: 12, bottom: 0, right: 0)
    static let backgroundColor = UIColor(white: 234.0/255, alpha: 1.0)
  }
  
  typealias C = Constant
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    setBackgroundColor(C.backgroundColor, for: .normal)
    setImage(C.imageForNormal, for: .normal)
    setTitleColor(.black, for: .normal)
    setTitle("Sign in with Google", for: .normal)
    titleEdgeInsets = C.titleEdgeInsets
    
    layer.cornerRadius = 24
    clipsToBounds = true
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
