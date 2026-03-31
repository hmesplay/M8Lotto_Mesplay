//
//  UILabel+Lotto.swift
//  M4Lotto_Mesplay
//
//  Created by Mesplay, Harrison W. on 3/31/26.
//

import UIKit

extension UILabel {
    func setLottoNumber(_ number: Int, with backgroundColor: UIColor? = nil, textColor: UIColor? = nil) {
        layer.cornerRadius = bounds.width / 2
        clipsToBounds = true
        
        text = "\(number)"
        
        self.backgroundColor = getColor(from: number).backgroundColor
        self.textColor = getColor(from: number).textColor
    }
}

func getColor(from number: Int?) -> (backgroundColor: UIColor, textColor: UIColor){
    guard let number else{
        return (UIColor.purple, UIColor.purple)
    }
    switch number{
    case 1...10:
        return (UIColor.red, UIColor.white)
    case 11...20:
        return (UIColor.green, UIColor.black)
    case 21...30:
        return (UIColor.blue, UIColor.white)
    case 31...40:
        return (UIColor.yellow, UIColor.black)
    case 41...45:
        return (UIColor.green, UIColor.black)
    default:
        return (UIColor.purple, UIColor.purple)
    }

}
