//
//  DeviceScreen.swift
//  Saving1
//
//  Created by Malachai Jacobs on 5/2/22.
//

import UIKit

class DeviceScreen: UIViewController,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = deviceTable.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = name[indexPath.row]
       // cell.textLabel?.text = deviceNumber[indexPath.row]
        return cell
    }
    

    @IBOutlet weak var deviceTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        deviceNumber.append(numberDevices1)
        name.append(names1)
        
        print(numberDevices1)
        print(names1)
        deviceTable.dataSource = self
    

        // Do any additional setup after loading the view.
    }
    var deviceNumber:[String] = []
    var name:[String] = []
    
    var numberDevices1 = " "
    var names1 = " "

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
