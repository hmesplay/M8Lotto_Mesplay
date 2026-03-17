import UIKit

//Tuples

let a = (1,"2",3.0)
a.0
a.1
a.2

var arr = [10, 20, 30]
arr[0]
arr[1]
arr[2]
arr.append(40)

//unnamed tuples
let scores = (100, 90, 75)
print(scores.0)
print(scores.1)
print(scores.2)

//named tuples
let studentScores = (math: 100, enlgish: 90, science: 75)
//let studentScores1 = (math: Int, science: Int, enlgish: Int) = (100, 90, 75)

print(studentScores.0)
print(studentScores.math)

