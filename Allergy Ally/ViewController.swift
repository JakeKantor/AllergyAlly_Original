//
//  ViewController.swift
//  Allergy Ally
//
//  Created by Jacob Kantor on 10/29/17.
//  Copyright © 2017 Gulliver Students. All rights reserved.
//


import UIKit
import MapKit

class ViewController:  UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    //Checkbox bottons
    @IBOutlet var PEANUT: UIControl!
    
    @IBOutlet var DAIRY: UIControl!
    
    @IBOutlet var WHEAT: UIControl!
    
    @IBOutlet var FISH: UIControl!
    
    @IBOutlet var SESAME: UIControl!
    
    @IBOutlet var TREENUTS: UIControl!
    
    @IBOutlet var EGGS: UIControl!
    
    @IBOutlet var GLUTEN: UIControl!
    
    @IBOutlet var SHELLFISH: UIControl!
    
    @IBOutlet var SOY: UIControl!
    
    
    @IBAction func peanutsButton(_ sender: Any) {
        print("peanuts worked")
        peanutsIsPressed = true;
    }
    
    @IBAction func treeNutsButton(_ sender: Any) {
        treeNutsIsPressed = true;
    }
    
    @IBAction func dairyButton(_ sender: Any) {
        dairyIsPressed = true;
    }
    
    @IBAction func eggsButton(_ sender: Any) {
        eggsIsPressed = true;
    }
    
    
    @IBAction func wheatButton(_ sender: Any) {
        wheatIsPressed = true;
    }
    
    @IBAction func glutenButton(_ sender: Any) {
        glutenIsPressed = true;
    }
    
    @IBAction func fishButton(_ sender: Any) {
        fishIsPressed = true;
    }
    
    @IBAction func shellfishButton(_ sender: Any) {
        shellfishIsPressed = true;
    }
    
    @IBAction func sesameButton(_ sender: Any) {
        sesameIsPressed = true;
    }
    
    @IBAction func soyButton(_ sender: Any) {
        soyIsPressed = true;
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
   
    //Mapkit view for Anthony Coal Fired Pizza
    
    //All the stuff for the dropdown text
    
    @IBOutlet var textbox1: UITextField!
    @IBOutlet var textbox2: UITextField!
    
    @IBOutlet var dropdown1: UIPickerView!
    @IBOutlet var dropdown2: UIPickerView!
    
    var peanutsIsPressed = false;
    var treeNutsIsPressed = false;
    var dairyIsPressed = false;
    var eggsIsPressed = false;
    var wheatIsPressed = false;
    var glutenIsPressed = false;
    var fishIsPressed = false;
    var shellfishIsPressed = false;
    var sesameIsPressed = false;
    var soyIsPressed = false;
    
    var cities = ["Miami","New York City","Washington D.C"]
    var cuisine = ["Chinese","Mexican","Italian","Indian","American"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        var countrows : Int = cities.count
        if pickerView == dropdown2 {
            
            countrows = self.cuisine.count
        }
        
        return countrows
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == dropdown1 {
            
            let titleRow = cities[row]
            
            return titleRow
            
        }
            
        else if pickerView == dropdown2{
            let titleRow = cuisine[row]
            
            return titleRow
        }
        
        return ""
    }
    
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == dropdown1 {
            self.textbox1.text = self.cities[row]
            self.dropdown1.isHidden = true
        }
            
        else if pickerView == dropdown2{
            self.textbox2.text = self.cuisine[row]
            self.dropdown2.isHidden = true
            
        }
    }
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if (textField == self.textbox1){
            self.dropdown1.isHidden = false
            
        }
        else if (textField == self.textbox2){
            self.dropdown2.isHidden = false
            
        }
        //Adjusts the checkboxes Width and their Height
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //Make Keybard disapear
        self.textbox1.delegate = self
        self.textbox2.delegate = self
        
        
        

    }
    
    
//    @IBAction func peanutsButton(_ sender: Any) {
//        peanutsIsPressed = true;
//
//    }
//
//    @IBAction func treeNutsButton(_ sender: Any) {
//        treeNutsIsPressed = true;
//
//    }
//
//    @IBAction func dairyButton(_ sender: Any) {
//        dairyIsPressed = true;
//    }
//
//    @IBAction func eggsButton(_ sender: Any) {
//        eggsIsPressed = true;
//    }
//
//    @IBAction func wheatButton(_ sender: Any) {
//        wheatIsPressed = true;
//    }
//
//    @IBAction func glutenButton(_ sender: Any) {
//        glutenIsPressed = true;
//    }
//
//    @IBAction func fishButton(_ sender: Any) {
//        fishIsPressed = true;
//    }
//
//    @IBAction func shellfishButton(_ sender: Any) {
//        shellfishIsPressed = true;
//    }
//
//    @IBAction func sesameButton(_ sender: Any) {
//        sesameIsPressed = true;
//    }
//
//    @IBAction func soyButton(_ sender: Any) {
//        soyIsPressed = true;
//    }
//
//
//
    
    
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //Hide keyboard when user touches
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

