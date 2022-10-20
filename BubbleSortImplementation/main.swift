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


