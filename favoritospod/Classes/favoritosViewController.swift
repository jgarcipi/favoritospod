//
//  File.swift
//  favoritospod
//
//  Created by Aceleradora Mobile Perú on 25/06/18.
//

//
//  ViewController.swift
//  favoritos
//
//  Created by Aceleradora Mobile Perú on 18/06/18.
//  Copyright © 2018 Aceleradora Mobile Perú. All rights reserved.
//

import UIKit


class favoritosViewController: UIViewController , UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var favoritosTableView: UITableView!
    @IBOutlet weak var btnTransferencia1: UIButton!
    @IBOutlet weak var btnTransferencia2: UIButton!
    @IBOutlet weak var btnTransferencia3: UIButton!
    
    var listFavoritos: [String] = ["favorito 1", "favorito 2", "favorito 3", "favorito 2", "favorito 3", "favorito 2", "favorito 3", "favorito 2", "favorito 3"]
    var numerosDeCuenta: [String] = ["194-64364536-6-654", "222-45555566666677778888","111-1555556666677778888", "222-45555566666677778888","111-1555556666677778888", "222-45555566666677778888","111-1555556666677778888", "222-45555566666677778888","111-1555556666677778888"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initView()
        //        self.setuplblBorderLeft()
        favoritosTableView.delegate = self
        favoritosTableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //        favoritosTableView.frame = CGRect(x: favoritosTableView.frame.origin.x, y: favoritosTableView.frame.origin.y, width: favoritosTableView.frame.size.width, height: favoritosTableView.contentSize.height)
        
    }
    func initView(){
        self.favoritosTableView.layer.cornerRadius = 5
        self.favoritosTableView.layer.borderWidth = 1
        self.favoritosTableView.layer.borderColor = UIColor.lightGray.cgColor
        self.btnTransferencia1.layer.cornerRadius = 5
        self.btnTransferencia1.layer.borderWidth = 1
        self.btnTransferencia1.layer.borderColor = UIColor.lightGray.cgColor
        self.btnTransferencia2.layer.cornerRadius = 5
        self.btnTransferencia2.layer.borderWidth = 1
        self.btnTransferencia2.layer.borderColor = UIColor.lightGray.cgColor
        self.btnTransferencia3.layer.cornerRadius = 5
        self.btnTransferencia3.layer.borderWidth = 1
        self.btnTransferencia3.layer.borderColor = UIColor.lightGray.cgColor
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.listFavoritos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:MyCustomCell = self.favoritosTableView.dequeueReusableCell(withIdentifier: "cell")as! MyCustomCell
        cell.myCellLabel.text = listFavoritos[indexPath.row]
        cell.lblNumeroDeCuenta.text = numerosDeCuenta[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(NSLocalizedString("welcome", comment: ""))
        let selectedCell = self.favoritosTableView.cellForRow(at: indexPath)
        selectedCell?.contentView.backgroundColor = #colorLiteral(red: 0.9783870578, green: 0.3000494242, blue: 0.02250644378, alpha: 1)
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
}

