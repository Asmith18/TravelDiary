//
//  Log Controller.swift
//  TravelDiary
//
//  Created by adam smith on 1/20/22.
//

import Foundation

class LogController {
    //MARK: - Singleton
   static let sharedInstance = LogController()
    
    //MARK: - Source of Truth
    var logs: [Log] = []
    
    //MARK: - CRUD Functions
    
    func createLog(title: String, address: String, details: String) {
        let log = Log(logTitle: title, logAddress: address, logDetails: details)
        logs.append(log)
    }
    
    func updateLog(log: Log, title: String, address: String, details: String) {
        log.logTitle = title
        log.logAddress = address
        log.logDetails = details
    }
    
    func deleteLog(log: Log) {
        guard let index = logs.firstIndex(where: { $0 == log }) else { return }
        logs.remove(at: index)
    }
}// end of class
