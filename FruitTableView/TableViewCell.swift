//
//  TableViewCell.swift
//  FruitTableView
//
//  Created by Yun Xu on 9/20/21.
//

import UIKit


class TableViewCell: UITableViewCell {


    @IBOutlet weak var fruitImg: UIImageView!
    @IBOutlet weak var fruitName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
