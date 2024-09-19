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
var E2 : Coordinate? = FindUnusedCoord()

func FindUnusedCoord() -> Coordinate
{
    let x = Int.random(in: 0...24)
    let y = Int.random(in: 0...24)
    if (!taken.contains { $0.x == x && $0.y == y } )
    {
        taken.append(Coordinate(x: x, y: y))
        return Coordinate(x: x, y: y)
    }
    return FindUnusedCoord()
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
        
        if let question = readLine() {
            
            switch(question){
            case "a":
                print("a")
                
            case "b":
                print("a")
                
            case "c":
                print("a")
                
            default:
                print("false input")
            }
            
        }
        
        switch(searchMethod){
        case "1":
            print("1")
            
        case "2":
            print("2")
            
        case "3":
            S = Coordinate(x: 0, y: 0)
            E1 = Coordinate(x: 24, y: 24)
            E2 = nil
            
        default:
            print("false input")
        }
        
        
    }
    
    //print map
    for i in 0...24{
        var line = ""
        for j in 0...24{
            if (taken.contains { $0.x == j && $0.y == 24 - i })
            {
                if (Walls.contains { $0.x == j && $0.y == 24 - i })
                {
                    //wall
                    line += "x"
                }
                else
                {
                    if (S.x == j && S.y == 24 - i)
                    {
                        //start
                        line += "s"
                        continue
                        
                    }
                    else if (E1.x == j && E1.y == 24 - i)
                    {
                        //first exit
                        line += "1"
                        continue
                        
                    }
                    else if let E2 = E2{
                        if (E2.x == j && E2.y == 24 - i)
                        {
                            //Second exit
                            line += "2"
                            continue
                        }
                    }
                    
                    //empty
                    line += "o"
                }
                
            }else{
                //empty
                line += "o"
            }
        }
        print(line)
    }
    
    
    print("Terminate? Y/N")
    
    if let term = readLine() {
        if term == "Y" || term == "y"{
            Terminate = true
        }
    }
    
}

