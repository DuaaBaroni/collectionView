//
//  ProductViewController.swift
//  UIViewCollection
//
//  Created by Doaa on 18/02/2024.
//

import UIKit

class ProductViewController: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource{
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var arrProducts = [UIImage(named: "image-9")!, UIImage(named: "image-10")!,UIImage(named: "image-11")!,UIImage(named: "image-12")!]
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrProducts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "", for: <#T##IndexPath#>)
    }
    

}
