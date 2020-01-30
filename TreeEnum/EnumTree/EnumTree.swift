//
//  EnumTree.swift
//  TreeEnum
//
//  Created by Serg on 19.01.2020.
//  Copyright © 2020 Sergey Gladkiy. All rights reserved.
//

import Foundation

class EnumTree {
    
    var root: EnumNode?
    
    func addValue(_ number: Int) {
        self.root = self.addNode(self.root, with: number)
    }
}

extension EnumTree {
    private func addNode(_ node: EnumNode?, with value: Int) -> EnumNode {
        
        guard let node = node else {
            return EnumNode.value(value)
        }
        switch node {
        case .value(let number):
            if value < number {
                return addNode(EnumNode.left(node), with: value)
            } else {
                return addNode(EnumNode.right(node), with: value)
            }
        default:
            break
        }
        return node
    }
}

