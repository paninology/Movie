//
//  MovieViewController.swift
//  Movie
//
//  Created by yongseok lee on 2022/07/05.
//

import UIKit

class MovieViewController: UIViewController {

    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var stepperLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func genreButton(_ sender: UIButton) {
        
        
    }
   
    @IBAction func ddd(_ sender: UIButton) {
    }
    
    @IBAction func stepperClicked(_ sender: Any) {
        stepperLabel.text = "\(stepper.value)"
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
