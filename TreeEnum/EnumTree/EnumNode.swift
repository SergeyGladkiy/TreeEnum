//
//  EnumTree.swift
//  TreeEnum
//
//  Created by Serg on 19.01.2020.
//  Copyright © 2020 Sergey Gladkiy. All rights reserved.
//

import Foundation

enum EnumNode {
    case value(Int)
    indirect case left(EnumNode?)
    indirect case right(EnumNode?)
}



