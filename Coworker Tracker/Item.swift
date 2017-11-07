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
    var phone: String
    var longitude: Int
    var latitude: Int
    
    init(firstName: String, lastName: String, company: String, position: String, phone: String, longitude: Int, latitude: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.company = company
        self.position = position
        self.phone = phone
        self.longitude = longitude
        self.latitude = latitude
        
        super.init()
    }
    
    convenience init(random: Bool = false) {
        if random {
            //define the random possibilities
            let firstNames = ["David", "Jonathan", "Michael", "Julio", "Peter", "Jacob", "Mark", "Emily", "Daniel", "Barbara"]
            let lastNames = ["Martin", "Vazquez", "Rodriguez", "Wilson", "Williams", "Peterson", "Brown", "Anderson"]
            let positions = ["Cashier", "CSR", "Manager", "Director", "Owner", "CEO", "Distributor", "Brand Ambassador"]
            let companies = ["Google", "Microsoft", "Walmart", "Target", "IBM", "Apple", "Barnes and Noble"]
            
            //generate random name
            let idxFirst = arc4random_uniform(UInt32(firstNames.count))
            let idxLast = arc4random_uniform(UInt32(lastNames.count))
            let randomFirstName = firstNames[Int(idxFirst)]
            let randomLastName = lastNames[Int(idxLast)]
            
            //generate random company
            let idxCompany = arc4random_uniform(UInt32(companies.count))
            let randomCompany = companies[Int(idxCompany)]
            
            //generate random position
            let idxPosition = arc4random_uniform(UInt32(positions.count))
            let randomPosition = positions[Int(idxPosition)]
            
            var randomPhone: String = ""
            
            //generate phone number
            for a in 1...10 {
                
                
                if (a == 1) {
                    randomPhone += "("
                }
                
                if (a == 4) {
                    randomPhone += ")"
                }
                
                if (a == 4 || a == 7) {
                    randomPhone += "-"
                }
                
                let a = arc4random_uniform(10)
                randomPhone += String(a)
                
            }
            
            //generate random GPS coordinates
            let randomLongitude = Int(arc4random_uniform(360)) - 180
            let randomLatitude = Int(arc4random_uniform(180)) - 90
            
            self.init(firstName: randomFirstName, lastName: randomLastName, company: randomCompany, position: randomPosition, phone: randomPhone, longitude: randomLongitude, latitude: randomLatitude)
        }
        else {
            self.init(firstName: "", lastName: "", company: "", position: "", phone: "", longitude: 0, latitude: 0)
        }
    }

}
