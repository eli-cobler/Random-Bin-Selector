//
//  SelectStoreVC.swift
//  Random Bin Selector
//
//  Created by Eli Cobler on 10/9/17.
//  Copyright © 2017 Eli Cobler. All rights reserved.
//

import UIKit

class SelectStoreVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var storePicker: UIPickerView!
    
    let stores = ["71st", "Jenks", "Broken Arrow", "Owasso", "Bixby", "Fort Smith", "Fayetteville", "Downtown", "Tahlequah", "41st", "21st", "test_store"]
    var storeSelection: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        storePicker.delegate = self
        storePicker.dataSource = self
        
        storeSelection = stores[0] // setting the default value
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return stores[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return stores.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        storeSelection = stores[row]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendToSelectRandomBin" {
            let destVC = segue.destination as! SelectRandomBin
            let selectedStore = storeSelection
            destVC.passedData = selectedStore
        }
    }
    
    @IBAction func selectStoreButton(_ sender: Any) {
        //let selectedStore = storeSelection
        performSegue(withIdentifier: "sendToSelectRandomBin", sender: sender)
   }
    
}




