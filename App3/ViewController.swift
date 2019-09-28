//
//  ViewController.swift
//  App3
//
//  Created by ENRIQUE VERGARA  on 9/26/19.
//  Copyright © 2019 ENRIQUE VERGARA . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    var images = ["machu", "cuba", "cuba2", "cuba3", "mexico"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.image.image = UIImage(named: self.images[0])
        self.image.layer.borderWidth = 3
        self.image.layer.cornerRadius = 8.0
        
        self.label.text = self.images[0]
        self.label.layer.cornerRadius = 10.0
        self.label.layer.borderWidth = 3
        self.label.layer.borderColor = UIColor.gray.cgColor
        
        self.image.clipsToBounds = true
        
    }

    @IBAction func valueChange(_ sender: UISlider) {
        print(self.slider.value)
        let valor : Int = Int(self.slider.value)
        switch valor {
            case 0...20:
                self.changeImage(position: 0)
            case 21...40:
                self.changeImage(position: 1)
            case 41...60:
                self.changeImage(position: 2)
            case 61...80:
                self.changeImage(position: 3)
            case 81...100:
                self.changeImage(position: 4)
            default:
                print("No debería de ser posible \(valor)")
        }
    }
    
    func changeImage(position index : Int) {
        self.image.image = UIImage(named: images[index])
        self.label.text = self.images[index]
    }
}

