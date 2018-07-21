//
//  DetailVCViewController.swift
//  hotelesWithIos9
//
//  Created by RICARDO VALDES on 19/07/18.
//  Copyright © 2018 RICARDO VALDES. All rights reserved.
//

import UIKit

class DetailVCViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let hotel = Hotel()
    var myDescription = ""
    
    
    @IBOutlet weak var myCollection: UICollectionView!
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var hotelDescription: UITextView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        hotelDescription.text = myDescription
    }

 
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return hotel.array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = myCollection.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! CollectionCellCollectionViewCell
        
        cell.cellImage.image = UIImage(named: hotel.array[indexPath.row][indexPath.row])
        
        return cell
    }

    @IBAction func reservar(_ sender: UIButton) {
    }
    

}
