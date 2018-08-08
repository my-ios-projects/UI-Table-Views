//
//  ViewController.swift
//  UI Table View
//
//  Created by Taha Magdy on 7/24/18.
//  Copyright © 2018 Taha Magdy. All rights reserved.
//

import UIKit

class CategoriesViewController: UIViewController,
                                UITableViewDelegate,
                                UITableViewDataSource
{

    
    // TableView Outlet
    @IBOutlet weak var categoryTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }

    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "category_cell_id") as? CategoryCell {
            let categoryAtRow = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: categoryAtRow)
            print(categoryAtRow.imageName)
            return cell
        } // end if
        else {
            return CategoryCell()
        }
        
    }
    

    
    
    
    
    
    
}

