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

    var children : [Node]?
}

struct Coordinate {
    var x : Int
    var y : Int
}
