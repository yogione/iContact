//
//  ContactItem.swift
//  iContact
//
//  Created by Srini Motheram on 1/23/17.
//  Copyright © 2017 Srini Motheram. All rights reserved.
//

import UIKit

class ContactItem: NSObject {
    var firstName       :String!
    var lastName        :String!
    var phoneNumber     :String!
    var emailAddress    :String!
    
    var formattedFirstNameLastName :String {
        return "\(firstName)" + " " + "\(lastName)"
    }
    
    var formattedLastNameFirstName :String {
        return "\(lastName)" + "," + " " + "\(firstName)"
    }
    
    init(fname: String, lname: String, phNumber: String, emailAdd: String) {
        self.firstName = fname
        self.lastName = lname
        self.phoneNumber = phNumber
        self.emailAddress = emailAdd
        
    }

}
