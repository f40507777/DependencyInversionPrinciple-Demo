//
//  DomainSettingController.swift
//  DependencyInversionPrinciple-Demo
//
//  Created by Finn on 2018/6/20.
//  Copyright © 2018年 Finn. All rights reserved.
//

import UIKit

class DomainSettingController: UITableViewController {

    var cellDatas: [TableCellClick] = [MyInfo(),
                                       QRCode(),
                                       LeaveDomain()]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "CELL")
        
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.value1, reuseIdentifier: "CELL")
        }
        
        if indexPath.row == 0 {
            cell?.textLabel?.text = "所有成員"
        } else if indexPath.row == 1 {
            cell?.textLabel?.text = "掃描QRCode"
        } else if indexPath.row == 2 {
            cell?.textLabel?.text = "離開社群"
        }
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        cellDatas[indexPath.row].action()
    }

}
