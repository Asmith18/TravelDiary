//
//  log.swift
//  TravelDiary
//
//  Created by adam smith on 1/20/22.
//

import Foundation

class Log {
    
    
    //MARK: - Properties
    var logTitle: String
    var logAddress: String
    var logDate: Date
    var logDetails: String

    //MARK: - Initializers
    internal init(logTitle: String, logAddress: String, logDate: Date = Date(), logDetails: String) {
        // we need to assign the properties of the log class wiht the values passed in from the parameters.
        self.logTitle = logTitle
        self.logAddress = logAddress
        self.logDate = logDate
        self.logDetails = logDetails
//    init(title: String, address: String, logDate: Date = Date(), details: String) {
//        self.logTitle = title
//        self.logAddress = address
//        self.logDate = logDate
//        self.logDetails = details
//    }
    }
}

extension Log: Equatable {
    static func == (lhs: Log, rhs: Log) -> Bool {
        lhs.logTitle == rhs.logTitle &&
        lhs.logAddress == rhs.logAddress &&
        lhs.logDetails == rhs.logDetails
    }
}
