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
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    //MARK: - Actions
    @IBAction func saveButtonTapped(_ sender: UIBarButtonItem) {
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
