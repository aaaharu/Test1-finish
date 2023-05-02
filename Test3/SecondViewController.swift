//
//  SecondViewController.swift
//  Test3
//
//  Created by 김은지 on 2023/04/12.
//

import UIKit

protocol ViewDelegate {
   func dismissVC()
}








class SecondViewController: UIViewController, UITextFieldDelegate, ViewDelegate{
    func dismissVC() {
        self.dismiss(animated: true, completion: nil)
    }
    

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameView: UIView!
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var nameCount: UILabel!
    
    @IBOutlet weak var profileLabel: UILabel!
    @IBOutlet weak var profileView: UIView!
    @IBOutlet weak var profileTF: UITextField!
    @IBOutlet weak var profileCount: UILabel!
    
    @IBOutlet weak var introLabel: UILabel!
    @IBOutlet weak var introView: UIView!
    @IBOutlet weak var introTF: UITextField!
    @IBOutlet weak var introCount: UILabel!

    @IBOutlet weak var webLabel: UILabel!
    @IBOutlet weak var webView: UIView!
    @IBOutlet weak var webTF: UITextField!
    
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var finishButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        delegateTF()
        countLabel()
        
        
        
    }
    
    
    
    func delegateTF() {
//        let textFiled = [nameTF, profileTF, introTF, webTF]
//        textFiled.forEach { $0!.delegate = self }
    }
    
    func countLabel() {
        nameTF.addTarget(self, action: #selector(textCount(_:)), for: .editingChanged)
        profileTF.addTarget(self, action: #selector(textCount(_:)), for: .editingChanged)
        introTF.addTarget(self, action: #selector(textCount(_:)), for: .editingChanged)
    }

    @objc func textCount(_ textField: UITextField) {
           // 각 텍스트 필드의 텍스트를 가져와서 글자 수를 카운트하고, 해당 텍스트 필드에 해당하는 라벨에 표시
           if textField == nameTF {
               nameCount.text = "\(nameTF.text?.count ?? 0) / 20"
           } else if textField == profileTF {
               profileCount.text = "\(profileTF.text?.count ?? 0) / 30"
           } else if textField == introTF {
               introCount.text = "\(introTF.text?.count ?? 0) / 1000"
           }
       }
    // 텍스트 필드의 텍스트가 변경될 때 호출되는 메소드
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        var maxLength =  0
        
        if textField == nameTF{
            maxLength = 20
        } else if textField == profileTF{
            maxLength = 30
        } else if textField == introTF{
            maxLength = 1000
        } else if textField == webTF{
            maxLength = 20
        }
        
        let currentString: NSString = (textField.text ?? "") as NSString
        let newString: NSString =  currentString.replacingCharacters(in: range, with: string) as NSString
        
        return newString.length <= maxLength
    }
    
    // 포커스 파란 테두리 설정
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
            if textField == nameTF {
                nameView.layer.borderColor = UIColor.systemBlue.cgColor
            } else if textField == profileTF {
                profileView.layer.borderColor = UIColor.systemBlue.cgColor
            } else if textField == introTF {
                introView.layer.borderColor = UIColor.systemBlue.cgColor
            } else if textField == webTF {
                webView.layer.borderColor = UIColor.systemBlue.cgColor
            }
        }
    // 포커스 파란 테두리 해제
        func textFieldDidEndEditing(_ textField: UITextField) {
            if textField == nameTF {
                nameView.layer.borderColor = UIColor.lightGray.cgColor
            } else if textField == profileTF {
                profileView.layer.borderColor = UIColor.lightGray.cgColor
            } else if textField == introTF {
                introView.layer.borderColor = UIColor.lightGray.cgColor
            } else if textField == webTF {
                webView.layer.borderColor = UIColor.lightGray.cgColor
            }
        }
    
    
    @IBAction func finishButtonTapped(_ sender: UIButton) {
        // 두 번째 뷰 컨트롤러의 텍스트 필드에서 입력된 데이터 가져오기
        let nameText = nameTF.text
        let profileText = profileTF.text
        let introText = introTF.text
        let webText = webTF.text
        
        
        // 첫 번째 뷰 컨트롤러의 텍스트 필드에 데이터 전달
        let firstVC = presentingViewController as? ViewController
        firstVC?.nameTF.text = nameText
        firstVC?.profileTF.text = profileText
        firstVC?.introTF.text = introText
        firstVC?.webTF.text = webText
        

        // 현재 뷰 컨트롤러 닫기
        dismiss(animated: true, completion: nil)
    }
    
 
    
    
    @IBAction func addButtonTapped(_ sender: UIButton) {
       
        
        performSegue(withIdentifier: "goToSend", sender: sender)
        

        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if segue.identifier == "goToSend" {
               let vc = segue.destination as! ThirdViewController
//               vc.nameText = self.nameTF.text ?? ""
//               vc.profileText = self.profileTF.text ?? ""
//               vc.introText = self.introTF.text ?? ""
//               vc.webText = self.webTF.text ?? ""
               
           }
       }
 }
    

// MARK: - setupUI

extension SecondViewController {
    
    func setupUI() {
        nameCount.text = "0 / 20"
        nameCount.textColor =  UIColor(red: 131/255, green: 145/255, blue: 161/255, alpha: 1)
        profileCount.text = "0 / 30"
        profileCount.textColor =  UIColor(red: 131/255, green: 145/255, blue: 161/255, alpha: 1)
        introCount.text = "0 / 1000"
        introCount.textColor =  UIColor(red: 131/255, green: 145/255, blue: 161/255, alpha: 1)
        
        addButton.setTitle("+ 웹사이트 추가", for: .normal)
        addButton.titleLabel?.font = UIFont(name: "NanumGothicBold", size: 12)
        addButton.tintColor = .systemBlue
        
        finishButton.setTitle("완료", for: .normal)
        finishButton.layer.cornerRadius = 9
        finishButton.titleLabel?.font = UIFont(name: "NanumGothicBold", size: 15)
        finishButton.tintColor = .white
        finishButton.backgroundColor = UIColor(red: 131/255, green: 145/255, blue: 161/255, alpha: 1)
        
        webLabel.text = "웹사이트 연결"
        webTF.font = UIFont(name: "NanumGothicBold", size: 16)
        webTF.textColor = .black
        webTF.backgroundColor = .clear
        webTF.font = UIFont(name: "NanumGothic", size: 14)
        webTF.placeholder = "SNS 또는 홈페이지를 연결해주세요."
        
        webView.layer.borderColor = UIColor.init(red: 232/255, green: 232/255, blue: 232/255, alpha: 1).cgColor
        webView.layer.cornerRadius = 9
        webView.layer.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1).cgColor
        webView.layer.borderWidth = 2.0 // 뷰 테두리 굵기
        webView.layer.opacity = 0.5 // 뷰 테두리 투명도
        
        
        introLabel.text = "자기소개"
        introTF.font = UIFont(name: "NanumGothicBold", size: 16)
        introTF.textColor = .black
        introTF.backgroundColor = .clear
        introTF.font = UIFont(name: "NanumGothic", size: 14)
        introTF.placeholder = "다른 사람에게 나를 소개할 수 있도록 자신의 활동을 자세하게 적어주세요."
        
        introView.layer.borderColor = UIColor.init(red: 232/255, green: 232/255, blue: 232/255, alpha: 1).cgColor
        introView.layer.cornerRadius = 9
        introView.layer.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1).cgColor
        introView.layer.borderWidth = 2.0 // 뷰 테두리 굵기
        introView.layer.opacity = 0.5 // 뷰 테두리 투명도
        
        
        profileLabel.text = "한 줄 프로필"
        profileTF.font = UIFont(name: "NanumGothicBold", size: 16)
        profileTF.textColor = .black
        profileTF.backgroundColor = .clear
        profileTF.font = UIFont(name: "NanumGothic", size: 14)
        profileTF.placeholder = "자신을 표현할 한 줄 소개입니다."
        
        profileView.layer.borderColor = UIColor.init(red: 232/255, green: 232/255, blue: 232/255, alpha: 1).cgColor
        profileView.layer.cornerRadius = 9
        profileView.layer.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1).cgColor
        profileView.layer.borderWidth = 2.0 // 뷰 테두리 굵기
        profileView.layer.opacity = 0.5 // 뷰 테두리 투명도
        
        nameLabel.text = "닉네임"
        nameTF.font = UIFont(name: "NanumGothicBold", size: 16)
        nameTF.textColor = .black
        nameTF.backgroundColor = .clear
        nameTF.font = UIFont(name: "NanumGothic", size: 14)
        nameTF.placeholder = "자신을 표현할 닉네임을 적어주세요."
        
        nameView.layer.borderColor = UIColor.init(red: 232/255, green: 232/255, blue: 232/255, alpha: 1).cgColor
        nameView.layer.cornerRadius = 9
        nameView.layer.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1).cgColor
        nameView.layer.borderWidth = 2.0 // 뷰 테두리 굵기
        nameView.layer.opacity = 0.5 // 뷰 테두리 투명도
        
        
        introTF.textAlignment = .left
        introTF.contentVerticalAlignment = .top
        
    }
    
    
}








