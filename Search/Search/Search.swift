//
//  Search.swift
//  Search
//
//  Created by Alex Yoshida on 2024-09-19.
//

import Foundation

protocol SearchProtocol {
    var goalCoord: Coordinate { get }
    var openQueue: [Node] { get }
    var closedQueue: [Node] { get }
    
    func GetChildren(node:Node) -> [Node]
    func FindFinalPath(searchModel: SearchTypes, inital: Coordinate) -> [Coordinate]
    func CheckNode(node: Node) -> Bool
}

enum SearchTypes
{
    case BFS
    case DFS
    case AStar
}

class Search : SearchProtocol
{
    var goalCoord: Coordinate
    var openQueue: [Node]
    var closedQueue: [Node]
    
    init(goal: Coordinate)
    {
        goalCoord = goal
        openQueue = []
        closedQueue = []
    }
    
    //add inital node -> explore node -> checks and adds children after
    func GetChildren(node:Node) -> [Node]
    {
        var children : [Node] = []
        //Make sure it is not wall, it is not already in tree
        //node priority is in order up, right, down left
        let newHistory = node.history + [node.coords]
        
        //up
        var newCoord = Coordinate(x: node.coords.x, y: node.coords.y + 1)
        if (node.coords.y + 1 < 25
            && !Walls.contains(newCoord)
            && !closedQueue.contains { $0.coords == newCoord}
            && !openQueue.contains { $0.coords == newCoord})
        {
            children.append(Node(coords: newCoord, cost: node.cost + 1, history: newHistory))
        }
        
        //right
        newCoord = Coordinate(x: node.coords.x + 1, y: node.coords.y)
        if (node.coords.x + 1 < 25
            && !Walls.contains(newCoord)
            && !closedQueue.contains { $0.coords == newCoord}
            && !openQueue.contains { $0.coords == newCoord})
        {
            children.append(Node(coords: newCoord, cost: node.cost + 1, history: newHistory))
        }
        
        //down
        newCoord = Coordinate(x: node.coords.x, y: node.coords.y - 1)
        if (node.coords.y - 1 > 0
            && !Walls.contains(newCoord)
            && !closedQueue.contains { $0.coords == newCoord}
            && !openQueue.contains { $0.coords == newCoord})
        {
            children.append(Node(coords: newCoord, cost: node.cost+1, history: newHistory))
        }
        
        //left
        newCoord = Coordinate(x: node.coords.x - 1, y: node.coords.y)
        if (node.coords.x - 1 > 0
            && !Walls.contains(newCoord)
            && !closedQueue.contains { $0.coords == newCoord}
            && !openQueue.contains { $0.coords == newCoord})
        {
            children.append(Node(coords: newCoord, cost: node.cost+1, history: newHistory))
        }
        
        return children
    }
    
    
    
    func FindFinalPath(searchModel: SearchTypes, inital: Coordinate) -> [Coordinate]
    {
        openQueue = [Node(coords: inital, cost: 0, history: [])]
        closedQueue = []
        while(!openQueue.isEmpty)
        {
            let firstNode = openQueue.removeFirst()
            
            if CheckNode(node: firstNode)
            {
                //found goal
                openQueue = []
                return firstNode.history
            }
            else
            {
                //add children to openQueue
                switch(searchModel){
                case SearchTypes.BFS:
                    openQueue.append(contentsOf: GetChildren(node: firstNode))
                    
                case SearchTypes.DFS:
                    openQueue.insert(contentsOf: GetChildren(node: firstNode), at: 0)
                
                case SearchTypes.AStar:
//                    let tempPrevOpen = openQueue
//                    let tempPrevClosed = closedQueue
//                    var tempAdd: [Node] = []
                    for child in GetChildren(node: firstNode){
                        let h = (abs( goalCoord.x-child.coords.x) + abs( goalCoord.y-child.coords.y))
                        openQueue.append(Node(coords: child.coords, cost: child.cost, history: child.history, h: h))
                    }
                    
//                    openQueue = tempPrevOpen + tempAdd
//                    closedQueue = tempPrevClosed
                    openQueue.sort {($0.h! + $0.cost) < ($1.h! + $1.cost)}
                    
                }
                
                //close node
                closedQueue.append(firstNode)
            }
        }
        
        return []
    }
    
    func CheckNode(node:Node) -> Bool
    {
        if goalCoord == node.coords{
            return true
        }
        
        return false
    }
    
    
    
}
