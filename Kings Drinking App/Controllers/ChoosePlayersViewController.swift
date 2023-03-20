//
//  ChoosePlayersViewController.swift
//  Kings Drinking App
//
//  Created by Marco Mărieș on 18.03.2023.
//

import UIKit

class ChoosePlayersViewController: UIViewController, UITextFieldDelegate {
    
    var playersBrain = PlayersBrain()
    
    //declaring IBOutlets
    @IBOutlet weak var inputPlayerTextField: UITextField!
    
    //declaring IBActions
    @IBAction func startPlayingButtonPressed(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "goToPlaygroundScreen", sender: self)
    }
   
    @IBAction func addToListButtonPressed(_ sender: UIButton) {
        
        playersBrain.addPlayerToArray(userTextFieldInput: inputPlayerTextField.text!)
        
    }
    
    @IBAction func clearListButtonPressed(_ sender: UIButton) {
        
        playersBrain.clearList()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        //delegates for the text fields
        inputPlayerTextField.delegate = self
    }
    
    //prepare for the next screen
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier ==  "goToPlaygroundScreen" {
            _ = segue.destination as! PlaygroundViewController
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        inputPlayerTextField.endEditing(true)
               return true
    }
}
