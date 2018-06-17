//
//  CookTableViewController.swift
//  CookingApp
//
//  Created by Georgi Teoharov on 17.06.18.
//  Copyright © 2018 Georgi Teoharov. All rights reserved.
//

import UIKit

class CookTableViewController: UITableViewController {
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tableView.reloadData()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        let numberOfItems = RecipesData.recipes.count
        return numberOfItems
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath) as! ReceptCell

        cell.nameOfDish.text = RecipesData.recipes[indexPath.row][.dishName]?.capitalized
        cell.cookingTime.text = RecipesData.recipes[indexPath.row][.timeToCook]
        cell.imgOfDish.image = UIImage(named: RecipesData.recipes[indexPath.row][.pictureOfDish] ?? "defaultDishPicture")

        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            RecipesData.recipes.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }


    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let receptData = RecipesData.recipes[fromIndexPath.row]
        RecipesData.recipes.remove(at: fromIndexPath.row)
        RecipesData.recipes.insert(receptData, at: to.row)
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let data = RecipesData.recipes[indexPath.row]
        
        let dataViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "RecipeDetailsViewController") as! RecipeDetailsViewController
        dataViewController.dishDescriptionText = data[.recipe]!
        dataViewController.timeToCookText = data[.timeToCook]!
        dataViewController.dishImgText = data[.pictureOfDish]!

        
        
        self.navigationController?.pushViewController(dataViewController, animated: true)
    }
    

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destinationViewController.
//
//        // Pass the selected object to the new view controller.
//        guard let segueIdentifier = segue.identifier else {
//            return
//        }
//
//        switch segueIdentifier {
//        case "receptDetailsSegueIdentifier":
//
//            guard let cell = sender as? UITableViewCell else {
//                return
//            }
//
//            guard let indexPath = self.tableView.indexPath(for: cell) else {
//                return
//            }
//
//            (segue.destination as! RecipeDetailsViewController).recipes = RecipesData.recipes[indexPath.row]
//        default:
//            break
//        }
//    }

}
