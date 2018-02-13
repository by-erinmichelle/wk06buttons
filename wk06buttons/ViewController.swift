//
//  ViewController.swift
//  wk06buttons
//
//  Created by Erin Wiegman on 2/13/18.
//  Copyright © 2018 Erin Wiegman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var toggleFlag: Bool = true
    @IBOutlet weak var button: UIButton!
    
    
    @IBAction func buttonFun(_ sender: Any) {
        
        if (toggleFlag == true) {
            //change color on click
            button.tintColor = UIColor.init(named: "ok")
            //change image on click - use this for checked
            button.setBackgroundImage(UIImage(named: "user_group_man_woman"), for: .normal)
            toggleFlag = false
        } else {
            button.tintColor = UIColor.init(named: "wine")
            button.setBackgroundImage(UIImage(named: "people"), for: .normal)
            toggleFlag = true

        }
//       alert pops up on button click
        let myAlert = UIAlertController(title: "floor preference", message: "my floor is?", preferredStyle: .alert)
        myAlert.addAction(UIAlertAction(title: "carpet", style: .default, handler: nil))
        myAlert.addAction(UIAlertAction(title: "wood", style: .cancel, handler: nil))
        self.present(myAlert, animated: true)
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

