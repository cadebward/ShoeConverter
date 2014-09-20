//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Cade on 9/10/14.
//  Copyright (c) 2014 Cade Ward. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtMenShoeSize: UITextField!
    
    @IBOutlet weak var lblConvertedShoeSize: UILabel!
    
    @IBOutlet weak var txtWomenShoeSize: UITextField!
    
    @IBOutlet weak var lblConvertedWomenShoeSize: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnConvert_TouchUpInside(sender: UIButton) {
        lblConvertedShoeSize.hidden = false
        lblConvertedShoeSize.text = "\(txtMenShoeSize.text.toInt()! + 30) in European Shoe Size"
    }

    @IBAction func btnConvertWomen_TouchUpInside(sender: AnyObject) {
        let sizeFromTextField = Double((txtWomenShoeSize.text as NSString).doubleValue)
        let conversionConstant = 30.5
        lblConvertedWomenShoeSize.hidden = false
        lblConvertedWomenShoeSize.text = "\(sizeFromTextField + conversionConstant) in European Shoe Size"
    }
}

