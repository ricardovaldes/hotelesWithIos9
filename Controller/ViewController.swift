//
//  ViewController.swift
//  hotelesWithIos9
//
//  Created by RICARDO VALDES on 15/07/18.
//  Copyright © 2018 RICARDO VALDES. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var myTable: UITableView!
    

    let hotel = Hotel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let cell = UINib(nibName: "TableViewCell", bundle: nil)
        myTable.register(cell, forCellReuseIdentifier: "tableCell")
        
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hotel.hotelNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = myTable.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! TableViewCell
        
        cell.hotelName.text = hotel.hotelNames[indexPath.row]
        cell.hotelImage.image = UIImage(named: hotel.hotelImages[indexPath.row])
        cell.hotelImage.contentMode = .scaleToFill
        return cell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "mySegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let index = myTable.indexPathForSelectedRow
        let indexNumber = index?.row
        let secondVC = segue.destination as! DetailVCViewController
        secondVC.myDescription = hotel.description[indexNumber!]
        
        
        
        
    }
    
    
    
}

