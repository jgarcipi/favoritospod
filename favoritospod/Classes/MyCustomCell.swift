//
//  MyCustomCell.swift
//  favoritospod
//
//  Created by Aceleradora Mobile Perú on 25/06/18.
//

import Foundation
import UIKit
class MyCustomCell: UITableViewCell {
    
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var myCellLabel: UILabel!
    @IBOutlet weak var lblNumeroDeCuenta: UILabel!
    @IBOutlet weak var lblcontinuar: UILabel!
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        if selected {
            self.myCellLabel.textColor = UIColor.white
            self.lblNumeroDeCuenta.textColor = UIColor.white
            self.lblcontinuar.textColor = UIColor.white
        } else {
            self.myCellLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            self.lblNumeroDeCuenta.textColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
            self.lblcontinuar.textColor = #colorLiteral(red: 0.9783870578, green: 0.3000494242, blue: 0.02250644378, alpha: 1)
        }
        
    }
    
}
