//
//  VCTownCities.swift
//  pruebavisuales
//
//  Created by Adrian Pascual Dominguez on 04/09/18.
//  Copyright © 2018 Adrian Pascual Dominguez. All rights reserved.
//

import UIKit

class VCTownCities: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UITableViewDelegate, UITableViewDataSource {
   

    @IBOutlet weak var lblTitulo: UILabel!
    @IBOutlet weak var ImgImagen: UIImageView!
    @IBOutlet weak var lblDescripcion: UILabel!
    @IBOutlet weak var CView: UICollectionView!
    @IBOutlet weak var TableView: UITableView!
    
    var losDatos = Lugar1.ciudad()
    var arrayfotos = PAIS.arraydeinformacion()
    var namecellCollection = "InsideaCountry"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.plain , target: nil, action: nil)
        self.navigationItem.backBarButtonItem?.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
    lblTitulo.text = losDatos.titulos
    ImgImagen.image = losDatos.imgPlaces
    lblDescripcion.text = losDatos.descripcion
        
        let atributoString = NSMutableAttributedString (string: lblDescripcion.text!)
        let EstiloParrafo = NSMutableParagraphStyle()
        EstiloParrafo.lineSpacing = 10
        atributoString.addAttribute(.paragraphStyle, value: EstiloParrafo, range: NSMakeRange(0, atributoString.length))
        lblDescripcion.attributedText = atributoString
        
    CView.showsHorizontalScrollIndicator = false
    CView.register(UINib(nibName: namecellCollection, bundle: nil), forCellWithReuseIdentifier: namecellCollection)
    TableView.register(UINib(nibName: "TVCell", bundle: nil), forCellReuseIdentifier: "TVCell")

        
    CView.dataSource = self
    CView.delegate = self
    TableView.dataSource = self
    TableView.delegate = self
  
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return arrayfotos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let celdaPhotos : InsideaCountry = CView.dequeueReusableCell(withReuseIdentifier: namecellCollection, for: indexPath) as! InsideaCountry
        
        celdaPhotos.Image.image = arrayfotos[indexPath.row].foto
        celdaPhotos.layer.cornerRadius = 10
        
        return celdaPhotos
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayfotos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TVCell", for: indexPath) as! TVCell
    
        cell.TCImage.image = arrayfotos[indexPath.row].foto
        cell.TCLlb.text = arrayfotos[indexPath.row].NombrePais
        
        return cell
    }
    
}
