//
//  RegisterViewController.swift
//  navigation_stack_view
//
//  Created by 박훈성 on 2021/03/09.
//

import UIKit

class MainViewController: UIViewController {
  
  //메인화면 label
  var titleLabel: UILabel = {
    let label = UILabel()
    label.text = "메인화면"
    label.textAlignment = .center
    label.font = UIFont.boldSystemFont(ofSize: 50)
    label.textColor = .white
    return label
  }()
  
  //배경색 변경 버튼
  let changeBtn: UIButton = {
    let btn = UIButton(type: .system)
    btn.setTitle("배경색 바꾸기", for: .normal)
    btn.setTitleColor(.black, for: .normal)
    btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
    btn.backgroundColor = .white
    btn.layer.cornerRadius = 5 //버튼 radius
    btn.contentEdgeInsets = UIEdgeInsets(top: 5, left: 20, bottom: 5, right: 20) //버튼 내부 padding
    btn.addTarget(self,action: #selector(changeBG), for: .touchUpInside) //버튼 클릭(touchUpInside) 시 수행 할 function 설정
    return btn
  }()
  
  //배경색 설정 boolean 변수(Optional)
  var isBGOrange: Bool?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    //기본 배경색 orange
    isBGOrange = true
    view.backgroundColor = .orange
    
    view.addSubview(titleLabel)
    titleLabel.translatesAutoresizingMaskIntoConstraints = false //auto resizing 해제
    //label 정중앙 정렬
    titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    
    view.addSubview(changeBtn)
    changeBtn.translatesAutoresizingMaskIntoConstraints = false
    changeBtn.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20).isActive = true // titleLabel의 bottom으로부터 간격 20 설정
    changeBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true //X축 중앙 정렬
    
    
    //상단 내비게이션 바 부분 히든 처리
    self.navigationController?.isNavigationBarHidden = true
  }
  
  //배경색 변경 버튼 클릭 시 동작
  @objc fileprivate func changeBG() {
    
    //현재 배경색에 따른 toggle 설정
    if isBGOrange == true {
      view.backgroundColor = .blue
      isBGOrange = !(isBGOrange!)
    } else {
      view.backgroundColor = .orange
      isBGOrange = !(isBGOrange!)
    }
    print("MainViewController - changeBG() Active => \(isBGOrange!)")
  }
}
