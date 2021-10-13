//
//  ViewController.swift
//  CustomView
//
//  Created by Field Employee on 10/12/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var segController : UISegmentedControl!
    @IBOutlet weak var datePic : UIDatePicker!
    @IBOutlet weak var imageHolder : UIImageView!
    @IBOutlet weak var dateLable : UILabel!
    @IBOutlet weak var slider : UISlider!
    @IBOutlet weak var sliderValue : UILabel!
    @IBOutlet weak var buttonItem : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   @IBAction func segControllerChange (_ sender:UISegmentedControl){
        
    switch segController.selectedSegmentIndex{
    case 0: print("Selected 1")
    case 1: print("Selected 2")
    default: break
    }
    
    
    
    }
    @IBAction func sliderValueChang(_ sender:UISlider){
        
        let currentValue = Float (sender.value)
        sliderValue.text = "\(currentValue)"
    }
    
    @IBAction func  datePicker (_ sender:Any){
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = DateFormatter.Style.short
        dateFormatter.timeStyle = DateFormatter.Style.short
        
        let startDate = dateFormatter.string (from: datePic.date)
        
        dateLable.text = startDate
    }
}

