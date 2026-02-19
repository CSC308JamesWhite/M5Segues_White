//
//  ViewController.swift
//  M5Segues_White
//
//  Created by James White on 2/19/26.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var nameField: UITextField!
    @IBAction func actionSegue(_ sender: Any) {
        statusLabel.text = "Action Segue Triggered"
        guard let name = nameField.text, !name.isEmpty else{
           let alert = UIAlertController(title: "WAIT!", message: "You must enter a name", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default)
            alert.addAction(action)
            present(alert, animated: true)
            return
        }
    }
    @IBAction func manualSegue(_ sender: Any) {
        statusLabel.text = "Manual Segue Triggered"
        
        guard let name = nameField.text, !name.isEmpty else{
           let alert = UIAlertController(title: "WAIT!", message: "You must enter a name", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default)
            alert.addAction(action)
            present(alert, animated: true)
            return
        }
        performSegue(withIdentifier: "ManualSegue", sender: self)
    }
    @IBAction func progSegue(_ sender: Any) {
        statusLabel.text = "Programmatic Segue Triggered"
        
        guard let name = nameField.text, !name.isEmpty else{
           let alert = UIAlertController(title: "WAIT!", message: "You must enter a name", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default)
            alert.addAction(action)
            present(alert, animated: true)
            return
        }
        let sb = storyboard ?? UIStoryboard(name: "Main", bundle: nil)
        
        guard ((sb.instantiateViewController(identifier: "SecondViewController") as? SecondViewController) != nil) else{
            return
        }
    }
    
    @IBAction func unwindToFirstVC(_ sender: UIStoryboardSegue){
        statusLabel.text = "Unwinded"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if let dest = segue.destination as? SecondViewController{
            if let id = segue.identifier{
                dest.receivedTitle = id
            }else{
                dest.receivedTitle = "No Identifier"
            }
            if let name = nameField.text{
                dest.receivedName = name
            }else{
                dest.receivedName = "No Name"
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        nameField.layer.cornerRadius = 14
        nameField.clipsToBounds = true
        
        statusLabel.layer.cornerRadius = 14
        statusLabel.clipsToBounds = true
        
    }


}

