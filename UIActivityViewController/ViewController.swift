//
//  ViewController.swift
//  UIActivityViewController
//
//  Created by Mamadou Kaba on 6/14/16.
//  Copyright © 2016 Mamadou Kaba. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var shareTextField: UITextField!
    
    //MARK: - Properties
    var activityViewController: UIActivityViewController!
    
    //MARK: - Target Action
    
    @IBAction func shareButtonTapped(sender: AnyObject) {
        if shareTextField.text!.isEmpty {
            
            //Creating the message of the Alert View (if the Share Text Field if empty)
            let message = "Please enter some text to share to the world"
            
            //Construction Alert View Controller
            let alertController = UIAlertController(title: "OOPPS!", message: message, preferredStyle: .Alert)
            //Contruction Alert View Action (OK Button at the bottom of alert View)
            alertController.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
            
            //Presenting the Alert View Controller
            presentViewController(alertController, animated: true, completion: nil)
            
        } else {
            //Constructing Activity View Controller
            activityViewController = UIActivityViewController(activityItems: [shareTextField.text! as NSString], applicationActivities: nil)
            
            //Presenting Activity View Controller
            presentViewController(activityViewController, animated: true, completion: nil)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK - UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if textField == shareTextField {
            textField.resignFirstResponder()
        }
        
        return true
    }
}

