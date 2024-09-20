//
//  Node.swift
//  Search
//
//  Created by Alex Yoshida on 2024-09-19.
//

import Foundation

struct Node {
    var coords : Coordinate
    var level : Int
    var history : [Coordinate]

    var children : [Node]?
}

struct Coordinate: Equatable {
    var x : Int
    var y : Int
    
    static func == (lhs: Coordinate, rhs: Coordinate) -> Bool {
            return (lhs.x == rhs.x && lhs.y == rhs.y)
    }
}
