//
//  GroupCollectionViewCell.swift
//  Forest-test
//
//  Created by Зоригто Бадмаин on 02.10.2020.
//

import UIKit

class GroupCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var groupImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(groups: ProductGroup) {
        self.groupImage.image = groups.image
        self.nameLabel.text = groups.name
    }
 
}
