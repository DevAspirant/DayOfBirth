//
//  ViewController.swift
//  DayOfBirth
//
//  Created by ammar falmban on 5/21/17.
//  Copyright © 2017 ammar falmban. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var IntroLabel:UILabel!
    @IBOutlet weak var DOBResult:UILabel!
    @IBOutlet weak var GetTheAgeButton:UIButton!
    @IBOutlet weak var DatePicker: UIDatePicker!
    
    
    
    @IBAction func GetTheAge(_ sender: Any) {
        
        let CurrentDate = Date()
        let UserDOB = DatePicker.date
        let calender = Calendar.current
        let component = calender.dateComponents([Calendar.Component.day], from: UserDOB,to:CurrentDate)
        
        // calculate 
        let years:Int = Int(component.day! / 365)
        let months:Int = Int(component.day! - (years*365))/30
        let days:Int = Int(component.day! - ((months*30) + (years*356)))
        DOBResult.text = "your age is \(years) month \(months) days \(days)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

