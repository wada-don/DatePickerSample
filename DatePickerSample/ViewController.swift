//
//  ViewController.swift
//  DatePickerSample
//
//  Created by Ryusei Wada on 2019/02/13.
//  Copyright © 2019 Ryusei Wada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var datePicker: UIDatePicker!
    @IBOutlet var dateLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePicker.datePickerMode = UIDatePicker.Mode.date
        datePicker.timeZone = NSTimeZone.local
        datePicker.locale = NSLocale.current
    }
    
    @IBAction func calc(){
        let dateOperator: DateOperator = DateOperator()
        let date: Date = datePicker.date
        
        let reminder = dateOperator.calcDateRemainder(firstDate: date)
        dateLabel.text = "\(reminder)"
    }


}

