//
//  TodoTableViewCell.swift
//  TodoViper
//
//  Created by Burak Ertaş on 15.10.2022.
//

import UIKit

class TodoTableViewCell: UITableViewCell {

    @IBOutlet weak var todoInfoLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
