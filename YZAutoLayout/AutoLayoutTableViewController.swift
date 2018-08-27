//
//  AutoLayoutTableViewController.swift
//  YZAutoLayout
//
//  Created by 未魔 on 2018/8/23.
//  Copyright © 2018年 未魔. All rights reserved.
//

import UIKit

class AutoLayoutTableViewController: UITableViewController {
    
    var cellArray = Array<String>()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        cellArray = ["第一个 AutoLayout Cell", "第二个 AutoLayout Cell 第二个 AutoLayout Cell", "第三个 AutoLayout Cell 第三个 AutoLayout Cell 第三个 AutoLayout Cell", "第四个 AutoLayout Cell 第四个 AutoLayout Cell 第四个 AutoLayout Cell 第四个 AutoLayout Cell", "第五个 AutoLayout Cell 第五个 AutoLayout Cell 第五个 AutoLayout Cell 第五个 AutoLayout Cell 第五个 AutoLayout Cell"]
        
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AutoLayoutCellID", for: indexPath) as! AutoLayoutCell

        cell.cellTitleLabel.text = cellArray[indexPath.row]

        return cell
    }

}
