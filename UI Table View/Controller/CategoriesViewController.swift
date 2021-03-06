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

    
    // TableView Object|Outlet
    @IBOutlet weak var categoryTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }
    
    
    

    func tableView(_ tableView: UITableView, // The table object
                   numberOfRowsInSection section: Int)
        -> Int {
        return DataService.instance.getCategories().count
    } // end numberOfRowsInSection
    
    
    func tableView(_ tableView: UITableView, // The table object
                   cellForRowAt indexPath: IndexPath)
        -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "category_cell_id") as? CategoryCell {
            let categoryAtRow = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: categoryAtRow)
            return cell
        } // end if
        else {
            return CategoryCell()
        } // end else
    } // end cellForRowAt indexPath
    
    
    
    
    // * Runs when the user selects a table cell
    // * indexPath.row is the index of the selected table cell.
    func tableView(_ tableView: UITableView,
                   didSelectRowAt indexPath: IndexPath) {
        
        let category  = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "car_brand_segue_id", sender: category)
    }
    
    
    // segue: ...
    // sender: ...
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let carsOfBrandView = segue.destination as? CarBrandViewController
        {
            carsOfBrandView.initViewFromPreviousView(carBrand: sender as! Category)

        } // end if
        
        
    } // end prepare

} // end class

