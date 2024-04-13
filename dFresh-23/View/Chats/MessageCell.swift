//
//  MessageCell.swift
//  dFresh-23
//
//  Created by J C’kang on 19/04/2024.
//

import UIKit

class MessageCell: UITableViewCell {

    @IBOutlet weak var msgBbl: UIView!
    @IBOutlet weak var me: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var world: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
                
        msgBbl.layer.cornerRadius = msgBbl.frame.height / 2.5
        
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
