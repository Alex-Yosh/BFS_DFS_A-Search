//
//  main.swift
//  Search
//
//  Created by Alex Yoshida on 2024-09-19.
//

import Foundation

let numOfWalls = 120;


//generate map

//record taken coordinates
var taken : [Coordinate] = [Coordinate(x: 0, y: 0), Coordinate(x: 24, y: 24)]

var Walls : [Coordinate] = []
var S : Coordinate = FindUnusedCoord()
var E1 : Coordinate = FindUnusedCoord()
var E2 : Coordinate = FindUnusedCoord()
var FinalPath : [Coordinate] = []

func FindUnusedCoord() -> Coordinate
{
    let x = Int.random(in: 0...24)
    let y = Int.random(in: 0...24)
    if (!taken.contains(Coordinate(x: x, y: y)))
    {
        taken.append(Coordinate(x: x, y: y))
        return Coordinate(x: x, y: y)
    }
    return FindUnusedCoord()
}

func printMap()
{
    //print map
    for i in 0...24{
        var line = ""
        for j in 0...24{
            let currCoord = Coordinate(x: j, y: 24 - i)
            if (taken.contains(currCoord))
            {
                if (Walls.contains(currCoord))
                {
                    //wall
                    line += "x"
                }
                else
                {
                    if (S == currCoord)
                    {
                        //start
                        line += "s"
                        continue
                        
                    }
                    else if (E1 == currCoord)
                    {
                        //first exit
                        line += "1"
                        continue
                        
                    }
                    else if(E2 == currCoord)
                    {
                        //second exit
                        line += "2"
                        continue
                        
    
                    }
                    
                    //empty
                    if (FinalPath.contains(currCoord)){
                        line += "*"
                    }else{
                        line += "o"
                    }
                }
            }else if (FinalPath.contains(currCoord)){
                line += "*"
            }else{
                //empty
                line += "o"
            }
        }
        print(line)
    }
}

//generate walls
while (Walls.count < numOfWalls)
{
    Walls.append(FindUnusedCoord())
}


var Terminate = false

while(!Terminate){
    print("Which Search? (1: BFS, 2: DFS, 3: A*)")
    
    if let searchMethod = readLine() {
        
        print("which question? (a: With the agent starting at S and ending at E1, b: With the agent starting at S and ending at E2, c: With the agent starting at (0,0) and ending (24,24))")
        var goal = E1
        if let question = readLine() {
            
            if question == "b"{
                goal = E2
            }
            if question == "c"{
                S = Coordinate(x: 0, y: 0)
                E1 = Coordinate(x: 24, y: 24)
            }
            
        }
        
        var searchModel: SearchTypes?
        switch(searchMethod){
        case "1":
            searchModel = SearchTypes.BFS
            
        case "2":
            searchModel = SearchTypes.DFS
            
        case "3":
            searchModel = SearchTypes.AStar
            
        default:
            print("false input")
        }
        
        if let searchModel = searchModel{
            let searchManager: Search = Search(goal: goal)
            FinalPath = searchManager.FindFinalPath(searchModel: searchModel, inital: S)
            print("cost: \(FinalPath.count)")
            print("Nodes Visited: \(searchManager.closedQueue.count + 1)")
        }
        
        
    }
    
    printMap()
    
    
    print("Terminate? Y/N")
    
    if let term = readLine() {
        if term == "Y" || term == "y"{
            Terminate = true
        }
    }
    
}

