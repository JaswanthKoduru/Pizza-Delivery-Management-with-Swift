//
//  menuViewController.swift
//  ca3 Project Pizza Delivery Management
//
//  Created by Abhinay Reddy KV on 16/11/22.
//

import UIKit

class menuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var menu: [String] = ["Veg Pizzas", "Non Veg Pizzas", "Cool Drinks", "Fruit Shakes"]
    
    var vegPizzas: [String] = ["Onion Pizza", "Paneer Pizza", "Tomato Pizza"]
    
    var nonVegPizzas: [String] = ["Chicken Pizza", "Barbecue pizza"]
    
    var coolDrinks: [String] = ["ThumbsUp", "Sprite", "Maaza"]
    
    var fruitShakes: [String] = ["Mango Milkshake", "Strawberry Milkshake", "Chocolate milkshake", "Grape Juice"]
    
    
    func numberOfSections(in tableView: UITableView) -> Int{
        return menu.count
    }
    
    
//------------------------------------------------------------------------------------
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(section==0)
        {
            return vegPizzas.count
        }
        else if(section==1)
        {
            return nonVegPizzas.count
        }
        else if(section==2)
        {
            return coolDrinks.count
        }
        else
        {
            return fruitShakes.count
        }
        
    }
    
    
    
//------------------------------------------------------------------------------------
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return menu[section]
    }
    

//------------------------------------------------------------------------------------
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "my_cell1", for: indexPath)
        
        if(indexPath.section == 0){
            cell.textLabel?.text = vegPizzas[indexPath.row]
        }
        
        else if(indexPath.section == 1){
            cell.textLabel?.text = nonVegPizzas[indexPath.row]
        }
        
        else if(indexPath.section == 2){
            cell.textLabel?.text = coolDrinks[indexPath.row]
        }
        
        else if(indexPath.section == 3){
            cell.textLabel?.text = fruitShakes[indexPath.row]
        }
        
        return cell
    }
    
    
    
//------------------------------------------------------------------------------------
    
    var my_value: String!
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if(indexPath.section == 0){
            my_value = vegPizzas[indexPath.row]
        }
        
        else if(indexPath.section == 1){
            my_value = nonVegPizzas[indexPath.row]
        }
        
        else if(indexPath.section == 2){
            my_value = coolDrinks[indexPath.row]
        }
        
        else if(indexPath.section == 3){
            my_value = fruitShakes[indexPath.row]
        }
        
        let my_alert = UIAlertController(title: "Hello", message: "You have selected \(my_value)", preferredStyle: .alert)
    
        my_alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        self.present(my_alert, animated: true, completion: nil)
    }
    

}
