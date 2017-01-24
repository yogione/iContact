//
//  ViewController.swift
//  iContact
//
//  Created by Srini Motheram on 1/23/17.
//  Copyright © 2017 Srini Motheram. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var contactArray = [ContactItem]()
    @IBOutlet var contactTableView  :UITableView!
    
    //MARK: - Interactivity methods
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! DetailViewController
        let indexPath = contactTableView.indexPathForSelectedRow!
        let currentContactItem = contactArray[indexPath.row]
        destinationVC.currentContactItem = currentContactItem
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contactArray = fillArray()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    //MARK: - setup METHODS
    func fillArray() -> [ContactItem]{
        
        let contact3 = ContactItem(fname: "Bill", lname: "Gates", phNumber: "1234567893", emailAdd: "billgates@gmail.com")
        let contact4 = ContactItem(fname: "Joe", lname: "Williams", phNumber: "1234567894", emailAdd: "johndoe@gmail.com")
        let contact5 = ContactItem(fname: "Taylor", lname: "Swift", phNumber: "1234567890", emailAdd: "taylorswift@gmail.com")
        let contact6 = ContactItem(fname: "Srini", lname: "Motheram", phNumber: "1234567890", emailAdd: "srinim@gmail.com")
        let contact2 = ContactItem(fname: "Steve", lname: "Jobs", phNumber: "1234567892", emailAdd: "stevejobs@gmail.com")
        
        return [contact2, contact3, contact4, contact5, contact6]
    }



}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath) as! ContactTableViewCell
        let currentContactItem = contactArray[indexPath.row]
        cell.firstNameLabel.text = currentContactItem.firstName
        cell.lastNameLabel.text = currentContactItem.lastName
        cell.phoneNumberLabel.text = currentContactItem.phoneNumber
        cell.emailAddressLabel.text = currentContactItem.emailAddress
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let currentContactItem = contactArray[indexPath.row]
        print("Row: \(indexPath.row) \(currentContactItem.firstName)")
    }
    
}


