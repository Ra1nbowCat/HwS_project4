//
//  CountriesTableTableViewController.swift
//  Project4
//
//  Created by Илья Лехов on 30.04.2022.
//

import UIKit

class CountriesTableTableViewController: UITableViewController {
    
    var flags = ["estonia", "france", "germany", "ireland", "italy"]

    override func viewDidLoad() {
        super.viewDidLoad()
        flags.shuffle()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flags.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "flagsCell", for: indexPath)
        let flags = flags[indexPath.row]
        cell.textLabel?.text = flags
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "All avaliable flags:"
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Flag") as? FlagViewController {
            vc.flagName = flags[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}
