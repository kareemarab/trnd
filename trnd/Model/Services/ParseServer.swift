//
//  ParseDataService.swift
//  gift
//
//  Created by Kareem Arab on 2018-02-03.
//  Copyright © 2018 Kareem Arab. All rights reserved.
//

import Foundation
import Parse

struct ParseServer {
    
    // MARK: - Properties
    static let singleInstance = ParseServer()
    
    // MARK: - Initializer
    fileprivate init() {}
    
    // MARK: - Methods
    
    // Initialize and configure Parse server
    func initializeParseServer() {
        let configuration = ParseClientConfiguration { (ParseMutableClientConfiguration) in
            ParseMutableClientConfiguration.applicationId = ""
            ParseMutableClientConfiguration.clientKey = ""
            ParseMutableClientConfiguration.server = ""
        }
        Parse.initialize(with: configuration)
    }
}
