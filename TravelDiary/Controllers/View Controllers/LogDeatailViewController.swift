//
//  LogDeatailViewController.swift
//  TravelDiary
//
//  Created by adam smith on 1/20/22.
//

import UIKit

class LogDeatailViewController: UIViewController {
    //MARK: - Outlets
    @IBOutlet weak var logTitleTextField: UITextField!
    @IBOutlet weak var logAddressTextField: UITextField!
    @IBOutlet weak var logDateLabel: UILabel!
    @IBOutlet weak var logDescriptionTextField: UITextView!
// receiver
    var log: Log?
    
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    func updateViews() {
        guard let log = log else {return}
        logTitleTextField.text = log.logTitle
        logAddressTextField.text = log.logAddress
        logDescriptionTextField.text = log.logDetails
        logDateLabel.text = log.logDate.stringValue()
    }
    //MARK: - Actions
    @IBAction func saveButtonTapped(_ sender: UIBarButtonItem) {
        guard let title = logTitleTextField.text, let address = logAddressTextField.text, let details = logDescriptionTextField.text else {return}
        
        if let log = log {
            //has a value - update
            LogController.sharedInstance.updateLog(log: log, title: title, address: address, details: details)
        } else {
            // no value - create
            LogController.sharedInstance.createLog(title: title, address: address, details: details)
        }
        navigationController?.popViewController(animated: true)

        

    }
} // end of class
