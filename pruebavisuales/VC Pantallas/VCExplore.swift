//
//  VCExplore.swift
//  pruebavisuales
//
//  Created by Adrian Pascual Dominguez on 06/09/18.
//  Copyright © 2018 Adrian Pascual Dominguez. All rights reserved.
//

import UIKit

class VCExplore: UIViewController, UITableViewDelegate, UITableViewDataSource{
  

    var ejemplo = Lugar1 ()
    @IBOutlet weak var TableViewExplore: UITableView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    TableViewExplore.delegate = self
    TableViewExplore.dataSource = self


        
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
            return 5
        }
        else {
            return 2
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
       TableViewExplore.register(UINib(nibName: "TVCollection", bundle: nil), forCellReuseIdentifier: "TVCollection")
            let cell = tableView.dequeueReusableCell(withIdentifier: "TVCollection", for: indexPath) as! TVCollection
            cell.imgCollection.image = UIImage (named: "hombre")
            return cell
        }
        else {
            TableViewExplore.register(UINib(nibName: "TVCellImage", bundle: nil), forCellReuseIdentifier: "TVCellImage")
            let celda = tableView.dequeueReusableCell(withIdentifier: "TVImagen", for: indexPath) as! TVImagen
            celda.imgTVimagen.image = UIImage (named: "C1")
             return celda
        }
   
    }


    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0{
            return 120.0
        }else{
            return 140.0
        }
    }



