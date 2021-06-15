//
//  ViewController.swift
//  Light
//
//  Created by Dongho kim on 2021/06/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lightButton: UIButton!
    
    var lightOn = true //toggle 방식을 위해 얻은 변수
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonPressed(_ sender: Any) {
        
        lightOn = !lightOn //ON,OFF 방식이기때문에 누르면 현 누르기 전 상태의 반대가 나오도록 해야한다.
        updateUI()
    }
    
    func updateUI() {
        if lightOn {
            self.view.backgroundColor = .white //view의 배경색을 흰색으로 변경한다.
            // button의 이름을 변경하는 함수
            lightButton.setTitle("Off", for: .normal)
        }else {
            self.view.backgroundColor = .black
            
            lightButton.setTitle("Off", for: .normal)
            // .normal의 뜻 : 어떤 버튼이.사용자의 이벤트를 기다리는 상태
            // .highlighted : 사용자가 막 탭했을때가
            // .disabled : 사용이 불가능한 상태
        }
    }
}

