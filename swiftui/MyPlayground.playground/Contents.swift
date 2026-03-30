import UIKit

var greeting = "Hello, playground"

var arr = [1,2 ,3 ,4,6,9,3]
print(arr[0...3].reduce(0, +))


var array = ["Hello", "word"]
print(array.reduce("") { partialResult, word in
    return partialResult + word + " "
})
