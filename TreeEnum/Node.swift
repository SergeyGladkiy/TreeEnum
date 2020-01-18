//
//  Node.swift
//  TreeEnum
//
//  Created by Serg on 17.01.2020.
//  Copyright © 2020 Sergey Gladkiy. All rights reserved.
//

import Foundation

class Node {
    
    var value: Int
    var left: Node?
    var right: Node?
    
    init(value: Int) {
        self.value = value
    }
    
}




extension Node {
    func traversalInOrder() {
        left?.traversalInOrder()
        print(value)
        right?.traversalInOrder()
    }
    
    func traversalPreOrder() {
        print(value)
        left?.traversalPreOrder()
        right?.traversalPreOrder()
    }
    
    func traversalPostOrder() {
        left?.traversalPostOrder()
        right?.traversalPostOrder()
        print(value)
    }
}
