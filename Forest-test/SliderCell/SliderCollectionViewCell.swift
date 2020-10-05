//
//  SliderCollectionViewCell.swift
//  Forest-test
//
//  Created by Зоригто Бадмаин on 02.10.2020.
//

import UIKit

class SliderCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var sliderImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
   
    func setupCell(slid: Slider) {
        self.sliderImage.image = slid.image
    }

}
