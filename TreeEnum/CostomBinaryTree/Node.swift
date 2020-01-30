//
//  Node.swift
//  TreeEnum
//
//  Created by Serg on 17.01.2020.
//  Copyright © 2020 Sergey Gladkiy. All rights reserved.
//

import Foundation

class Node<Element> {
    
    var value: Element
    var left: Node?
    var right: Node?
    
    init(value: Element) {
        self.value = value
    }
    
}

extension Node: CustomStringConvertible {
    
    var description: String {
        return diagram(for: self)
    }
    
    func diagram(for node: Node?,_ top: String = "",_ root: String = "",_ bottom: String = "") -> String {
        
        guard let node = node else {
            return root + "nil\n"
        }
        
        if node.left == nil && node.right == nil {
            return root + "\(node.value)\n"
        }
        
        return diagram(for: node.right, top + " ", top + "┌──", top + "│ ") + root + "\(node.value)\n" + diagram(for: node.left, bottom + "│ ", bottom + "└──", bottom + " ")
        
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
    
    func forPracticeMerge() {
        print(#function)
    }
}
