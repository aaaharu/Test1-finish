//
//  ViewController.swift
//  Test3
//
//  Created by 김은지 on 2023/04/12.
//

import UIKit



class ViewController: UIViewController {

    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameView: UIView!
    @IBOutlet weak var nameTF: UITextField!
    
    @IBOutlet weak var profileLabel: UILabel!
    @IBOutlet weak var profileView: UIView!
    @IBOutlet weak var profileTF: UITextField!
    
    @IBOutlet weak var introLabel: UILabel!
    
    @IBOutlet weak var introView: UIView!
    
    
    @IBOutlet weak var introTF: UITextField!
    
    @IBOutlet weak var webLabel: UILabel!
    @IBOutlet weak var webView: UIView!
    @IBOutlet weak var webTF: UITextField!
    
    @IBOutlet weak var webView2: UIView!
    @IBOutlet weak var webTF2: UITextField!
    
    @IBOutlet weak var webView3: UIView!
    @IBOutlet weak var webTF3: UITextField!
    
    
    @IBOutlet weak var popUpButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        
        
        
    }


    

}
// MARK: - SetupUI

extension ViewController {
    func setupUI() {
        popUpButton.setTitle("작성 팝업 띄우기", for: .normal)
        popUpButton.layer.cornerRadius = 9
        popUpButton.titleLabel?.font = UIFont(name: "NanumGothicBold", size: 15)
        popUpButton.tintColor = .white
        popUpButton.backgroundColor = UIColor(red: 131/255, green: 145/255, blue: 161/255, alpha: 1)
        
        
        webTF3.font = UIFont(name: "NanumGothicBold", size: 16)
        webTF3.textColor = .black
        webTF3.backgroundColor = .clear
        webTF3.font = UIFont(name: "NanumGothic", size: 14)
        webTF3.placeholder = "SNS 또는 홈페이지를 연결해주세요."
        
        
        webView3.layer.backgroundColor = UIColor.init(red: 232/255, green: 232/255, blue: 232/255, alpha: 1).cgColor
        webView3.layer.cornerRadius = 9
        webView3.layer.borderColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1).cgColor
        webView3.layer.borderWidth = 2.0 // 뷰 테두리 굵기
        webView3.layer.opacity = 0.5 // 뷰 테두리 투명도
        
        
        webTF2.font = UIFont(name: "NanumGothicBold", size: 16)
        webTF2.textColor = .black
        webTF2.backgroundColor = .clear
        webTF2.font = UIFont(name: "NanumGothic", size: 14)
        webTF2.placeholder = "SNS 또는 홈페이지를 연결해주세요."
        
        webView2.layer.backgroundColor = UIColor.init(red: 232/255, green: 232/255, blue: 232/255, alpha: 1).cgColor
        webView2.layer.cornerRadius = 9
        webView2.layer.borderColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1).cgColor
        webView2.layer.borderWidth = 2.0 // 뷰 테두리 굵기
        webView2.layer.opacity = 0.5 // 뷰 테두리 투명도
        
        
        webLabel.text = "웹사이트 연결"
        webTF.font = UIFont(name: "NanumGothicBold", size: 16)
        webTF.textColor = .black
        webTF.backgroundColor = .clear
        webTF.font = UIFont(name: "NanumGothic", size: 14)
        webTF.placeholder = "SNS 또는 홈페이지를 연결해주세요."
        
        webView.layer.backgroundColor = UIColor.init(red: 232/255, green: 232/255, blue: 232/255, alpha: 1).cgColor
        webView.layer.cornerRadius = 9
        webView.layer.borderColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1).cgColor
        webView.layer.borderWidth = 2.0 // 뷰 테두리 굵기
        webView.layer.opacity = 0.5 // 뷰 테두리 투명도
        
        
        introLabel.text = "자기소개"
        introTF.font = UIFont(name: "NanumGothicBold", size: 16)
        introTF.textColor = .black
        introTF.backgroundColor = .clear
        introTF.font = UIFont(name: "NanumGothic", size: 14)
        introTF.placeholder = "다른 사람에게 나를 소개할 수 있도록 자신의 활동을 자세하게 적어주세요."
        
        introView.layer.backgroundColor = UIColor.init(red: 232/255, green: 232/255, blue: 232/255, alpha: 1).cgColor
        introView.layer.cornerRadius = 9
        introView.layer.borderColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1).cgColor
        introView.layer.borderWidth = 2.0 // 뷰 테두리 굵기
        introView.layer.opacity = 0.5 // 뷰 테두리 투명도
        
        
        profileLabel.text = "한 줄 프로필"
        profileTF.font = UIFont(name: "NanumGothicBold", size: 16)
        profileTF.textColor = .black
        profileTF.backgroundColor = .clear
        profileTF.font = UIFont(name: "NanumGothic", size: 14)
        profileTF.placeholder = "자신을 표현할 한 줄 소개입니다."
        
        profileView.layer.backgroundColor = UIColor.init(red: 232/255, green: 232/255, blue: 232/255, alpha: 1).cgColor
        profileView.layer.cornerRadius = 9
        profileView.layer.borderColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1).cgColor
        profileView.layer.borderWidth = 2.0 // 뷰 테두리 굵기
        profileView.layer.opacity = 0.5 // 뷰 테두리 투명도
        
        nameLabel.text = "닉네임"
        nameTF.font = UIFont(name: "NanumGothicBold", size: 16)
        nameTF.textColor = .black
        nameTF.backgroundColor = .clear
        nameTF.font = UIFont(name: "NanumGothic", size: 14)
        nameTF.placeholder = "자신을 표현할 닉네임을 적어주세요."
        
        nameView.layer.backgroundColor = UIColor.init(red: 232/255, green: 232/255, blue: 232/255, alpha: 1).cgColor
        nameView.layer.cornerRadius = 9
        nameView.layer.borderColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1).cgColor
        nameView.layer.borderWidth = 2.0 // 뷰 테두리 굵기
        nameView.layer.opacity = 0.5 // 뷰 테두리 투명도
        
        
        introTF.textAlignment = .left
        introTF.contentVerticalAlignment = .top
        
    }
    
    
}
