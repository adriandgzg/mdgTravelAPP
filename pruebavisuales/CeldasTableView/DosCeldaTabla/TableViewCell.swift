//
//  TableViewCell.swift
//  pruebavisuales
//
//  Created by Adrian Pascual Dominguez on 07/09/18.
//  Copyright © 2018 Adrian Pascual Dominguez. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell, UICollectionViewDelegate , UICollectionViewDataSource{
    
    @IBOutlet weak var mycollection: UICollectionView!

    
    @IBOutlet weak var esteeseltexto: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.mycollection.delegate = self
        self.mycollection.dataSource = self
        
        self.mycollection.register(UINib(nibName:"CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell")
        
        let layout = self.regresaConfiguraciondeELEmentosdelCollection()
        mycollection.collectionViewLayout = layout
       
    }

    func regresaConfiguraciondeELEmentosdelCollection()-> UICollectionViewLayout{
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 0.1
        let size = CGSize(width: mycollection.frame.size.width - 10, height: mycollection.frame.size.height)
        layout.itemSize = size
        
        
        return layout
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : CollectionViewCell = mycollection.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.imgcelda.image = UIImage (named : "C1")
        return cell
    }
    
}
