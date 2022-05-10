//
//  InventoryScreen.swift
//  Saving1
//
//  Created by Malachai Jacobs on 5/9/22.
//

import UIKit

class InventoryScreen: UIViewController {

    @IBOutlet weak var deviceLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var checkInButton: UIButton!
    var names2 = ""
    var devices2 = ""
    
    override func viewDidLoad() {
        deviceLabel.text = devices2
        numberLabel.text = names2
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func checkIn(_ sender: Any)
    {
        
    }
   
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


