//
//  Tree.swift
//  TreeEnum
//
//  Created by Serg on 17.01.2020.
//  Copyright © 2020 Sergey Gladkiy. All rights reserved.
//

import Foundation

class TreeCommon {
    
    var root: Node?
    
    func addValue(_ number: Int) {
        self.root = self.addNode(self.root, with: number)
    }
}

extension TreeCommon {
    private func addNode(_ node: Node?, with value: Int) -> Node {
        
        guard let node = node else {
            return Node(value: value)
        }
        
        if value < node.value {
            node.left = addNode(node.left, with: value)
        } else {
            node.right = addNode(node.right, with: value)
        }
        return node
    }
}

