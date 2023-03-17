//
//  infoViewController.swift
//  ca3 Project Pizza Delivery Management
//
//  Created by Abhinay Reddy KV on 17/11/22.
//

import UIKit

var entered_name = String()

class infoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        label1.text = "Hello \(entered_name)"
        
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var label1: UILabel!
    
    
    @IBOutlet weak var age1: UITextField!
    @IBOutlet weak var nationality1: UITextField!
    @IBOutlet weak var email1: UITextField!
    
    @IBOutlet weak var confirm: UITextField!
    
    @IBAction func slider1(_ sender: UISlider) {
        age1.text = String(Int(sender.value))
    }
    
    
    @IBAction func onOff1(_ sender: UISwitch) {
        if(sender.isOn == true){
            nationality1.text = "Yes"
        }else{
            nationality1.text = "No"
        }
    }
    
    
    @IBAction func submit(_ sender: UIButton) {
        var myEmail: String = email1.text!
        
        let outerHandler = {
            (action:UIAlertAction) -> Void in
            
            let noHandler = {
                (action: UIAlertAction) -> Void in
                self.view.backgroundColor = UIColor.yellow
                self.nationality1.text = " "
                self.age1.text = " "
                self.email1.text = " "
                self.confirm.text = " "
            }
            
            let yesHandler = {
                (action: UIAlertAction) -> Void in
                self.confirm.text = "       Successfully saved"
                self.view.backgroundColor = UIColor.white
                
                let okHandler = {
                    (action: UIAlertAction) -> Void in
                }
                
                let alert = UIAlertController(title: "Thank You", message: "Details saved successfully", preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: okHandler))
                
                self.present(alert, animated: true, completion: nil)
                
            }
            
            let innerAlert = UIAlertController(title: "Confirm", message: "yes or no", preferredStyle: .alert)
            
            innerAlert.addAction(UIAlertAction(title: "Yes", style: .default, handler: yesHandler))
            
            innerAlert.addAction(UIAlertAction(title: "No", style: .default, handler: noHandler))
            
            self.present(innerAlert, animated: true, completion: nil)
        }
        
        let outerAlert1 = UIAlertController(title: "Please verify the details", message: "Age : \(age1.text!) \nNationality (Indian ?) : \(nationality1.text!) \nEmail: \(myEmail)", preferredStyle: .alert)
        
        outerAlert1.addAction(UIAlertAction(title: "Confirm ?", style: .cancel, handler: outerHandler))
        
        self.present(outerAlert1, animated: true, completion: nil)
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
