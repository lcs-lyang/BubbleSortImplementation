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

//Populate the list

//Best case scenario - already sorted
dataSet.append(3)
dataSet.append(6)
dataSet.append(9)
dataSet.append(19)
dataSet.append(21)
dataSet.append(23)
dataSet.append(32)
dataSet.append(45)
dataSet.append(59)
dataSet.append(60)
dataSet.append(66)

//Print the list
print("Unsorted:")
print(dataSet)
waitForUserInput()

//Loop through the entire array "n" times
//(however many time there are elements in the array)
for i in 0..<dataSet.count {
    
    //Keep track of whether a pair of numbers was swapped. Written here so that it can be looped.
    var swapped = false
    
    //One pass through the array to float the highest number to the end
    
    
    for j in 0..<dataSet.count - 1 {
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


