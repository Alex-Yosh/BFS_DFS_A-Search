//
//  BFS.swift
//  Search
//
//  Created by Alex Yoshida on 2024-09-19.
//

import Foundation

protocol SearchProtocol {
    var initalCoord: Coordinate { get }
    var goalCoord: Coordinate { get }
    var openQueue: [Node] { get }
    var closedQueue: [Node] { get }
    
    func ExploreNode()
}

class BFS : SearchProtocol
{
    var initalCoord: Coordinate
    var goalCoord: Coordinate
    var openQueue: [Node]
    var closedQueue: [Node]
    
    init(inital: Coordinate, goal: Coordinate)
    {
        initalCoord = inital
        goalCoord = goal
        openQueue = []
        closedQueue = []
    }
    
    
    func ExploreNode()
    {
        
    }
    
    
}
