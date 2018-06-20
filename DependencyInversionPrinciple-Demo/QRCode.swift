//
//  QRCode.swift
//  DependencyInversionPrinciple-Demo
//
//  Created by Finn on 2018/6/20.
//  Copyright © 2018年 Finn. All rights reserved.
//

import Foundation

class QRCode {}

extension QRCode: TableCellClick {
    
    func action() {
        print("Scan QRCode")
    }
    
}
