//
//  main.swift
//  Search
//
//  Created by Alex Yoshida on 2024-09-19.
//

import Foundation


print("Which Search?")


var simpleNode = SimpleTree(value: 2, children: [SimpleTree(value: 5, children: nil), SimpleTree(value: 6, children: nil)])

if let searchMethod = readLine() {
   print("you picked: " + searchMethod)
}

