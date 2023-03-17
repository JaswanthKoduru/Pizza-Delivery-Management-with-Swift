//
//  homepageViewController.swift
//  ca3 Project Pizza Delivery Management
//
//  Created by Abhinay Reddy KV on 16/11/22.
//

import UIKit

class homepageViewController: UIViewController {

    
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    
    @IBOutlet weak var price1: UITextField!
    @IBOutlet weak var price2: UITextField!
    @IBOutlet weak var price3: UITextField!
    @IBOutlet weak var price4: UITextField!
    var a1 = 0, a2=0, a3=0, a4=0
    
    
    @IBOutlet weak var total: UITextField!
    var totalPrice = 0
    
    @IBOutlet weak var items: UITextField!
    
//---------------------------------------------------------
    @IBAction func slider1(_ sender: UISlider) {
        a1 = Int(sender.value)
    }
    @IBAction func segu1(_ sender: UISegmentedControl) {
        if(sender.selectedSegmentIndex == 0){
            price1.text = String(a1*10)
        }
        else if(sender.selectedSegmentIndex == 1){
            price1.text = String(a1*30)
        }
        else{
            price1.text = String(a1*50)
        }
    }
//---------------------------------------------------------
    
    @IBAction func slider2(_ sender: UISlider) {
        a2 = Int(sender.value)
    }
    
    @IBAction func segu2(_ sender: UISegmentedControl) {
        if(sender.selectedSegmentIndex == 0){
            price2.text = String(a2*10)
        }
        else if(sender.selectedSegmentIndex == 1){
            price2.text = String(a2*30)
        }
        else{
            price2.text = String(a2*50)
        }
    }
    
//---------------------------------------------------------
    
    @IBAction func segu3(_ sender: UISegmentedControl) {
        if(sender.selectedSegmentIndex == 0){
            price3.text = String(a3*10)
        }
        else if(sender.selectedSegmentIndex == 1){
            price3.text = String(a3*30)
        }
        else{
            price3.text = String(a3*50)
        }
    }
    
    @IBAction func slider3(_ sender: UISlider) {
        a3 = Int(sender.value)
    }
    
//---------------------------------------------------------
    
    @IBAction func segu4(_ sender: UISegmentedControl) {
        if(sender.selectedSegmentIndex == 0){
            price4.text = String(a4*10)
        }
        else if(sender.selectedSegmentIndex == 1){
            price4.text = String(a4*30)
        }
        else{
            price4.text = String(a4*50)
        }
    }
    
    
    @IBAction func slider4(_ sender: UISlider) {
        a4 = Int(sender.value)
    }
    
//---------------------------------------------------------
    
    
    @IBAction func totalButton(_ sender: UIButton) {
        
        var addition = Int(price1.text!)! + Int(price2.text!)! + Int(price3.text!)! + Int(price4.text!)!
        
        total.text = String(Int(addition))
        
        var t = Int(a1) + Int(a2) + Int(a3) + Int(a4)
        
        items.text = String(t)
        
    }
    
//---------------------------------------------------------
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        image1.image = UIImage(named: "cheese.png")
        image2.image = UIImage(named: "chicken.png")
        image3.image = UIImage(named: "chocolate.png")
        image4.image = UIImage(named: "banana.png")
        // Do any additional setup after loading the view.
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
