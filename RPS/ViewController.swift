//
//  ViewController.swift
//  RPS
//
//  Created by 오정석 on 27/11/2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var comImage: UIImageView!
    @IBOutlet weak var myImage: UIImageView!
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var comLabel: UILabel!
    
    var comChoice = Rps(rawValue: Int.random(in: 0...2))!
    var myChoice = Rps(rawValue: Int.random(in: 0...2))!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeUI()
        
        
    }

    func makeUI() {
        mainLabel.text = "선택하세요"
        
        comImage.image = UIImage(named: "ready.png")
        myImage.image = UIImage(named: "ready.png")
        
        comLabel.text = "준비"
        myLabel.text = "준비"
        
    }
    
    
    @IBAction func rpsButtonTapped(_ sender: UIButton) {
        let select = sender.currentTitle!
        
        //버튼별 설정
        switch select{
        case "가위":
            myChoice = Rps(rawValue: 1)!
        case "바위":
            myChoice = Rps(rawValue: 0)!
        case "보":
            myChoice = Rps(rawValue: 2)!
        default:
            break
        }
    
        
        
        
    }
    
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        makeUI()
    }
    
    
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        //선택지에 따라 컴퓨터 설정
        switch comChoice{
        case .rock:
            comImage.image = UIImage(named: "rock.png")
            comLabel.text = "바위"
        case .scissors:
            comImage.image = UIImage(named: "scissors.png")
            comLabel.text = "가위"
        case .paper:
            comImage.image = UIImage(named: "paper.png")
            comLabel.text = "보"
        }
        
        //선택지에 따라 내 설정
        switch myChoice{
        case .rock:
            myImage.image = UIImage(named: "rock.png")
            myLabel.text = "바위"
        case .scissors:
            myImage.image = UIImage(named: "scissors.png")
            myLabel.text = "가위"
        case .paper:
            myImage.image = UIImage(named: "paper.png")
            myLabel.text = "보"
        }
        
        //승패 구별
        if comChoice == myChoice{
            mainLabel.text = "비겼다"
        } else if comChoice == .rock && myChoice == .paper {
            mainLabel.text = "이겼다"
        } else if comChoice == .scissors && myChoice == .rock {
            mainLabel.text = "이겼다"
        } else if comChoice == .paper && myChoice == .scissors {
            mainLabel.text = "이겼다"
        } else{
            mainLabel.text = "졌다"
        }
        
        
        
    }
    
    

}

