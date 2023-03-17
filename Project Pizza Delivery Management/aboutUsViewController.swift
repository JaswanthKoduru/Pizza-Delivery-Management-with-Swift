//
//  aboutUsViewController.swift
//  ca3 Project Pizza Delivery Management
//
//  Created by Abhinay Reddy KV on 16/11/22.
//

import UIKit

class aboutUsViewController: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
        
    @IBOutlet weak var image1: UIImageView!
    
    var images1 : [UIImage] = [
        UIImage(named: "tomato.png")!,
        UIImage(named: "chicken.png")!,
        UIImage(named: "cheese.png")!
    ]
    
    @IBOutlet weak var text_label1: UILabel!
    
    @IBAction func seg1(_ sender: UISegmentedControl) {
        if(sender.selectedSegmentIndex == 0)
        {
            image1.image = UIImage(named: "tomato.png")
            text_label1.text = "Tomato Pizza Selected"
        }
        
        else if(sender.selectedSegmentIndex == 1)
        {
            image1.image = UIImage(named: "chicken.png")
            text_label1.text = "Chicken Pizza Selected"
        }
        
        else
        {
            image1.image = UIImage(named: "cheese.png")
            text_label1.text = "Cheese Pizza Selected"
        }
    }
    
    
}
