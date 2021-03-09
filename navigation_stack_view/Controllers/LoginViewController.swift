//
//  ViewController.swift
//  navigation_stack_view
//
//  Created by 박훈성 on 2021/03/09.
//

import UIKit

class LoginViewController: UIViewController {

  //뷰가 생성되었을 때
  override func viewDidLoad() {
    super.viewDidLoad()
    
    //상단 내비게이션 바 부분 히든 처리
    navigationController?.isNavigationBarHidden = true
  }
  
  //로그인 버튼 클릭 시
  @IBAction func loginBtnAction(_ sender: Any) {
    print("login Btn clicked")
    
    let mainViewController = MainViewController()
    self.navigationController?.pushViewController(mainViewController, animated: true)
  }
  
}
