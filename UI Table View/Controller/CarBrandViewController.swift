//
//  CarBrandViewController.swift
//  UI Table View
//
//  Created by Taha Magdy on 8/9/18.
//  Copyright © 2018 Taha Magdy. All rights reserved.
//

import UIKit

class CarBrandViewController: UIViewController,
                              UICollectionViewDelegate,
                              UICollectionViewDataSource
{
    
    
    @IBOutlet weak var brandLabel:UILabel!
    @IBOutlet weak var brandCarCollection: UICollectionView!
    
    private(set) public var carsOfBrand = [Car]()

    // Is set by the initView...
    var viewLabelBrandName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        brandCarCollection.dataSource = self
        brandCarCollection.delegate = self
        
        // You have to set a value for the label from viewDidLoad first.
        brandLabel.text = viewLabelBrandName
        
    }

    
    
    // * This should be called from the previous view
    //  instead of updating the varibale here from the previous view.
    // * This is called before the viewDidLoad
    // * It's called from the previous view.
    func initViewFromPreviousView(carBrand: Category) {
        
        self.viewLabelBrandName = carBrand.title
        carsOfBrand = DataService.instance.getCarsOfBrand(title: carBrand.title)
        
    } // end initViewFromPreviousView
    
    
    
    
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int
    {
        return carsOfBrand.count
    } // end numberOfItemsInSection
    
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
         if let collectionCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cars_of_brand", for: indexPath) as? CarOfBrandCell
           {
             
                let car = carsOfBrand[indexPath.row]
                collectionCell.updateViews(car: car)
                return collectionCell
           }
        
        return CarOfBrandCell()
            
    } // end cellForItemAt
    
    


  
} // end class
