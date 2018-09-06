//
//  VCTownCities.swift
//  pruebavisuales
//
//  Created by Adrian Pascual Dominguez on 04/09/18.
//  Copyright © 2018 Adrian Pascual Dominguez. All rights reserved.
//

import UIKit

class VCTownCities: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UITableViewDelegate, UITableViewDataSource {
   


    @IBOutlet var viewpop: UIView!
    @IBOutlet weak var efect: UIVisualEffectView!
    var efectopop : UIVisualEffect!
    
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
        
        efectopop = efect.effect
        efect.effect = nil
        
        viewpop.layer.cornerRadius = 10
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
    
    func animateIn() {
        self.view.addSubview(viewpop)
        viewpop.center = self.view.center
        
        viewpop.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)
        viewpop.alpha = 0
        
        UIView.animate(withDuration: 0.4) {
            self.efect.effect = self.efectopop
            self.viewpop.alpha = 1
            self.viewpop.transform = CGAffineTransform.identity
        }
        
    }
    
    func animatedOut (){
        UIView.animate(withDuration: 0.3, animations :{
            self.viewpop.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)
            self.viewpop.alpha = 0
            
            self.efect.effect = nil
        }) {(success: Bool) in
            self.viewpop.removeFromSuperview()}
    }
    
    @IBAction func dismisspop(_ sender: Any) {
        animatedOut()
    }
  
    
    @IBAction func popefect(_ sender: Any) {
        animateIn()
    }
    
}
