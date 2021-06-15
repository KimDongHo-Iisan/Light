//
//  ViewController.swift
//  Light
//
//  Created by Dongho kim on 2021/06/15.
//

import UIKit

class ViewController: UIViewController {
    
    // 버튼도 변경될 일이 없기 때문에 아울렛도 필요가 없다.
    //@IBOutlet weak var lightButton: UIButton!
    /* 아울렛을 없앨때 주의해야할것이 이렇게 그냥 없애버리게 되면 crash가 발생하게 된다.
     setValue:forUndefinedKey:]: this class is not key value coding-compliant for the key lightButton.'
     -> mainStoryBoard에서의 viewController에서는 라이트버튼과 여전히 연결되어있다고 인식하고 있기 때문이다.
     */
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
        //tenary operator를 사용해서 코드를 간편화 하기
        view.backgroundColor = lightOn ? .white : .black
    }
}

