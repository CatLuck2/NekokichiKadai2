//
//  ViewController.swift
//  NekokichiKadai2
//
//  Created by Nekokichi on 2022/02/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak private var inputNumField1: UITextField!
    @IBOutlet weak private var inputNumField2: UITextField!
    @IBOutlet weak private var fourArithmeticOperationsSegment: UISegmentedControl!
    @IBOutlet weak private var calculatedResultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateButton(_ sender: UIButton) {
    }
    
}

