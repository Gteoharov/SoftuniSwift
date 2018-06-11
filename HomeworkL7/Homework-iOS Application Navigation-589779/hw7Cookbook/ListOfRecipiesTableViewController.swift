//
//  ListOfRecipiesTableViewController.swift
//  hw7Cookbook
//
//  Created by Georgi Teoharov on 24/05/2018.
//  Copyright © 2018 Georgi Teoharov. All rights reserved.
//

import UIKit

class ListOfRecipiesTableViewController: UITableViewController {

    @IBOutlet weak var sortByUIBarButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
         self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        self.tableView.reloadData()
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return RecipiesData.recipies.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "receptiesIdentifier", for: indexPath) as! ReceptTableViewCell
        
        cell.nameOfDish.text = RecipiesData.recipies[indexPath.row][.dishName]?.capitalized
        cell.prepTime.text = RecipiesData.recipies[indexPath.row][.timeToCook]
        cell.descRecept.text = RecipiesData.recipies[indexPath.row][.recipe]?.capitalized
        cell.imageOfDish.image = UIImage(named: RecipiesData.recipies[indexPath.row][.pictureOfDish] ?? "defaultDishPicture")
        cell.favorite = Int(RecipiesData.recipies[indexPath.row][.favorite] ?? "0") ?? 0
        cell.showAFavoriteStar()
        cell.indexPathRow = indexPath.row
        //RecipiesData.recipies[indexPath.row][.favorite] = cell.favorite
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
            // Delete the row from the data source
            RecipiesData.recipies.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let receptData = RecipiesData.recipies[fromIndexPath.row]
        RecipiesData.recipies.remove(at: fromIndexPath.row)
        RecipiesData.recipies.insert(receptData, at: to.row)
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let segueIndentifier = segue.identifier else {
            return
        }
        switch segueIndentifier {
        case "receptDetailsSegueIdentifier":
            
            guard let cell = sender as? UITableViewCell else {
                print("I cant have a cell")
                return
            }
            
            guard let indexPath = self.tableView.indexPath(for: cell) else{
                return
            }
            print(RecipiesData.recipies[indexPath.row][.seen] ?? 0)
            RecipiesData.recipies[indexPath.row][.seen] = ((Int(RecipiesData.recipies[indexPath.row][.seen] ?? "0") ?? 0 ) + 1).description
            (segue.destination as! RecipiesDetailsViewController).recept = RecipiesData.recipies[indexPath.row]
        default:
            break
        }
        
    }
    
    @IBAction func sortByUIBarButtonAction(_ sender: UIBarButtonItem) {
        switch sender.title?.description {
        case "Favorites":
            RecipiesData.sortRecipies(sortBy: .favorite)
        case "Views":
            RecipiesData.sortRecipies(sortBy: .seen)
        default:
            return
        }

        self.tableView.reloadData()
    }
}
