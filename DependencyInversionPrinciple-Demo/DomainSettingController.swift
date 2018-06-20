//
//  DomainSettingController.swift
//  DependencyInversionPrinciple-Demo
//
//  Created by Finn on 2018/6/20.
//  Copyright © 2018年 Finn. All rights reserved.
//

import UIKit

class DomainSettingController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "CELL")
        
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.value1, reuseIdentifier: "CELL")
        }
        
        if indexPath.row == 0 {
            cell?.textLabel?.text = "所有成員"
        }
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            MyInfo().pushToPage()
        } else if indexPath.row == 1 {
            LeaveDomain().leaveFlow()
        }
    }

}
