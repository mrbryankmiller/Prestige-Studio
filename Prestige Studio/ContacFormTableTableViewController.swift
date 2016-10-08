//
//  ContacFormTableTableViewController.swift
//  Prestige Studio
//
//  Created by Bryan  Miller on 10/5/16.
//  Copyright © 2016 swift 3. All rights reserved.
//

import UIKit
import MessageUI

class ContacFormTableTableViewController: UITableViewController, MFMailComposeViewControllerDelegate {
    
// First Section

    @IBOutlet weak var firstSectionView: UIView!
   
    
    @IBOutlet weak var firstNameTextfieldSec1: UITextField!
    
    @IBOutlet weak var addressTextFieldSec1: UITextField!
    
    @IBOutlet weak var cityTextfieldSec1: UITextField!
    
    @IBOutlet weak var stateTextFieldSec1: UITextField!
    
    
    @IBOutlet weak var zipCodeTextFieldSec1: UITextField!
    
    @IBOutlet weak var phoneNumberTextFieldSec1: UITextField!
    
    @IBOutlet weak var emailTextFieldSec1: UITextField!
    
    
    
    
// Second Section
    
    @IBOutlet weak var receiverTextfieldSec2: UIView!
    
    @IBOutlet weak var addressTextFieldSec2: UIView!
    
    @IBOutlet weak var cityTextfieldSec2: UIView!
    
    @IBOutlet weak var stateTextFieldSec2: UITextField!
    
    @IBOutlet weak var zipcodeTextFieldSec2: UITextField!
    
    @IBOutlet weak var countryDestinationTextFieldSec2: UITextField!
    
    @IBOutlet weak var recieverPhoneTextfieldSec2: UITextField!
    
    @IBOutlet weak var emailTextFieldSec2: UITextField!
    
    @IBOutlet weak var bankNameTextFieldSec2: UITextField!
    
    @IBOutlet weak var accountNameTextFieldSec2: UITextField!
    
    
    // Third Section

    @IBOutlet weak var sendAmountTextFieldSec3: UITextField!

    @IBOutlet weak var addressTextFieldSec3: UITextField!
    
    @IBOutlet weak var signatureTextFieldSec3: UITextField!
 

    @IBOutlet weak var dateTextFieldSec3: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

      // self.view.backgroundColor = UIColor.yellow
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func submitButtonPressed(_ sender: AnyObject) {
        
        let toRecipients = ["mrbmillionaire@gmail.com","Kemgadi@kemgadi.com"]
        
        let mc: MFMailComposeViewController = MFMailComposeViewController()
        
        mc.mailComposeDelegate = self
        
        mc.setToRecipients(toRecipients)
        mc.setSubject("Form Information")
        
        mc.setMessageBody("Name: \(firstNameTextfieldSec1.text!) \n\nAddress: \(addressTextFieldSec1.text!) \n\nCity:\(cityTextfieldSec1.text!) \n\nState: \(stateTextFieldSec1.text!) \n\nZipocode:\(zipCodeTextFieldSec1.text!) \n\nPhoneNumber:\(phoneNumberTextFieldSec1.text!) \n\nEmail: \(emailTextFieldSec1.text!)", isHTML: false)
        
        self.present(mc, animated: true, completion: nil)
        
    }
    

    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
        
        

    
        
    @IBAction func dissmissKeyboard(_ sender: AnyObject) {
        
        
        self.resignFirstResponder()
    }


    

}
