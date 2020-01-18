//
//  main.swift
//  TreeEnum
//
//  Created by Serg on 17.01.2020.
//  Copyright © 2020 Sergey Gladkiy. All rights reserved.
//

import Foundation

let tree = TreeCommon()

var arrayRandom = [Int]()
var iteration = 1...19
for i in iteration {
    arrayRandom.append(i)
}

for _ in iteration {
    tree.addValue(arrayRandom.randomElement()!)
}

//tree.root?.traversalInOrder()
//tree.root?.traversalPreOrder()
tree.root?.traversalPostOrder()
