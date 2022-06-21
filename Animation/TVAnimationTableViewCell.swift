//
//  TVAnimationTableViewCell.swift
//  Animation
//
//  Created by AmirDiafi on 6/21/22.
//

import UIKit

class TVAnimationTableViewCell: UITableViewCell {

    @IBOutlet weak var userImg: UIImageView!
    @IBOutlet weak var username: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setupTVContent(username: String, userImg: UIImage) {
        self.username.text = username
        self.userImg.image = userImg
        self.userImg.tintColor = .black
    }

}
