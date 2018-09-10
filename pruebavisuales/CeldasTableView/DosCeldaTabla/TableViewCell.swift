//
//  TableViewCell.swift
//  pruebavisuales
//
//  Created by Adrian Pascual Dominguez on 07/09/18.
//  Copyright © 2018 Adrian Pascual Dominguez. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell, UICollectionViewDelegate , UICollectionViewDataSource{
    
    var selectCelda = 0
    var datos2 = PAIS.arraydeinformacion()
    @IBOutlet weak var mycollection: UICollectionView!
    @IBOutlet weak var esteeseltexto: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.mycollection.delegate = self
        self.mycollection.dataSource = self
        
        self.mycollection.register(UINib(nibName:"CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell")
        
        let layout = self.regresaConfiguraciondeELEmentosdelCollection()
        mycollection.collectionViewLayout = layout
        mycollection.showsHorizontalScrollIndicator = false
        
    }

    func regresaConfiguraciondeELEmentosdelCollection()-> UICollectionViewLayout{
        
        let layout = UICollectionViewFlowLayout()
        let cellsize = CGSize (width: 120, height: 200)
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 15
        layout.minimumInteritemSpacing = 1
        //let size = CGSize(width: mycollection.frame.size.width - 80, height: mycollection.frame.size.height - 80)
        layout.itemSize = cellsize
        
        
        
        return layout
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return datos2.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : CollectionViewCell = mycollection.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        
        cell.lblcelda.text = datos2[indexPath.row].NombrePais
        cell.imgcelda.image = datos2[indexPath.row].foto
       
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
        
        selectCelda = indexPath.row
       let datosselectCelda = datos2[selectCelda]
        print(datosselectCelda.NombrePais)
    }
    
}
