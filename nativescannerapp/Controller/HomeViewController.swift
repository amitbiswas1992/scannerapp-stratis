//
//  ViewController.swift
//  nativescannerapp
//
//  Created by Maze Geek on 7/7/19.
//  Copyright © 2019 Amit Biswas. All rights reserved.
//

import UIKit
import ScanditBarcodeScanner

class HomeViewController: UIViewController, DataSentDelegate{
    
    
    
    func userDidEnterData(email: String, packageName: String) {
        
        
        self.packages.append(PackageModel(email: "Email", packageName: packageName))
        //Reload your tableview once your new object added.
        self.packageTable.reloadData()
    }
    
   
    @IBOutlet weak var packageTable: UITableView!
    var packages : [PackageModel]  = [PackageModel]()  // Array List
    
    //@IBOutlet weak var scan_btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        packageTable.delegate = self
        packageTable.dataSource = self
        packageTable.rowHeight = 100
   
          }
    
    // Showing scanner through this function
    @IBAction func tapScanButton(_ sender: Any) {
        performSegue(withIdentifier: "scanVC", sender: self)
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "scanVC" {
            let addDestination:ScannerVC = segue.destination as! ScannerVC
            addDestination.delegate = self
        }
    }
    
}


// Implemented TableView
extension HomeViewController : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return packages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! CellTableViewCell
        let currentLastItem = packages[indexPath.row]
        cell.email.text = currentLastItem.email
        cell.package.text = currentLastItem.packageName
        return cell
    }
    
}


