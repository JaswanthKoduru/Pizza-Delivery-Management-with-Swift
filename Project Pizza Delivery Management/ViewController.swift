//
//  ViewController.swift
//  ca3 Project Pizza Delivery Management
//
//  Created by Abhinay Reddy KV on 16/11/22.
//

import UIKit

class ViewController: UIViewController {

    
    var images : [UIImage] = [
        UIImage(named: "a.png")!,
        UIImage(named: "b.png")!,
        UIImage(named: "c.png")!,
        UIImage(named: "d.png")!
    ]
    
    @IBOutlet weak var image1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        image1.animationImages = images
        image1.animationDuration = 5
        image1.startAnimating()
//        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background123.png") ?? "abc"!!!)
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background123.png")!)
        
    }

    @IBOutlet weak var name1: UITextField!
    
    @IBOutlet weak var password1: UITextField!;
    
    
    @IBAction func loginButton1(_ sender: UIButton) {
        
        if(  (name1.text! == "jaswanth" && password1.text! == "12345") || (name1.text! == "j" && password1.text! == "123") ){
            performSegue(withIdentifier: "page1", sender: self)
        }
        else{
            
            let alert1 = UIAlertController(title: "Warning", message: "Invalid Password/UserName\nPlease Re-Enter", preferredStyle: .alert)
            
            alert1.addAction(UIAlertAction(title:"OK", style: .default, handler: nil))
            
            self.present(alert1, animated: true, completion: nil)
            
        }
    }
    
    
//    @IBAction func aboutUs(_ sender: UIButton) {
//        performSegue(withIdentifier: "page2", sender: self)
//
//    }
//
//    @IBAction func imagesMenu(_ sender: UIButton) {
//        performSegue(withIdentifier: "page3", sender: self)
//    }
    
    
    @IBAction func menu(_ sender: UIButton) {
        performSegue(withIdentifier: "page2", sender: self)
    }
    
    @IBAction func aboutUs(_ sender: UIButton) {
        performSegue(withIdentifier: "page3", sender: self)
    }
    
    
    @IBAction func info(_ sender: UIButton) {
        performSegue(withIdentifier: "page4", sender: self)
        entered_name = name1.text!
    }
    
    
    
}

