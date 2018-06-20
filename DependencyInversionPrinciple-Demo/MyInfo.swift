//
//  File.swift
//  DependencyInversionPrinciple-Demo
//
//  Created by Finn on 2018/6/20.
//  Copyright © 2018年 Finn. All rights reserved.
//

import Foundation

class MyInfo {}

extension MyInfo: TableCellClick {
    
    func action() {
        print("push to my info page")
    }
    
}
