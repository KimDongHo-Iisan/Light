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
        // 앱이 처음 시작할때 "button" 이라는 이름으로 시작된다. 이를 해결하기 위해
        updateUI() // 이를 추가하면 된다. lightOn이 true인 상태이기 때문에, 흰색 배경으로 시작한다. 
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

