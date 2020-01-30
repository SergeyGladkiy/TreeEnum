//
//  Tree.swift
//  TreeEnum
//
//  Created by Serg on 17.01.2020.
//  Copyright © 2020 Sergey Gladkiy. All rights reserved.
//

import Foundation

struct TreeCommon<Element: Comparable> {
    
    var root: Node<Element>?
    
    mutating func addValue(_ number: Element) {
        self.root = self.addNode(self.root, with: number)
    }
}

extension TreeCommon {
    private func addNode(_ node: Node<Element>?, with value: Element) -> Node<Element> {
        
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

