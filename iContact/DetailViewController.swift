//
//  DetailViewController.swift
//  iContact
//
//  Created by Srini Motheram on 1/23/17.
//  Copyright © 2017 Srini Motheram. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var currentContactItem  :ContactItem?
    
    @IBOutlet var firstNameTextField :UITextField!
    @IBOutlet var lastNameTextField  :UITextField!


    override func viewDidLoad() {
        super.viewDidLoad()
        guard  let contactItem = currentContactItem else {
            self.navigationController!.popViewController(animated: true)
            return
        }
        firstNameTextField.text = contactItem.firstName
        lastNameTextField.text = contactItem.lastName

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

