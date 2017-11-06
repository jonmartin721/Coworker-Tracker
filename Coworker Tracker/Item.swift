//
//  Item.swift
//  Coworker Tracker
//
//  Created by Jonathan Martin on 11/6/17.


import UIKit

class Item: NSObject{
    var firstName: String
    var lastName: String
    var company: String
    var position: String
    let phone: Int
    
    init(firstName: String, lastName: String, company: String, position: String, phone: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.company = company
        self.position = position
        self.phone = phone
        
        super.init()
    }
    
    convenience init(random: Bool = false) {
        if random {
            //define the random possibilities
            let firstNames = ["David", "Jonathan", "Michael", "Julio", "Peter"]
            let lastNames = ["Martin", "Vazquez", "Rodriguez", "Wilson", "Williams"]
            let positions = ["Cashier", "CSR", "Manager", "Director", "Owner", "CEO"]
            let companies = ["Google", "Microsoft", "Walmart", "Target", "IBM"]
            
            
            let idxFirst = arc4random_uniform(UInt32(firstNames.count))
            let idxLast = arc4random_uniform(UInt32(lastNames.count))
            let randomFirstName = firstNames[Int(idxFirst)]
            let randomLastName = lastNames[Int(idxLast)]
            
            let idxCompany = arc4random_uniform(UInt32(companies.count))
            let randomCompany = positions[Int(idxCompany)]
            
            let idxPosition = arc4random_uniform(UInt32(positions.count))
            let randomPosition = positions[Int(idxPosition)]
            
            let randomPhone = Int(arc4random_uniform(100000))
            
            self.init(firstName: randomFirstName, lastName: randomLastName, company: randomCompany, position: randomPosition, phone: randomPhone)
        }
        else {
            self.init(firstName: "", lastName: "", company: "", position: "", phone: 0)
        }
    }

}
