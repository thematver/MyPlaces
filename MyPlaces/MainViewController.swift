//
//  MainViewController.swift
//  MyPlaces
//
//  Created by Матвей Корепанов on 08.04.2020.
//  Copyright © 2020 Матвей Корепанов. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {

    
    let restaurants = ["КОнФЕта", "Рагу", "Братья Гриль", "Йоко", "Сластория", "Пицца для Друзей!", "Кактус", "Компот", "Миндаль"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return restaurants.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = restaurants[indexPath.row]
        cell.imageView?.image = UIImage(named: restaurants[indexPath.row])
        
        return cell
    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
