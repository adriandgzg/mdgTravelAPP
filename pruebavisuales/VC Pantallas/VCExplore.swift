//
//  VCExplore.swift
//  pruebavisuales
//
//  Created by Adrian Pascual Dominguez on 06/09/18.
//  Copyright © 2018 Adrian Pascual Dominguez. All rights reserved.
//

import UIKit

class VCExplore: UIViewController, UITableViewDelegate, UITableViewDataSource{
  
    var datos = PAIS.arraydeinformacion()
    var ejemplo = Lugar1 ()
    @IBOutlet weak var TableViewExplore: UITableView!
    
    var collectionnombrecelda = "TableViewCell"
    var nombreimagen = "TableViewCell2"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    TableViewExplore.delegate = self
    TableViewExplore.dataSource = self
    
    TableViewExplore.register(UINib(nibName: collectionnombrecelda, bundle: nil), forCellReuseIdentifier: collectionnombrecelda )
        
    TableViewExplore.register(UINib(nibName: nombreimagen, bundle: nil), forCellReuseIdentifier: nombreimagen )
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
         if section == 0 {
            return 2
        }
        else {
            
            return datos.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        
        if indexPath.section == 0 {
            
            let cell  = tableView.dequeueReusableCell(withIdentifier: collectionnombrecelda) as! TableViewCell
            cell.esteeseltexto.text =  "Título"
            return cell
        }
            
        else  {
        
            let celda = tableView.dequeueReusableCell(withIdentifier: nombreimagen) as! TableViewCell2
            celda.lbl2.text = datos[indexPath.row].NombrePais
            celda.imagen2.image = datos[indexPath.row].foto
            return celda
        }
    
}
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0{
            return 220.0
        }else{
            return 150.0
        }
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 20
    }
    
    
}

