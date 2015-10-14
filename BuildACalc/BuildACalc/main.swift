//
//  main.swift
//  BuildACalc
//
//  Created by Vikram Thirumalai on 10/13/15.
//  Copyright (c) 2015 Vikram Thirumalai. All rights reserved.
//

import Foundation


func subtract(incoming:Int, incoming2:Int) -> Int{
    return (incoming - incoming2)
}

func add(incoming:Int, incoming2:Int) -> Int{
    return (incoming + incoming2)
}

func multiply(incoming:Int?, incoming2:Int?) -> Int{
    return (incoming! * incoming2!)
}

func divide(incoming:Int?, incoming2:Int?) -> Int{
    return (incoming! / incoming2!)
}

func mathFn(incoming:Int, incoming2:Int, operation:(Int, Int) -> Int) -> Int {
    return operation(incoming, incoming2)
}

func addArray(incoming:[Int]) -> Int {
    var total : Int = 0
    for var i = 0; i < incoming.count; i++ {
        total = total + incoming[i]
    }
    return total
}

func multArray(incoming:[Int]) -> Int {
    var total : Int = 1
    for var i = 0;i < incoming.count; i++ {
        total = total * incoming[i]
    }
    return total
}

func countArray(incoming:[Int]) -> Int {
    return incoming.count
}

func avgArray(incoming:[Int]) -> Int {
    var total = addArray(incoming)
    return total/(incoming.count)
}

func addTuple(incoming: (Int?, Int?), incoming2: (Int?, Int?)) -> (Int, Int) {
    return (incoming.0! + incoming2.0!, incoming.1! + incoming.1!)
}

func subTuple(incoming: (Int?, Int?), incoming2: (Int?, Int?)) -> (Int, Int) {
    return (incoming.0! - incoming2.0!, incoming.1! - incoming.1!)
}

func addTuple(incoming: (Double?, Double?), incoming2: (Double?, Double?)) -> (Double, Double) {
    return (incoming.0! + incoming2.0!, incoming.1! + incoming2.1!)
}

func subTuple(incoming: (Double?, Double?), incoming2: (Double?, Double?)) -> (Double, Double) {
    return (incoming.0! - incoming2.0!, incoming.1! - incoming2.1!)
}


println(add(1,2))
println(add(2,5))
println()
println(subtract(132,251))
println(subtract(200,59))
println()
println(mathFn(1, 4, add))
println(mathFn(2, -40, subtract))
println()
println(addArray([2, 4, 6, 7, 7]))
println(multArray([2, 4, 6, 7, 7]))
println()
println(countArray([2, 4, 6, 7, 7]))
println(avgArray([2, 4, 6, 7, 7]))
println()
println(addTuple((2,3),(5,6)))
println(subTuple((2,3),(5,6)))
println()
println(addTuple((2,3),(5,6)))
println(subTuple((2,3),(5,6)))
println()
println(addTuple((2.0,3.6),(5.6,6.4)))
println(subTuple((2.7,3.1),(5.2,6.3)))

