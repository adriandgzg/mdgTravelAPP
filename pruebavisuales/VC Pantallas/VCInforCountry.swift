//
//  VCInforCountry.swift
//  pruebavisuales
//
//  Created by Adrian Pascual Dominguez on 03/09/18.
//  Copyright © 2018 Adrian Pascual Dominguez. All rights reserved.
//

import UIKit

class VCInforCountry: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate
{
    
    @IBOutlet weak var CountryinsidecollectionView: UICollectionView!
    var nombredecelda = "InsideaCountry"

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.plain , target: nil, action: nil)
        
        CountryinsidecollectionView.register(UINib(nibName: nombredecelda, bundle: nil), forCellWithReuseIdentifier: nombredecelda)
        
        CountryinsidecollectionView.dataSource = self
        CountryinsidecollectionView.delegate = self
        
        let layout = self.regresaConfiguraciondeELEmentosdelCollection()
        CountryinsidecollectionView.collectionViewLayout = layout
    }
    
    func regresaConfiguraciondeELEmentosdelCollection()-> UICollectionViewLayout{
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 40
        layout.minimumInteritemSpacing = 0.1
        let size = CGSize(width: CountryinsidecollectionView.frame.size.width - 40, height: CountryinsidecollectionView.frame.size.height)
        layout.itemSize = size
        
        return layout
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        <#code#>
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }

}
