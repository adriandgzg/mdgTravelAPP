//
//  TVCellDos.swift
//  pruebavisuales
//
//  Created by Adrian Pascual Dominguez on 06/09/18.
//  Copyright © 2018 Adrian Pascual Dominguez. All rights reserved.
//

import UIKit

class TVCellDos: UITableViewCell {

    
    
    @IBOutlet weak var imagen: UIImageView!
    
    @IBOutlet weak var imagendos: UIImageView!
    @IBOutlet weak var lbldos: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
