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

//generate Random walls
//while (Walls.count < numOfWalls)
//{
//    Walls.append(FindUnusedCoord())
//}


//generate walls of 1)
Walls += [Coordinate(x: 0, y: 4), Coordinate(x: 0, y: 5), Coordinate(x: 1, y: 4), Coordinate(x: 1, y: 5), Coordinate(x: 2, y: 4), Coordinate(x: 2, y: 5), Coordinate(x: 2, y: 6), Coordinate(x: 2, y: 7), Coordinate(x: 2, y: 8), Coordinate(x: 3, y: 7), Coordinate(x: 3, y: 8), Coordinate(x: 4, y: 7), Coordinate(x: 4, y: 8)]

Walls += [Coordinate(x: 6, y: 3), Coordinate(x: 7, y: 3), Coordinate(x: 6, y: 4), Coordinate(x: 7, y: 4), Coordinate(x: 6, y: 5), Coordinate(x: 7, y: 5), Coordinate(x: 6, y: 6), Coordinate(x: 7, y: 6), Coordinate(x: 6, y: 7), Coordinate(x: 7, y: 7)]

Walls += [Coordinate(x: 4, y: 11)]

Walls += [Coordinate(x: 10, y: 2), Coordinate(x: 11, y: 2), Coordinate(x: 12, y: 2), Coordinate(x: 10, y: 3), Coordinate(x: 11, y: 3), Coordinate(x: 12, y: 3), Coordinate(x: 10, y: 4), Coordinate(x: 11, y: 4), Coordinate(x: 12, y: 4), Coordinate(x: 10, y: 5), Coordinate(x: 11, y: 5), Coordinate(x: 12, y: 5), Coordinate(x: 10, y: 6), Coordinate(x: 11, y: 6), Coordinate(x: 12, y: 6), Coordinate(x: 10, y: 7), Coordinate(x: 11, y: 7), Coordinate(x: 12, y: 7)]

Walls += [Coordinate(x: 18, y: 1), Coordinate(x: 19, y: 1), Coordinate(x: 18, y: 2), Coordinate(x: 19, y: 2), Coordinate(x: 18, y: 3), Coordinate(x: 19, y: 3), Coordinate(x: 18, y: 4), Coordinate(x: 19, y: 4), Coordinate(x: 18, y: 5), Coordinate(x: 19, y: 5), Coordinate(x: 20, y: 5), Coordinate(x: 21, y: 5), Coordinate(x: 18, y: 6), Coordinate(x: 19, y: 6), Coordinate(x: 20, y: 6), Coordinate(x: 21, y: 6),  Coordinate(x: 22, y: 6), Coordinate(x: 23, y: 6), Coordinate(x: 18, y: 7), Coordinate(x: 18, y: 8), Coordinate(x: 18, y: 9), Coordinate(x: 18, y: 10), Coordinate(x: 18, y: 11), Coordinate(x: 18, y: 12)]

Walls += [Coordinate(x: 21, y: 8), Coordinate(x: 21, y: 9), Coordinate(x: 21, y: 10), Coordinate(x: 21, y: 11), Coordinate(x: 21, y: 12), Coordinate(x: 21, y: 13), Coordinate(x: 22, y: 13), Coordinate(x: 22, y: 14), Coordinate(x: 23, y: 13), Coordinate(x: 23, y: 14), Coordinate(x: 23, y: 15), Coordinate(x: 24, y: 13), Coordinate(x: 24, y: 14), Coordinate(x: 24, y: 15), Coordinate(x: 24, y: 12), Coordinate(x: 24, y: 16)]

Walls += [Coordinate(x: 15, y: 10), Coordinate(x: 16, y: 10), Coordinate(x: 15, y: 11), Coordinate(x: 16, y: 11), Coordinate(x: 15, y: 12), Coordinate(x: 16, y: 12), Coordinate(x: 15, y: 13), Coordinate(x: 16, y: 13), Coordinate(x: 15, y: 14), Coordinate(x: 16, y: 14)]

Walls += [Coordinate(x: 10, y: 12), Coordinate(x: 10, y: 13), Coordinate(x: 10, y: 14), Coordinate(x: 10, y: 15), Coordinate(x: 10, y: 16), Coordinate(x: 8, y: 14), Coordinate(x: 9, y: 14), Coordinate(x: 11, y: 14), Coordinate(x: 12, y: 14)]

Walls += [Coordinate(x: 0, y: 17), Coordinate(x: 1, y: 17), Coordinate(x: 2, y: 17), Coordinate(x: 3, y: 17), Coordinate(x: 4, y: 17), Coordinate(x: 5, y: 17), Coordinate(x: 6, y: 17)]

Walls += [Coordinate(x: 14, y: 18), Coordinate(x: 15, y: 18), Coordinate(x: 16, y: 18), Coordinate(x: 17, y: 18), Coordinate(x: 18, y: 18), Coordinate(x: 19, y: 18), Coordinate(x: 20, y: 18)]


Walls += [Coordinate(x: 14, y: 20), Coordinate(x: 15, y: 20), Coordinate(x: 16, y: 20), Coordinate(x: 17, y: 20), Coordinate(x: 18, y: 20), Coordinate(x: 19, y: 20), Coordinate(x: 20, y: 20), Coordinate(x: 14, y: 21), Coordinate(x: 15, y: 21), Coordinate(x: 16, y: 21), Coordinate(x: 17, y: 21), Coordinate(x: 18, y: 21), Coordinate(x: 19, y: 21), Coordinate(x: 20, y: 21), Coordinate(x: 14, y: 22), Coordinate(x: 15, y: 22), Coordinate(x: 16, y: 22), Coordinate(x: 17, y: 22), Coordinate(x: 18, y: 22), Coordinate(x: 19, y: 22), Coordinate(x: 20, y: 22)]

Walls += [Coordinate(x: 17, y: 24), Coordinate(x: 18, y: 24)]

Walls += [Coordinate(x: 8, y: 17), Coordinate(x: 8, y: 18), Coordinate(x: 9, y: 18), Coordinate(x: 10, y: 18), Coordinate(x: 8, y: 19), Coordinate(x: 9, y: 19), Coordinate(x: 10, y: 19), Coordinate(x: 8, y: 20), Coordinate(x: 9, y: 20), Coordinate(x: 10, y: 20), Coordinate(x: 8, y: 21), Coordinate(x: 8, y: 22), Coordinate(x: 8, y: 23), Coordinate(x: 9, y: 23), Coordinate(x: 6, y: 23), Coordinate(x: 7, y: 23), Coordinate(x: 5, y: 23), Coordinate(x: 4, y: 23), Coordinate(x: 3, y: 23), Coordinate(x: 2, y: 23), Coordinate(x: 1, y: 23), Coordinate(x: 0, y: 23), Coordinate(x: 4, y: 22), Coordinate(x: 3, y: 22), Coordinate(x: 2, y: 22), Coordinate(x: 1, y: 22), Coordinate(x: 0, y: 22), Coordinate(x: 5, y: 24), Coordinate(x: 5, y: 24), Coordinate(x: 3, y: 20), Coordinate(x: 3, y: 21), Coordinate(x: 4, y: 20), Coordinate(x: 4, y: 21), Coordinate(x: 5, y: 20), Coordinate(x: 5, y: 21), Coordinate(x: 4, y: 24), Coordinate(x: 5, y: 24)]

taken += Walls

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

