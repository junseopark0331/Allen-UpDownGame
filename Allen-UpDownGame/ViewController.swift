//
//  ViewController.swift
//  Allen-UpDownGame
//
//  Created by 박준서 on 2023/02/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    // 컴퓨터가 랜덤으로 숫자 선택
    var comNumber = Int.random(in: 1...10)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 1. 메인레이블에 "선택하세요"
        // 2. 숫자레이블은 아무표시 X ""
        mainLabel.text = "선택하세요"
        numberLabel.text = ""
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        // 1. 버튼의 숫자 가져오기
        guard let numString = sender.currentTitle
        else {return}
        // 2. 누른 버튼 숫자를 레이블에 띄우기 (숫자에 따라)
        numberLabel.text = numString
        // 3. 선택한 숫자를 변수에 저장
        
        
    }
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        
        // 또 다른 방법 제시
        // 숫자 레이블에 있는 문자열 가져오기 (옵셔널 벗기기)
        guard let myNumString = numberLabel.text else {return}
        // 타입 변환 (문자열 ---> 정수로)
        guard let myNumber = Int(myNumString) else {return}
        
        // 1. 컴퓨터가 선택한 숫자와 내가 선택한 숫자를 비교해서 Up, Down, Bingo 표시
        if comNumber > myNumber{
            mainLabel.text = "Up"
        }else if comNumber < myNumber{
            mainLabel.text = "Down"
        }else{
            mainLabel.text = "Bingo"
        }
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        // 1. 메인 레이블이 다시 선택하세요 표시
        // 2. 컴퓨터의 랜덤숫자를 다시 생성
        // 3. 숫자레이블 "" (빈문자열)
    }
    
}

