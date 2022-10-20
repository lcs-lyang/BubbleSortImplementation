//
//  main.swift
//  BubbleSortImplementation
//
//  Created by Lillian Yang on 2022-10-20.
//

import Foundation

func waitForUserInput() {
    print("")
    print("Press return to continue...")
    //Waits or input from user, then discards it
    _ = readLine()
}

print("Hello, World!")

// create an empty list (array)
//telling swift that we want a lift of integers that starts empty
var dataSet: [Int] = []

//Populate the list

for _ in 1...10 {
    dataSet.append(Int.random(in: 1...100))
}


//Print the list
print("Unsorted:")
print(dataSet)
waitForUserInput()

//One pass through the array to float the highest number to the end
for j in 0...dataSet.count - 1 {
    print(j)
    
    //Compare left valur to right value
    if dataSet[j] > dataSet[j + 1] {
        //swap values (when left value is more than right value)
        let temporaryValue = dataSet[j] //set asaide the left value
        dataSet[j] = dataSet[j + 1] //replace left with right
        dataSet[j + 1] = temporaryValue //replace right with the temporary value
    }
}

//Print the array after the pass

print("Array after pass:")
print(dataSet)
waitForUserInput()
