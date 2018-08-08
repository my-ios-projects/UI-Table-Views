//
//  CategoryCell.swift
//  UI Table View
//
//  Created by Taha Magdy on 7/24/18.
//  Copyright © 2018 Taha Magdy. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle:UILabel!
    
    
    func updateViews(category: Category) {
        self.categoryImage.image = UIImage(named: category.imageName)
        self.categoryTitle.text = category.title
    }

}
