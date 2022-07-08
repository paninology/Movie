//
//  ViewController.swift
//  Movie
//
//  Created by yongseok lee on 2022/07/04.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        image2.layer.cornerRadius = image2.frame.height/2
        image2.layer.borderColor = UIColor.red.cgColor
        image2.layer.borderWidth = 2
        
        image3.layer.cornerRadius = image3.frame.height/2
        image4.layer.cornerRadius = image4.frame.height/2
        
    }

    @IBAction func playButtonPressed(_ sender: Any) {
        var randomNum:[Int] = []
        var idx = 1
        
        while idx < 5 {
            var num = Int.random(in: 1...7)
            if !randomNum.contains(num) {
                randomNum.append(num)
                idx += 1
            }
            print(idx,randomNum)
        }
        image1.image = UIImage(named: "movie\(randomNum[0])")
        image2.image = UIImage(named: "movie\(randomNum[1])")
        image3.image = UIImage(named: "movie\(randomNum[2])")
        image4.image = UIImage(named: "movie\(randomNum[3])")
    }
    
}

