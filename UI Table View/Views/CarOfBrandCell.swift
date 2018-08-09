//
//  CarOfBrandCell.swift
//  UI Table View
//
//  Created by Taha Magdy on 8/9/18.
//  Copyright © 2018 Taha Magdy. All rights reserved.
//

import UIKit

class CarOfBrandCell: UICollectionViewCell {
    
    @IBOutlet weak var carImage: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var price: UILabel!
    
    
    
    func updateViews(car: Car)
    {
        self.carImage.image = UIImage(named: car.imageName)
        self.price.text = car.price
        self.title.text = car.name
    } // end updateViews
    
    
} // end class
