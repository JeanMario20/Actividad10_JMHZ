//
//  ViewController.swift
//  Actividad10V2_JMHF
//
//  Created by user172369 on 4/8/21.
//  Copyright © 2021 user172369. All rights reserved.
//

import UIKit

class TablaVC: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    let nombres = ["Carlos","Luis","Pedro","Jose"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }


}

extension TablaVC: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("sirvo")
    }
    
}

extension TablaVC: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nombres.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        
        celda.textLabel?.text = nombres[indexPath.row]
        return celda
    }
}
