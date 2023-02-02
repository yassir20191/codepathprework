//
//  ViewController.swift
//  IntrouduceStudent
//
//  Created by Yas Wood on 2/1/23.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var firstNameLabel: UILabel!
    
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    
    @IBOutlet weak var lastNameLabel: UILabel!
    
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    @IBOutlet weak var schoolNameLabel: UILabel!
    @IBOutlet weak var morePetsStepper: UIStepper!
    
    @IBAction func ChangeTextColor(_ sender: UITextField, forEvent event: UIEvent) {
        firstNameLabel.textColor = UIColor.green
        
    }
    
    @IBAction func ChangeTextColor2(_ sender: UITextField, forEvent event: UIEvent) {
        lastNameLabel.textColor = UIColor.green
    }
    
    @IBAction func ChangeTextColor3(_ sender: UITextField, forEvent event: UIEvent) {
        schoolNameLabel.textColor = UIColor.green
    }
    
    @IBOutlet weak var yearSegmentedControl:  UISegmentedControl!
    
    @IBOutlet weak var introduceSelfButton: UIButton!
    @IBAction func morePetsStepper(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func checkIfStepperWorks(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    
    
    
    
    
    
    @IBAction func introduceSelfButtonTapped(_ sender: UIButton) {
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
        let wantMorePets = "I dont want more pets."
        if(morePetsSwitch.isOn){
            let wantMorePets = "I want more pets."
        }
      
       
let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) pets. \(wantMorePets)"
        
// Creates the alert where we pass in our message, which our introduction.
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        // A way to dismiss the box once it pops up
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        // Passing this action to the alert controller so it can be dismissed
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    
}

