//
//  BludaTableViewCell.swift
//  Forest-test
//
//  Created by Зоригто Бадмаин on 04.10.2020.
//

import UIKit

class BludaTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageBluda: UIImageView!
    @IBOutlet weak var nameBluda: UILabel!
    @IBOutlet weak var weightBluda: UILabel!
    @IBOutlet weak var buttonPrice: UIButton!
    @IBOutlet weak var sellPrice: UILabel!
    @IBOutlet weak var predzacaz: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell(blud: Bluda) {
        self.imageBluda.image = blud.image
        self.nameBluda.text = blud.name
        self.weightBluda.text = blud.weight
        self.buttonPrice.titleLabel?.text = blud.price
        self.sellPrice.text = blud.sellPrice
        self.predzacaz.text = blud.predzacas
    }
    
}
