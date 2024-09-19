//
//  Node.swift
//  Search
//
//  Created by Alex Yoshida on 2024-09-19.
//

import Foundation

struct Node {
    var coords : Coordinate

    var children : [Node]?
    
    func ExploreNode()
    {
        
        //set children
    }
}

struct Coordinate {
    var x : Int
    var y : Int
}
