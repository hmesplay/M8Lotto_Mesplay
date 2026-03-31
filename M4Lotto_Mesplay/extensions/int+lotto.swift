//
//  int+lotto.swift
//  M4Lotto_Mesplay
//
//  Created by Mesplay, Harrison W. on 3/31/26.
//

import Foundation

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
