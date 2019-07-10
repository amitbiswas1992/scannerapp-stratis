//
//  PackageModel.swift
//  nativescannerapp
//
//  Created by User on 08/07/2019.
//  Copyright © 2019 Amit Biswas. All rights reserved.
//

import Foundation

struct PackageModel {
    private(set) public var email: String
    private(set) public var packageName: String
    
    init(email: String,packageName: String) {
        self.email = email
        self.packageName = packageName
    }
    
    
}


