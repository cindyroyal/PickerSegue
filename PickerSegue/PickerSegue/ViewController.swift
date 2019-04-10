//
//  ViewController.swift
//  PickerSegue
//
//  Created by Cindy Royal on 4/10/19.
//  Copyright © 2019 Cindy Royal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    
    
    @IBOutlet weak var picker: UIPickerView!
    
    // initialized selection as green, in case they don't pick something, but that is the default; or send a message that says to pick one.
    var selection:String! = "green"
    
    // Segues have to be created and named first from ViewController. From initial Storyboard VC, choose the VC button at the top and Ctrl-click from there to each other VC to make a segue (Show). Then click on the arrow it creates for the segues and go to Attributes Identifier and give names. My names are GreenSegue and BlueSegue
    
    // I set it up to pass the selection from the picker, then execute on this button. Allows the user to change their mind, rather than go straight from picker
    
    @IBAction func myButton(_ sender: Any) {
        if (selection == "green"){
            performSegue(withIdentifier: "GreenSegue", sender: self)
            
        }
        else if (selection == "blue"){
            performSegue(withIdentifier: "BlueSegue", sender: self)
        }
        
        
    }
    let items = ["green", "blue"]
    
    @IBOutlet weak var myLabel: UILabel!
    
    
    
    // four functions associated with pickerview
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return items.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return items[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selection = items[row]
        
        
        // or uncomment this section and remove button code above to get it to go automatically from picker
        /*
        if (selection == "green"){
            performSegue(withIdentifier: "GreenSegue", sender: self)
        }
         
        if (selection == "blue"){
            performSegue(withIdentifier: "BlueSegue", sender: self)
        }
     */
       
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
        picker.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }


}

