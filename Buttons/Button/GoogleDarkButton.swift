//
//  GoogleDarkButton.swift
//  Buttons
//
//  Created by mhlee on 2020/09/25.
//

import Foundation
import UIKit

class GoogleDarkButton: UIButton {
  enum Constant {
    static let imageForNormal = UIImage(named: "btn_google_dark_normal_ios")
    static let imageForPressed = UIImage(named: "btn_google_dark_pressed_ios")
    static let imageForFocus = UIImage(named: "btn_google_dark_focus_ios")
    static let imageForDisabled = UIImage(named: "btn_google_dark_disabled_ios")
  }
  
  typealias C = Constant
  
  override init(frame: CGRect) {
    super.init(frame: frame)
        
    setImage(C.imageForNormal, for: .normal)
    setImage(C.imageForPressed, for: .highlighted)
    setImage(C.imageForFocus, for: .focused)
    setImage(C.imageForDisabled, for: .disabled)
  }
  
  convenience init() {
    self.init(frame: .zero)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
