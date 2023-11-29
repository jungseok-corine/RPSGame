//
//  rps.swift
//  RPS
//
//  Created by 오정석 on 27/11/2023.
//

import UIKit

enum Rps: Int {
    case ready
    case rock
    case scissors
    case paper
    
    
    var rpsInfo: (image: UIImage, name: String) {
        switch self {
        case .ready:
            return (#imageLiteral(resourceName: "ready"), "준비")
        case .rock:
            return (#imageLiteral(resourceName: "rock"), "바위")
        case .scissors:
            return (#imageLiteral(resourceName: "scissors"), "가위")
        case .paper:
            return (#imageLiteral(resourceName: "paper"), "보")
        }
    }
}
