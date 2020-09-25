//
//  GoogleSigninLightButton.swift
//  Buttons
//
//  Created by mhlee on 2020/09/25.
//

import Foundation
import UIKit

class GoogleSigninLightButton: UIButton {
  enum Constant {
    static let bgImageForNormal = makeResizable(UIImage(named: "btn_google_signin_light_normal_ios"))
    static let bgImageForPressed = makeResizable(UIImage(named: "btn_google_signin_light_pressed_ios"))
    static let bgImageForFocus = makeResizable(UIImage(named: "btn_google_signin_light_focus_ios"))
    static let bgImageForDisabled = makeResizable(UIImage(named: "btn_google_signin_light_disabled_ios"))
    static let bgImageCapInsets = UIEdgeInsets(top: 24, left: 48, bottom: 24, right: 8)
    static let contentEdgeInsets = UIEdgeInsets(top: 0, left: 48, bottom: 0, right: 8)
    
    static func makeResizable(_ image: UIImage?) -> UIImage? {
      return image?.resizableImage(withCapInsets: bgImageCapInsets, resizingMode: .stretch)
    }
  }
  
  typealias C = Constant
  
  override init(frame: CGRect) {
    super.init(frame: frame)
        
    setBackgroundImage(C.bgImageForNormal, for: .normal)
    setBackgroundImage(C.bgImageForPressed, for: .highlighted)
    setBackgroundImage(C.bgImageForFocus, for: .focused)
    setBackgroundImage(C.bgImageForDisabled, for: .disabled)
    contentEdgeInsets = C.contentEdgeInsets
    
    setTitle("Google 로그인", for: .normal)
    setTitleColor(.black, for: .normal)
  }
  
  convenience init() {
    self.init(frame: .zero)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
