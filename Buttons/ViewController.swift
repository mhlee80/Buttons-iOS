//
//  ViewController.swift
//  Buttons
//
//  Created by mhlee on 2020/09/25.
//

import UIKit

class ViewController: UIViewController {
  lazy var scrollView: UIScrollView = {
    let v = UIScrollView()
    return v
  }()
  
  lazy var stackView: UIStackView = {
    let v = UIStackView()
    v.axis = .vertical
    v.distribution = .fill
    v.spacing = 10
    return v
  }()
  
  lazy var googleDarkButton: UIButton = {
    let v = GoogleDarkButton()
    return v
  }()
  
  lazy var googleLightButton: UIButton = {
    let v = GoogleLightButton()
    return v
  }()
  
  lazy var googleSigninDarkButton: UIButton = {
    let v = GoogleSigninDarkButton()
    return v
  }()
  
  lazy var googleSigninLightButton: UIButton = {
    let v = GoogleSigninLightButton()
    return v
  }()
  
  lazy var googleSigninWhiteShadowButton: UIButton = {
    let v = GoogleSigninWhiteShadowButton()
    return v
  }()
  
  lazy var appleSigninWhiteButton: UIButton = {
    let v = AppleSigninWhiteButton()
    return v
  }()
  
  lazy var appleSigninWhiteShadowButton: UIButton = {
    let v = AppleSigninWhiteShadowButton()
    return v
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
    view.backgroundColor = .white
    
    scrollView.translatesAutoresizingMaskIntoConstraints = false
    stackView.translatesAutoresizingMaskIntoConstraints = false
    
    view.addSubview(scrollView)
    scrollView.addSubview(stackView)
    stackView.addArrangedSubview(googleDarkButton)
    stackView.addArrangedSubview(googleLightButton)
    stackView.addArrangedSubview(googleSigninDarkButton)
    stackView.addArrangedSubview(googleSigninLightButton)
    stackView.addArrangedSubview(googleSigninWhiteShadowButton)
    stackView.addArrangedSubview(appleSigninWhiteButton)
    stackView.addArrangedSubview(appleSigninWhiteShadowButton)

    NSLayoutConstraint.activate([
      scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
      scrollView.leftAnchor.constraint(equalTo: view.leftAnchor),
      scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
      scrollView.rightAnchor.constraint(equalTo: view.rightAnchor)
    ])
    
    NSLayoutConstraint.activate([
      stackView.topAnchor.constraint(equalTo: scrollView.safeAreaLayoutGuide.topAnchor),
      stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
      stackView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor)
    ])
  }
}
