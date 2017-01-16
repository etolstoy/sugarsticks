//
//  SugarListViewController.swift
//  sugarsticks
//
//  Created by Egor Tolstoy on 16/01/2017.
//  Copyright © 2017 etolstoy. All rights reserved.
//

import UIKit
import RealmSwift

class SugarListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    var sugars: Results<Sugar>!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let realm = try! Realm()
        sugars = realm.objects(Sugar.self)
        
        tableView.dataSource = self
        tableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sugars.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SugarCell") as! SugarInfoTableViewCell
        let sugar = sugars[indexPath.row]
        cell.configureWith(model: sugar)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
