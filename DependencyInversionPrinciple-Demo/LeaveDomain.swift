//
//  LeaveDomain.swift
//  DependencyInversionPrinciple-Demo
//
//  Created by Finn on 2018/6/20.
//  Copyright © 2018年 Finn. All rights reserved.
//

import Foundation

class LeaveDomain {

}

extension LeaveDomain: TableCell {
    
    func clickAction() {
        print("Show verify dialog")
    }
    
}
