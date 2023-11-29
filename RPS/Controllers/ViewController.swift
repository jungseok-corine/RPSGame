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
    
    
    var rpsManager = RPSManager()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeUI()
        
        
    }

    func makeUI() {
        
        comImage.image = rpsManager.getReady().rpsInfo.image
        comLabel.text = rpsManager.getReady().rpsInfo.name
        
        myImage.image = rpsManager.getReady().rpsInfo.image
        myLabel.text = rpsManager.getReady().rpsInfo.name
    }
    
    
    @IBAction func rpsButtonTapped(_ sender: UIButton) {

        guard let title = sender.currentTitle else { return }
        
        print(title)
        
        rpsManager.userGetSelected(name: title)
        }
    
        
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        
        comImage.image = rpsManager.getComRPS().rpsInfo.image
        comLabel.text = rpsManager.getComRPS().rpsInfo.name
        
        myImage.image = rpsManager.getUserRPS().rpsInfo.image
        myLabel.text = rpsManager.getUserRPS().rpsInfo.name
        
        mainLabel.text = rpsManager.getRpsResult()
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        
        comImage.image = rpsManager.getReady().rpsInfo.image
        comLabel.text = rpsManager.getReady().rpsInfo.name
        
        myImage.image = rpsManager.getReady().rpsInfo.image
        myLabel.text = rpsManager.getReady().rpsInfo.name
        
        mainLabel.text = "선택하세요"
        
        rpsManager.allReset()
    }
}

