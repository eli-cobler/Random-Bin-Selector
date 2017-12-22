//
//  SelectRandomBin.swift
//  Random Bin Selector
//
//  Created by Eli Cobler on 10/9/17.
//  Copyright © 2017 Eli Cobler. All rights reserved.
//
//  Provides 3 differnet bins/stock locations for the selected store
//  For each time you click the get bins buttons
//  

/* 41st iPhone and Samsung Bins
     iphone = A1A, A1C, A1E, A2A, A2C, A2E, A3A, A3C, A3E
     samsung = A5A-A5C
 */

import UIKit
import Firebase
import FirebaseDatabase
import GameKit

class SelectRandomBin: UIViewController {
    
    // Sets the stores array for this VC
    let stores = ["71st", "Jenks", "Broken Arrow", "Owasso", "Bixby", "Fort Smith", "Fayetteville", "Downtown", "Tahlequah", "41st", "21st", "test_store"]
    
    // Setting up database arrays to hold store bin data
    // Along with Database Handle and Reference
    var testStoreBins: [String] = []
    var default71stBins: [String] = []
    var default21stBins: [String] = []
    var default41stBins: [String] = []
    var jenksBins: [String] = []
    var brokenArrowBins: [String] = []
    var owassoBins: [String] = []
    var bixbyBins: [String] = []
    var fortSmithBins: [String] = []
    var fayettevilleBins: [String] = []
    var downtownBins: [String] = []
    var tahlequahBins: [String] = []
    
    var handle: UInt?
    var removalHandle: UInt?
    var ref: DatabaseReference?
    
    // Setting up Labels
    @IBOutlet weak var yourRandomBinsLabel: UILabel!
    @IBOutlet weak var randomBinLabel: UILabel!
    @IBOutlet weak var randomBinButtonLabel: UIButton!
    var passedData: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if FirebaseApp.app() == nil {
            FirebaseApp.configure()
        }
        
        ref = Database.database().reference()
        
        // Updating Bin Data for 41st_bins upon adding of bin
        handle = ref?.child("41st_bins").observe(.childAdded, with: { (snapshot) in
            
            if let item = snapshot.value as? String
            {
                self.default41stBins.append(item)
            }
        })
        
        // Updating Bin Data for 41st_bins upon removal of bin
        removalHandle = ref?.child("41st_bins").observe(.childRemoved, with: { (snapshot) in
            
            if let item = snapshot.value as? String
            {
                if let binIndex = self.default41stBins.index(of: item) {
                    self.default41stBins.remove(at: binIndex)
                }
            }
        })
        
        // Updating Bin Data for 21st_bins upon adding of bin
        handle = ref?.child("21st_bins").observe(.childAdded, with: { (snapshot) in
            
            if let item = snapshot.value as? String
            {
                self.default21stBins.append(item)
            }
        })
        
        // Updating Bin Data for 21st_bins upon removal of bin
        removalHandle = ref?.child("21st_bins").observe(.childRemoved, with: { (snapshot) in
            
            if let item = snapshot.value as? String
            {
                if let binIndex = self.default21stBins.index(of: item) {
                    self.default21stBins.remove(at: binIndex)
                }
            }
        })
        
        // Updating Bin Data for test_store upon adding of bin
        handle = ref?.child("test_store").observe(.childAdded, with: { (snapshot) in
            
            if let item = snapshot.value as? String
            {
                self.testStoreBins.append(item)
            }
        })
        
        // Updating Bin Data for test_store upon removal of bin
        removalHandle = ref?.child("test_store").observe(.childRemoved, with: { (snapshot) in
            
            if let item = snapshot.value as? String
            {
                if let binIndex = self.testStoreBins.index(of: item) {
                    self.testStoreBins.remove(at: binIndex)
                }
            }
        })
        
        // Updating Bin Data for 71st_bins upon adding of bin
        handle = ref?.child("71st_bins").observe(.childAdded, with: { (snapshot) in
            
            if let item = snapshot.value as? String
            {
                self.default71stBins.append(item)
            }
        })
        
        // Updating Bin Data for 71st_bins upon removal of bin
        removalHandle = ref?.child("71st_bins").observe(.childRemoved, with: { (snapshot) in
            
            if let item = snapshot.value as? String
            {
                if let binIndex = self.default71stBins.index(of: item) {
                    self.default71stBins.remove(at: binIndex)
                }
            }
        })
        
        // Updating Bin Data for bixby_bins upon adding of bin
        handle = ref?.child("bixby_bins").observe(.childAdded, with: { (snapshot) in
            
            if let item = snapshot.value as? String
            {
                self.bixbyBins.append(item)
            }
        })
        
        // Updating Bin Data for bixby_bins upon removal of bin
        removalHandle = ref?.child("bixby_bins").observe(.childRemoved, with: { (snapshot) in
            
            if let item = snapshot.value as? String
            {
                if let binIndex = self.bixbyBins.index(of: item) {
                    self.bixbyBins.remove(at: binIndex)
                }
            }
        })
        
        // Updating Bin Data for broken_arrow_bins upon adding of bin
        handle = ref?.child("broken_arrow_bins").observe(.childAdded, with: { (snapshot) in
            
            if let item = snapshot.value as? String
            {
                self.brokenArrowBins.append(item)
            }
        })
        
        // Updating Bin Data for broken_arrow_bins upon removal of bin
        removalHandle = ref?.child("broken_arrow_bins").observe(.childRemoved, with: { (snapshot) in
            
            if let item = snapshot.value as? String
            {
                if let binIndex = self.brokenArrowBins.index(of: item) {
                    self.brokenArrowBins.remove(at: binIndex)
                }
            }
        })
        
        // Updating Bin Data for downtown_bins upon adding of bin
        handle = ref?.child("downtown_bins").observe(.childAdded, with: { (snapshot) in
            
            if let item = snapshot.value as? String
            {
                self.downtownBins.append(item)
            }
        })
        
        // Updating Bin Data for downtown_bins upon removal of bin
        removalHandle = ref?.child("downtown_bins").observe(.childRemoved, with: { (snapshot) in
            
            if let item = snapshot.value as? String
            {
                if let binIndex = self.downtownBins.index(of: item) {
                    self.downtownBins.remove(at: binIndex)
                }
            }
        })
        
        // Updating Bin Data for fayetteville_bins upon adding of bin
        handle = ref?.child("fayetteville_bins").observe(.childAdded, with: { (snapshot) in
            
            if let item = snapshot.value as? String
            {
                self.fayettevilleBins.append(item)
            }
        })
        
        // Updating Bin Data for fayetteville_bins upon removal of bin
        removalHandle = ref?.child("fayetteville_bins").observe(.childRemoved, with: { (snapshot) in
            
            if let item = snapshot.value as? String
            {
                if let binIndex = self.fayettevilleBins.index(of: item) {
                    self.fayettevilleBins.remove(at: binIndex)
                }
            }
        })
        
        // Updating Bin Data for fort_smith_bins upon adding of bin
        handle = ref?.child("fort_smith_bins").observe(.childAdded, with: { (snapshot) in
            
            if let item = snapshot.value as? String
            {
                self.fortSmithBins.append(item)
            }
        })
        
        // Updating Bin Data for fort_smith_bins upon removal of bin
        removalHandle = ref?.child("fort_smith_bins").observe(.childRemoved, with: { (snapshot) in
            
            if let item = snapshot.value as? String
            {
                if let binIndex = self.fortSmithBins.index(of: item) {
                    self.fortSmithBins.remove(at: binIndex)
                }
            }
        })
        
        // Updating Bin Data for jenks_bins upon adding of bin
        handle = ref?.child("jenks_bins").observe(.childAdded, with: { (snapshot) in
            
            if let item = snapshot.value as? String
            {
                self.jenksBins.append(item)
            }
        })
        
        // Updating Bin Data for jenks_bins upon removal of bin
        removalHandle = ref?.child("jenks_bins").observe(.childRemoved, with: { (snapshot) in
            
            if let item = snapshot.value as? String
            {
                if let binIndex = self.jenksBins.index(of: item) {
                    self.jenksBins.remove(at: binIndex)
                }
            }
        })
        
        // Updating Bin Data for owasso_bins upon adding of bin
        handle = ref?.child("owasso_bins").observe(.childAdded, with: { (snapshot) in
            
            if let item = snapshot.value as? String
            {
                self.owassoBins.append(item)
            }
        })
        
        // Updating Bin Data for owasso_bins upon removal of bin
        removalHandle = ref?.child("owasso_bins").observe(.childRemoved, with: { (snapshot) in
            
            if let item = snapshot.value as? String
            {
                if let binIndex = self.owassoBins.index(of: item) {
                    self.owassoBins.remove(at: binIndex)
                }
            }
        })
        
        // Updating Bin Data for tahlequah_bins upon adding of bin
        handle = ref?.child("tahlequah_bins").observe(.childAdded, with: { (snapshot) in
            
            if let item = snapshot.value as? String
            {
                self.tahlequahBins.append(item)
            }
        })
        
        // Updating Bin Data for tahlequah_bins upon removal of bin
        removalHandle = ref?.child("tahlequah_bins").observe(.childRemoved, with: { (snapshot) in
            
            if let item = snapshot.value as? String
            {
                if let binIndex = self.tahlequahBins.index(of: item) {
                    self.tahlequahBins.remove(at: binIndex)
                }
            }
        })
        
    }
    
    @IBAction func swipeBacktoSelectStoreVC(_ sender: Any) {
        performSegue(withIdentifier: "backToSelectStoreVC", sender: (Any).self)
    }
    
    @IBAction func selectRandomBinButton() {
        
        switch passedData {
        
        case stores[0]:
            //print("Your selected store is 71st")
            yourRandomBinsLabel.text = "Your Random Bins are..."
            
            func randomBin() -> String {
                let randomBin = GKRandomSource.sharedRandom().nextInt(upperBound: default71stBins.count)
                return default71stBins[randomBin]
            }
            
            let randomBin1 = randomBin()
            let randomBin2 = randomBin()
            let randomBin3 = randomBin()
            
            randomBinLabel.text = "\(randomBin1), \(randomBin2), \(randomBin3)"
            
            let randomColorProvider = BackgroundColorProvider()
            let randomColor = randomColorProvider.randomColor()
            view.backgroundColor = randomColor
            randomBinButtonLabel.tintColor = randomColor
            
        case stores[1]:
            //print("Your selected store is Jenks")
            yourRandomBinsLabel.text = "Your Random Bins are..."
            
            func randomBin() -> String {
                let randomBin = GKRandomSource.sharedRandom().nextInt(upperBound: jenksBins.count)
                return jenksBins[randomBin]
            }
            
            let randomBin1 = randomBin()
            let randomBin2 = randomBin()
            let randomBin3 = randomBin()
            
            randomBinLabel.text = "\(randomBin1), \(randomBin2), \(randomBin3)"
            
            let randomColorProvider = BackgroundColorProvider()
            let randomColor = randomColorProvider.randomColor()
            view.backgroundColor = randomColor
            randomBinButtonLabel.tintColor = randomColor
            
        case stores[2]:
            //print("Your selected store is BA")
            yourRandomBinsLabel.text = "Your Random Bins are..."
            
            func randomBin() -> String {
                let randomBin = GKRandomSource.sharedRandom().nextInt(upperBound: brokenArrowBins.count)
                return brokenArrowBins[randomBin]
            }
            
            let randomBin1 = randomBin()
            let randomBin2 = randomBin()
            let randomBin3 = randomBin()
            
            randomBinLabel.text = "\(randomBin1), \(randomBin2), \(randomBin3)"
            
            let randomColorProvider = BackgroundColorProvider()
            let randomColor = randomColorProvider.randomColor()
            view.backgroundColor = randomColor
            randomBinButtonLabel.tintColor = randomColor
            
        case stores[3]:
            //print("Your selected store is Owasso")
            yourRandomBinsLabel.text = "Your Random Bins are..."
            
            func randomBin() -> String {
                let randomBin = GKRandomSource.sharedRandom().nextInt(upperBound: owassoBins.count)
                return owassoBins[randomBin]
            }
            
            let randomBin1 = randomBin()
            let randomBin2 = randomBin()
            let randomBin3 = randomBin()
            
            randomBinLabel.text = "\(randomBin1), \(randomBin2), \(randomBin3)"
            
            let randomColorProvider = BackgroundColorProvider()
            let randomColor = randomColorProvider.randomColor()
            view.backgroundColor = randomColor
            randomBinButtonLabel.tintColor = randomColor
            
        case stores[4]:
            //print("Your selected store is Bixby")
            yourRandomBinsLabel.text = "Your Random Bins are..."
            
            func randomBin() -> String {
                let randomBin = GKRandomSource.sharedRandom().nextInt(upperBound: bixbyBins.count)
                return bixbyBins[randomBin]
            }
            
            let randomBin1 = randomBin()
            let randomBin2 = randomBin()
            let randomBin3 = randomBin()
            
            randomBinLabel.text = "\(randomBin1), \(randomBin2), \(randomBin3)"
            
            let randomColorProvider = BackgroundColorProvider()
            let randomColor = randomColorProvider.randomColor()
            view.backgroundColor = randomColor
            randomBinButtonLabel.tintColor = randomColor
            
        case stores[5]:
            //print("Your selected store is Fort Smith")
            yourRandomBinsLabel.text = "Your Random Bins are..."
            
            func randomBin() -> String {
                let randomBin = GKRandomSource.sharedRandom().nextInt(upperBound: fortSmithBins.count)
                return fortSmithBins[randomBin]
            }
            
            let randomBin1 = randomBin()
            let randomBin2 = randomBin()
            let randomBin3 = randomBin()
            
            randomBinLabel.text = "\(randomBin1), \(randomBin2), \(randomBin3)"
            
            let randomColorProvider = BackgroundColorProvider()
            let randomColor = randomColorProvider.randomColor()
            view.backgroundColor = randomColor
            randomBinButtonLabel.tintColor = randomColor
            
        case stores[6]:
            //print("Your selected store is Fayetteville")
            yourRandomBinsLabel.text = "Your Random Bins are..."
            
            func randomBin() -> String {
                let randomBin = GKRandomSource.sharedRandom().nextInt(upperBound: fayettevilleBins.count)
                return fayettevilleBins[randomBin]
            }
            
            let randomBin1 = randomBin()
            let randomBin2 = randomBin()
            let randomBin3 = randomBin()
            
            randomBinLabel.text = "\(randomBin1), \(randomBin2), \(randomBin3)"
            
            let randomColorProvider = BackgroundColorProvider()
            let randomColor = randomColorProvider.randomColor()
            view.backgroundColor = randomColor
            randomBinButtonLabel.tintColor = randomColor
            
        case stores[7]:
            //print("Your selected store is Downtown")
            yourRandomBinsLabel.text = "Your Random Bins are..."
            
            func randomBin() -> String {
                let randomBin = GKRandomSource.sharedRandom().nextInt(upperBound: downtownBins.count)
                return downtownBins[randomBin]
            }
            
            let randomBin1 = randomBin()
            let randomBin2 = randomBin()
            let randomBin3 = randomBin()
            
            randomBinLabel.text = "\(randomBin1), \(randomBin2), \(randomBin3)"
            
            let randomColorProvider = BackgroundColorProvider()
            let randomColor = randomColorProvider.randomColor()
            view.backgroundColor = randomColor
            randomBinButtonLabel.tintColor = randomColor
            
        case stores[8]:
            //print("Your selected store is Tahlequah")
            yourRandomBinsLabel.text = "Your Random Bins are..."
            
            func randomBin() -> String {
                let randomBin = GKRandomSource.sharedRandom().nextInt(upperBound: tahlequahBins.count)
                return tahlequahBins[randomBin]
            }
            
            let randomBin1 = randomBin()
            let randomBin2 = randomBin()
            let randomBin3 = randomBin()
            
            randomBinLabel.text = "\(randomBin1), \(randomBin2), \(randomBin3)"
            
            let randomColorProvider = BackgroundColorProvider()
            let randomColor = randomColorProvider.randomColor()
            view.backgroundColor = randomColor
            randomBinButtonLabel.tintColor = randomColor
            
        case stores[9]:
            //print("Your selected store is Tahlequah")
            yourRandomBinsLabel.text = "Your Random Bins are..."
            
            func randomBin() -> String {
                let randomBin = GKRandomSource.sharedRandom().nextInt(upperBound: default41stBins.count)
                return default41stBins[randomBin]
            }
            
            let randomBin1 = randomBin()
            let randomBin2 = randomBin()
            let randomBin3 = randomBin()
            
            randomBinLabel.text = "\(randomBin1), \(randomBin2), \(randomBin3)"
            
            let randomColorProvider = BackgroundColorProvider()
            let randomColor = randomColorProvider.randomColor()
            view.backgroundColor = randomColor
            randomBinButtonLabel.tintColor = randomColor
            
        case stores[10]:
            //print("Your selected store is 21st")
            yourRandomBinsLabel.text = "Your Random Bins are..."
            
            func randomBin() -> String {
                let randomBin = GKRandomSource.sharedRandom().nextInt(upperBound: default21stBins.count)
                return default21stBins[randomBin]
            }
            
            let randomBin1 = randomBin()
            let randomBin2 = randomBin()
            let randomBin3 = randomBin()
            
            randomBinLabel.text = "\(randomBin1), \(randomBin2), \(randomBin3)"
            
            let randomColorProvider = BackgroundColorProvider()
            let randomColor = randomColorProvider.randomColor()
            view.backgroundColor = randomColor
            randomBinButtonLabel.tintColor = randomColor
            
        case stores[11]:
            //print("This is the test_store")
            yourRandomBinsLabel.text = "Your Random Bins are..."
            
            func randomBin() -> String {
                let randomBin = GKRandomSource.sharedRandom().nextInt(upperBound: testStoreBins.count)
                return testStoreBins[randomBin]
            }
            
            let randomBin1 = randomBin()
            let randomBin2 = randomBin()
            let randomBin3 = randomBin()
            
            randomBinLabel.text = "\(randomBin1), \(randomBin2), \(randomBin3)"

        default:
            print("No Store was selected")
            
        }
    }
    
    func promptForBin() {
        let addBinsAlert = UIAlertController(title: "Enter Bin", message: "Please enter Bin Location into the text field. Then select to Add or Remove the bin from the database." , preferredStyle: .alert)
        
        addBinsAlert.addTextField { (textField) in
            
            textField.placeholder = "Please Enter 1 Bin at a Time."
        }
    
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        
        let deleteAction = UIAlertAction(title: "Delete Bin", style: .destructive) { [unowned addBinsAlert] _ in
            let answer = addBinsAlert.textFields![0]
            
            // Do something interesting with "answer" here
            self.removeBinFromTable(store: self.passedData, bin: answer.text as Any as! String)
        }
        
        let submitAction = UIAlertAction(title: "Submit Bin", style: .default) { [unowned addBinsAlert] _ in
            let answer = addBinsAlert.textFields![0]
            
            // do something interesting with "answer" here
            self.addBinToTable(store: self.passedData, bin: answer.text as Any as! String)
        }
        
        addBinsAlert.addAction(cancelAction)
        addBinsAlert.addAction(submitAction)
        addBinsAlert.addAction(deleteAction)
        
        present(addBinsAlert, animated: true)
    }
    
    func removeBinFromTable(store: String, bin: String) {
        //print("You selected \(store)")
        ref = Database.database().reference()
        let updatedBin = bin.uppercased().trimmingCharacters(in: .whitespacesAndNewlines)
        
        switch store {
        
        case stores[0]:
            //print("This is 71st")
            
            if bin != "" {
                let query = ref?.child("71st_bins").queryOrderedByValue().queryEqual(toValue: updatedBin)
                query?.observeSingleEvent(of: .value, with: {(snapshot) in
                    if let keyValuePair = snapshot.value as? [String: AnyObject] {
                        for (key, value) in keyValuePair {
                            if value as! String == updatedBin {
                                self.ref?.child("71st_bins").child(key).removeValue()
                                //print(key)
                            }
                        }
                    }
                })
            }
        case stores[1]:
            //print("This is Jenks")
            
            if bin != "" {
                let query = ref?.child("jenks_bins").queryOrderedByValue().queryEqual(toValue: updatedBin)
                query?.observeSingleEvent(of: .value, with: {(snapshot) in
                    if let keyValuePair = snapshot.value as? [String: AnyObject] {
                        for (key, value) in keyValuePair {
                            if value as! String == updatedBin {
                                self.ref?.child("jenks_bins").child(key).removeValue()
                                //print(key)
                            }
                        }
                    }
                })
            }
        case stores[2]:
            //print("This is Broken Arrow")
            
            if bin != "" {
                let query = ref?.child("broken_arrow_bins").queryOrderedByValue().queryEqual(toValue: updatedBin)
                query?.observeSingleEvent(of: .value, with: {(snapshot) in
                    if let keyValuePair = snapshot.value as? [String: AnyObject] {
                        for (key, value) in keyValuePair {
                            if value as! String == updatedBin {
                                self.ref?.child("broken_arrow_bins").child(key).removeValue()
                                //print(key)
                            }
                        }
                    }
                })
            }
        case stores[3]:
            //print("This is Owasso")
            
            if bin != "" {
                let query = ref?.child("owasso_bins").queryOrderedByValue().queryEqual(toValue: updatedBin)
                query?.observeSingleEvent(of: .value, with: {(snapshot) in
                    if let keyValuePair = snapshot.value as? [String: AnyObject] {
                        for (key, value) in keyValuePair {
                            if value as! String == updatedBin {
                                self.ref?.child("owasso_bins").child(key).removeValue()
                                //print(key)
                            }
                        }
                    }
                })
            }
        case stores[4]:
            //print("This is Bixby")
            
            if bin != "" {
                let query = ref?.child("bixby_bins").queryOrderedByValue().queryEqual(toValue: updatedBin)
                query?.observeSingleEvent(of: .value, with: {(snapshot) in
                    if let keyValuePair = snapshot.value as? [String: AnyObject] {
                        for (key, value) in keyValuePair {
                            if value as! String == updatedBin {
                                self.ref?.child("bixby_bins").child(key).removeValue()
                                //print(key)
                            }
                        }
                    }
                })
            }
        case stores[5]:
            //print("This is Fort Smith")
            
            if bin != "" {
                let query = ref?.child("fort_smith_bins").queryOrderedByValue().queryEqual(toValue: updatedBin)
                query?.observeSingleEvent(of: .value, with: {(snapshot) in
                    if let keyValuePair = snapshot.value as? [String: AnyObject] {
                        for (key, value) in keyValuePair {
                            if value as! String == updatedBin {
                                self.ref?.child("fort_smith_bins").child(key).removeValue()
                                //print(key)
                            }
                        }
                    }
                })
            }
        case stores[6]:
            //print("This is Fayetteville")
            
            if bin != "" {
                let query = ref?.child("fayetteville_bins").queryOrderedByValue().queryEqual(toValue: updatedBin)
                query?.observeSingleEvent(of: .value, with: {(snapshot) in
                    if let keyValuePair = snapshot.value as? [String: AnyObject] {
                        for (key, value) in keyValuePair {
                            if value as! String == updatedBin {
                                self.ref?.child("fayetteville_bins").child(key).removeValue()
                                //print(key)
                            }
                        }
                    }
                })
            }
        case stores[7]:
            //print("This is Downtown")
            
            if bin != "" {
                let query = ref?.child("downtown_bins").queryOrderedByValue().queryEqual(toValue: updatedBin)
                query?.observeSingleEvent(of: .value, with: {(snapshot) in
                    if let keyValuePair = snapshot.value as? [String: AnyObject] {
                        for (key, value) in keyValuePair {
                            if value as! String == updatedBin {
                                self.ref?.child("downtown_bins").child(key).removeValue()
                                //print(key)
                            }
                        }
                    }
                })
            }
        case stores[8]:
            //print("This is Tahlequah")
            
            if bin != "" {
                let query = ref?.child("tahlequah_bins").queryOrderedByValue().queryEqual(toValue: updatedBin)
                query?.observeSingleEvent(of: .value, with: {(snapshot) in
                    if let keyValuePair = snapshot.value as? [String: AnyObject] {
                        for (key, value) in keyValuePair {
                            if value as! String == updatedBin {
                                self.ref?.child("tahlequah_bins").child(key).removeValue()
                                //print(key)
                            }
                        }
                    }
                })
            }
        case stores[9]:
            //print("This is 41st")
            
            if bin != "" {
                let query = ref?.child("41st_bins").queryOrderedByValue().queryEqual(toValue: updatedBin)
                query?.observeSingleEvent(of: .value, with: {(snapshot) in
                    if let keyValuePair = snapshot.value as? [String: AnyObject] {
                        for (key, value) in keyValuePair {
                            if value as! String == updatedBin {
                                self.ref?.child("41st_bins").child(key).removeValue()
                                //print(key)
                            }
                        }
                    }
                })
            }
        case stores[10]:
            //print("This is 21st")
            
            if bin != "" {
                let query = ref?.child("21st_bins").queryOrderedByValue().queryEqual(toValue: updatedBin)
                query?.observeSingleEvent(of: .value, with: {(snapshot) in
                    if let keyValuePair = snapshot.value as? [String: AnyObject] {
                        for (key, value) in keyValuePair {
                            if value as! String == updatedBin {
                                self.ref?.child("21st_bins").child(key).removeValue()
                                //print(key)
                            }
                        }
                    }
                })
            }
        case stores[11]:
            //print("This is test_store")
            
            if bin != "" {
                let query = ref?.child("test_store").queryOrderedByValue().queryEqual(toValue: updatedBin)
                query?.observeSingleEvent(of: .value, with: {(snapshot) in
                    if let keyValuePair = snapshot.value as? [String: AnyObject] {
                        for (key, value) in keyValuePair {
                            if value as! String == updatedBin {
                                self.ref?.child("test_store").child(key).removeValue()
                                //print(key)
                            }
                        }
                    }
                })
            }
            
        default:
            print("No Store was selected")
            
        }
    }
    
    func addBinToTable(store: String, bin: String) {
        //print("You selected \(store)")
        
        ref = Database.database().reference()
        let updatedBin = bin.uppercased().trimmingCharacters(in: .whitespacesAndNewlines)
        
        switch store {
            
        case stores[0]:
            
            // Saving item to database
            if bin != "" {
                ref?.child("71st_bins").childByAutoId().setValue(updatedBin)
            }
        
        case stores[1]:
            
            // Saving item to database
            if bin != "" {
                ref?.child("jenks_bins").childByAutoId().setValue(updatedBin)
            }
            
        case stores[2]:
            
            // Saving item to database
            if bin != "" {
                ref?.child("broken_arrow_bins").childByAutoId().setValue(updatedBin)
            }
            
        case stores[3]:
            
            // Saving item to database
            if bin != "" {
                ref?.child("owasso_bins").childByAutoId().setValue(updatedBin)
            }
            
        case stores[4]:
            
            // Saving item to database
            if bin != "" {
                ref?.child("bixby_bins").childByAutoId().setValue(updatedBin)
            }

        case stores[5]:
            
            // Saving item to database
            if bin != "" {
                ref?.child("fort_smith_bins").childByAutoId().setValue(updatedBin)
            }
            
        case stores[6]:
            
            // Saving item to database
            if bin != "" {
                ref?.child("fayetteville_bins").childByAutoId().setValue(updatedBin)
            }

        case stores[7]:
            
            // Saving item to database
            if bin != "" {
                ref?.child("downtown_bins").childByAutoId().setValue(updatedBin)
            }
            
        case stores[8]:
            
            // Saving item to database
            if bin != "" {
                ref?.child("tahlequah_bins").childByAutoId().setValue(updatedBin)
            }
            
        case stores[9]:
            
            // Saving item to database
            if bin != "" {
                ref?.child("41st_bins").childByAutoId().setValue(updatedBin)
            }
            
        case stores[10]:
            
            // Saving item to database
            if bin != "" {
                ref?.child("21st_bins").childByAutoId().setValue(updatedBin)
            }
            
        case stores[11]:
            
            // Saving item to database
            if bin != "" {
                ref?.child("test_store").childByAutoId().setValue(updatedBin)
            }
        
        default:
            print("No Store was Selected")
        }
    }
        
    
    @IBAction func addBinButton() {
        promptForBin()
    }
    
}
