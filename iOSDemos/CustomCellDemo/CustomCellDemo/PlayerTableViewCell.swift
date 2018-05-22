//
//  PlayerTableViewCell.swift
//  CustomCellDemo
//
//  Created by Varun on 22/05/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class PlayerTableViewCell: UITableViewCell {

    @IBOutlet var playerImageView : UIImageView!
    @IBOutlet var playerNameLbl : UILabel!
    @IBOutlet var playerTeamLbl : UILabel!
    @IBOutlet var playerAgeLbl : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func setData(player : Player) {
        
        playerNameLbl.text = player.name
        playerTeamLbl.text = player.team
        playerAgeLbl.text = String(player.age)
        playerImageView.image = UIImage(named: player.imageName)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
