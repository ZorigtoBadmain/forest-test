//
//  SecondViewController.swift
//  Forest-test
//
//  Created by Зоригто Бадмаин on 04.10.2020.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    var selectLabel: String?
    var selectImage: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let name = selectLabel {
            label.text = name
        }
        
        if let imageName = selectImage {
            image.image = imageName
        }
    }
    
}
