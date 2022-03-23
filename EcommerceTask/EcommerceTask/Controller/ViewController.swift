
//  ViewController.swift
//  EcommerceTask
//
//  Created by ShreeThaanu on 23/03/22.
//  Copyright © 2022 sriram. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bannerCollectionView: UICollectionView!
    
    @IBOutlet weak var categoryCollectionView: UICollectionView!
  
    @IBOutlet weak var productCollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       

    }


}

extension ViewController : UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if (collectionView == self.categoryCollectionView){
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryCell", for: indexPath) as! CategoryViewCell
            cell.contentView.backgroundColor = .orange
            cell.contentView.layer.cornerRadius = cell.frame.size.width/2
            cell.contentView.layer.masksToBounds = true
            return cell
        }else  if (collectionView == self.productCollectionView){
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "productcell", for: indexPath) as! ProductViewCell
            return cell
        } else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "bannerCell", for: indexPath) as! BannerViewCell
            return cell
        }
    }
    
    
}


