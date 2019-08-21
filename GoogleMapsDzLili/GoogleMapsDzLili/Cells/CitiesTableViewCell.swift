//
//  CitiesTableViewCell.swift
//  GoogleMapsDzLili
//
//  Created by Лилия on 6/14/19.
//  Copyright © 2019 ITEA. All rights reserved.
//

import UIKit

class CitiesTableViewCell: UITableViewCell {

    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        thumbnailImageView.layer.cornerRadius = 15
        thumbnailImageView.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func update(city: City) {
        nameLabel.text = city.name
        thumbnailImageView.image = UIImage(named: city.image)
    }

}
