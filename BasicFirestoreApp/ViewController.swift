//
//  ViewController.swift
//  BasicFirestoreApp
//
//  Created by Larry Allen on 8/6/21.
//

import UIKit
import Firebase


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let db = Firestore.firestore()
        
        
        guard let path = Bundle.main.path(forResource: "patients", ofType: "json") else {return}
        //print(path ?? "Path not found")
        let url = URL(fileURLWithPath: path)
        do {
            let data = try Data(contentsOf: url)
            let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
            // print(json)
            
            guard let array = json as? [Any] else {return}
            
            for user in array {
                guard let userDict = user as? [String: Any] else {return}
                guard let firstName = userDict["firstName"] as? String else {return}
                guard let middle = userDict["middle"] as? String else {return}
                guard let lastName = userDict["lastName"] as? String else {return}
                guard let DOB = userDict["DOB"] as? String else {return}
                guard let streetAddress = userDict["streetAddress"] as? String else {return}
                guard let streetAddress2 = userDict["streetAddress2"] as? String else {return}
                guard let city = userDict["city"] as? String else {return}
                guard let state = userDict["state"] as? String else {return}
                guard let fullName = userDict["fullName"] as? String else {return}
                guard let status = userDict["status"] as? String else {return}
                
                
                
                    
                  //  db.collection("patients").addDocument(data: ["firstName":firstName, "middle":middle, "lastName":lastName, "DOB":DOB, "streetAddress":streetAddress, "streetAddress2":streetAddress2, "city":city, "state":state, "fullName":fullName, "status":status ])
                
                print("firstName: \(firstName)")
                print("middle: \(middle)")
                print("lastName: \(lastName)")
                print("DOB: \(DOB)")
                print("streetAddress: \(streetAddress)")
                print("streetAddress2: \(streetAddress2)")
                print("city: \(city)")
                print("state: \(state)")
                print("fullName: \(fullName)")
                print("status: \(status)")
            
                    
                
                
                
            }
        } catch {
            print(error)
        }

        
        /*
        db.collection("patients").getDocuments { (snapshot, error) in
            
            if error == nil && snapshot != nil {
                
                for document in snapshot!.documents {
                    
                    let documentData = document.data()
                    print("--------------------------------")
                    print("--------------------------------")
                    print("--------------------------------")
                    
                    print(documentData)
                    print("--------------------------------")
                    print("--------------------------------")
                    print("--------------------------------")
                    

                }
                
            }
        }
        */
        
       // db.collection("teamMembers").addDocument(data: ["name":"Albert Eistein", "DOB":"January 24, 1909", "street1":"123 Some Rd", "stree2":"Suite 456", "city":"Knoxville", "state":"TN", ])
 
 
    }


}

