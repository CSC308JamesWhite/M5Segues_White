//
//  SecondViewController.swift
//  M5Segues_White
//
//  Created by James White on 2/19/26.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    var receivedTitle: String = "Second Page"
    var receivedName: String = "Unknown"
    @IBAction func unwindButton(_ sender: Any) {
    }
    @IBAction func showImage(_ sender: Any) {
        backgroundImageView.image = UIImage(named: "256.jpg")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = receivedName
        titleLabel.text = receivedTitle

        // Do any additional setup after loading the view.
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
