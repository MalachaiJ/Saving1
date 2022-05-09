//
//  ViewController.swift
//  Saving1
//  Created by Malachai Jacobs on 5/2/22.
//


import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var dateAndTime: UITextField!
    let datePicker = UIDatePicker()
    
    
    @IBOutlet weak var numberedDevice: UITextField!
    
    @IBOutlet weak var nameText: UITextField!
    
    override func viewDidLoad()
    {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        createDatePickerView()
    }
    
    func createDatePickerView ()
    {
        //center text
        dateAndTime.textAlignment = .center
        
//tool bar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        //bar button
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: nil)
        
        toolbar.setItems([doneButton], animated: true)
        //assign tool bar
        dateAndTime.inputAccessoryView = toolbar
        
        
        //assign date picker to the text field
        dateAndTime.inputView = datePicker
        // date picker mode
        datePicker.datePickerMode = .dateAndTime
    }
        @objc func donePressed ()
        {
            //formatter
            let formatter = DateFormatter()
            formatter.dateStyle = .medium
            formatter.timeStyle = .none
            
            dateAndTime.text = formatter.string(from: datePicker.date)
            self.view.endEditing(true)
            
}
    //transfer to next screen
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        var numbers = numberedDevice.text ?? ""
        var names = nameText.text ?? ""
        
        
        let nextViewController = segue.destination as! DeviceScreen
        if segue.identifier == "mySegue"
        {
            nextViewController.numberDevices1 = numbers
            nextViewController.names1 = names
        }
        
        
}


}
