//
//  ViewController.swift
//  M4Lotto_Mesplay
//
//  Created by Mesplay, Harrison W. on 2/10/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numLabel1: UILabel!
    @IBOutlet weak var numLabel2: UILabel!
    @IBOutlet weak var numLabel3: UILabel!
    @IBOutlet weak var numLabel4: UILabel!
    @IBOutlet weak var numLabel5: UILabel!
    @IBOutlet weak var numLabel6: UILabel!
    @IBOutlet weak var numLabel7: UILabel!
    
    @IBOutlet var labels: [UILabel]!
    
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
    override func viewWillTransition(to size: CGSize, with coordinator: any UIViewControllerTransitionCoordinator) {
        coordinator.animate { _ in
            for label in self.labels{
                self.numLabel1.layer.cornerRadius = self.numLabel1.bounds.width / 2
            }
        }
    }
    //never got to see how we finished the function, moved onto next program instantly
    override func viewDidAppear( _ animated: Bool) {
        let nums = Int.uniqueRandomNumber(in: 1 ... 45, count: 7)
        
        for(index, label) in labels.enumerated(){
            if label == label.last{
                label.setLottoNumber(nums[index], with: .purple, textColor: .white)
            }else{
                
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let labels = [numLabel1!, numLabel2!, numLabel3!, numLabel4!, numLabel5!, numLabel6!, numLabel7!]
        
        var nums: [Int] = []
        
        while nums.count < labels.count {
            let randomNum = Int.random(in: 1...45)
            if !nums.contains(randomNum) {
                nums.append(randomNum)
            }
        }
        
        let sortedNums = nums.sorted()
        //nums.sorted(by: >) decending order
        
        for (index, label) in labels.enumerated() {
            label.layer.cornerRadius = label.bounds.width / 2
            label.clipsToBounds = true
            
            label.text = "\(sortedNums[index])" //String Interpolation "\()"
            switch sortedNums[index]{
            case 1...10:
                label.backgroundColor = UIColor.red
                label.textColor = UIColor.white
            case 11...20:
                label.backgroundColor = UIColor.green
                label.textColor = UIColor.black
            case 21...30:
                label.backgroundColor = UIColor.blue
                label.textColor = UIColor.white
            case 31...40:
                label.backgroundColor = UIColor.yellow
                label.textColor = UIColor.black
            case 41...45:
                label.backgroundColor = UIColor.green
                label.textColor = UIColor.black
            default:
                break
            }
        }
    }
}
/*
 extension Int{
 func uniqueRandomNumber(in range: ClosedRange<Int>, count: Int) -> [Int] {
 var nums = [Int]()
 
 while nums.count < count {
 let randomNum = Int.random(in: 1...45)
 if !nums.contains(randomNum) {
 nums.append(randomNum)
 }
 }
 nums.sort()
 return nums
 }
 }
 */
