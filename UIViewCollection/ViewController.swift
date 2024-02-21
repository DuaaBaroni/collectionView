//
//  ViewController.swift
//  UIViewCollection
//
//  Created by Doaa on 13/02/2024.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    
    var arrItems = [Item]()
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
    
            
            arrItems.append(Item(photo: UIImage(named: "images-1")!, price: 100))
            arrItems.append(Item(photo: UIImage(named: "images-2")!, price: 130))
            arrItems.append(Item(photo: UIImage(named: "images-3")!, price: 150))
            arrItems.append(Item(photo: UIImage(named: "images-4")!, price: 180))
            arrItems.append(Item(photo: UIImage(named: "images-5")!, price: 200))
            arrItems.append(Item(photo: UIImage(named: "image-6")!, price: 230))
            arrItems.append(Item(photo: UIImage(named: "image-7")!, price: 250))
            arrItems.append(Item(photo: UIImage(named: "image-8")!, price: 300))

       
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrItems.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "itemCell", for: indexPath) as! ItemCollectionViewCell
        let item = arrItems[indexPath.row]
        cell.setupCell(photo: item.photo, price: item.price)
        cell.backgroundColor = UIColor(named: "grey")
        return cell
      
   }
   
}
  
 struct Item {
     let photo : UIImage
     let price : Double
}
