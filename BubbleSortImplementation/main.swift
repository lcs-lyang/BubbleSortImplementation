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

// create an empty list (array)
//telling swift that we want a lift of integers that starts empty
var dataSet: [Int] = []
//var time: [Double] = []

//Populate the list

//Worst case scenario - reverse order

dataSet.append(66)
dataSet.append(60)
dataSet.append(59)
dataSet.append(45)
dataSet.append(32)
dataSet.append(23)
dataSet.append(21)
dataSet.append(19)
dataSet.append(9)
dataSet.append(6)
dataSet.append(3)

//dataSet.append(.random(in: 1...10))



//Print the list
print("Unsorted:")
print(dataSet)
waitForUserInput()

//Loop through the entire array "n" times
//(however many time there are elements in the array)

//Keep track of the start time (epoch)
//When this line of code runs, startTime contains the
//number of seconds since Jan 1 1970

let startTime = Date().timeIntervalSince1970
print("Starting sort...", terminator: "")

for i in 0..<dataSet.count {
    
    //Keep track of whether a pair of numbers was swapped. Written here so that it can be looped.
    var swapped = false
    
    //One pass through the array to float the highest number to the end
    
    
    for j in 0..<dataSet.count - 1 - i {
        print(j)
        
        //Compare left valur to right value
        print("Comparison \(j + 1)...", terminator: "")
        
        if dataSet[j] > dataSet[j + 1] {
            
            //swap values (when left value is more than right value)
            
            let temporaryValue = dataSet[j] //set aside the left value
            
            dataSet[j] = dataSet[j + 1] //replace left with right
            
            dataSet[j + 1] = temporaryValue //replace right with the temporary value
            
            print("values were swapped.", terminator: "")
            
            //Note that a swap occured
            
            swapped = true
        }
        
        print("")
    }
    
    //When no swaps occured, stop the loop

    if swapped == false {
        break
    }
    
    print("")

    //Print the array after the pass

    print("Array after pass \(i + 1):")
    print(dataSet)
    waitForUserInput()
    
}


print("ended.")

let endTime = Date().timeIntervalSince1970

//get elapsed time
let elapsedTime = endTime - startTime
print("Sort took \(elapsedTime) seconds.")

//Store the elapsed time into the empty list of "time"
//Then prompt (create equation) to add all of them then divide by n



// worst case: O(n^2-n)
//roughly: O(n^2)
//pronounced as "big Oh"

// best case: omega(n-1)
//roughly: omega(n)
