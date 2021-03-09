//
//  RegisterViewController.swift
//  navigation_stack_view
//
//  Created by 박훈성 on 2021/03/09.
//

import UIKit

class RegisterViewController: UIViewController {
  
  
  //하단 로그인 문구 버튼 Outlet
  @IBOutlet weak var loginBtn: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    //상단 내비게이션 바 부분 히든 처리
    self.navigationController?.isNavigationBarHidden = true
  }
  
  
  //하단 로그인 문구 버튼 클릭 Action
  @IBAction func goToLogin(_ sender: UIButton) {
    print("Go to login btn clicked")
    self.navigationController?.popViewController(animated: true)
  }
}
