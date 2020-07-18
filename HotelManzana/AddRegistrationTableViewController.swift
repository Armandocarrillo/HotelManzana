//
//  AddRegistrationTableViewController.swift
//  HotelManzana
//
//  Created by Armando Carrillo on 17/07/20.
//  Copyright © 2020 Armando Carrillo. All rights reserved.
//

import UIKit

class AddRegistrationTableViewController: UITableViewController {
    //client
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    //dates
    @IBOutlet weak var checkInDateLabel: UILabel!
    @IBOutlet weak var checkOutLabel: UILabel!
    @IBOutlet weak var checkInDatePicker: UIDatePicker!
    @IBOutlet weak var checkOutDatePicker: UIDatePicker!
 
    
    func updateDateViews(){
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        checkInDateLabel.text = dateFormatter.string(from: checkInDatePicker.date)
        checkOutLabel.text = dateFormatter.string(from: checkOutDatePicker.date)
        
    }
    //When one date picker is shown, any others collapse
    let checkInDatePickerCellIndexPath = IndexPath(row: 1, section: 1)
    let checkOutDatePickerCellIndexPath = IndexPath(row: 3, section: 1)
    
    var isCheckInDatePickerShown: Bool = false{
        didSet{
            checkInDatePicker.isHidden = !isCheckInDatePickerShown
        }
    }
    
    var isCheckOutDatePickerShown: Bool = false{
        didSet{
            checkOutDatePicker.isHidden = !isCheckOutDatePickerShown
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDateViews()
        
        let midnightToday = Calendar.current.startOfDay(for: Date())
        checkInDatePicker.minimumDate = midnightToday
        checkInDatePicker.date = midnightToday
        
        checkOutDatePicker.minimumDate = checkInDatePicker.date.addingTimeInterval(86400)//seconds = 24h
    
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch (indexPath.section, indexPath.row) {
        case (checkInDatePickerCellIndexPath.section, checkInDatePickerCellIndexPath.row):
            if isCheckInDatePickerShown{
                return 216.0
            } else {
                return 0.0
            }
        case (checkOutDatePickerCellIndexPath.section,checkOutDatePickerCellIndexPath.row):
            if isCheckOutDatePickerShown {
                return 216.0
            } else {
                return 0.0
            }
        default:
            return 44.0
        }
    }

    @IBAction func doneBarButtonTapped(_ sender: UIBarButtonItem) {
        let firstName = firstNameTextField.text ?? ""
        let lastName = lastNameTextField.text ?? ""
        let email = emailTextField.text ?? ""
        let checkInDate = checkInDatePicker.date
        let checkOutDate = checkOutDatePicker.date
        
        print("DONE TAPPED")
        print("FirstName: \(firstName)")
        print("LastName: \(lastName)")
        print("Email: \(email)")
        print("Check In Date: \(checkInDate)")
        print("Check Out Date: \(checkOutDate)")
    }
    
    @IBAction func datePickerValueChanged(_ sender: UIDatePicker) {
        updateDateViews()
    }
    
}
