//
//  main.swift
//  TreeEnum
//
//  Created by Serg on 17.01.2020.
//  Copyright © 2020 Sergey Gladkiy. All rights reserved.
//

import Foundation

//var tree = TreeCommon<Int>()
let enumTree = EnumTree()

var arrayRandom = [Int]()
var iteration = 1...19
for i in iteration {
    arrayRandom.append(i)
}

//
//for _ in iteration {
//    tree.addValue(arrayRandom.randomElement()!)
//}

for _ in iteration {
    enumTree.addValue(arrayRandom.randomElement()!)
}






