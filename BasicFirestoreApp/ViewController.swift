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
        
        db.collection("teamMembers").getDocuments { (snapshot, error) in
            
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
        
       // db.collection("teamMembers").addDocument(data: ["name":"Albert Eistein", "DOB":"January 24, 1909", "street1":"123 Some Rd", "stree2":"Suite 456", "city":"Knoxville", "state":"TN", ])
    }


}

