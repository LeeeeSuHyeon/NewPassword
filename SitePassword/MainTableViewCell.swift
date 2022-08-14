//
//  MainTableViewCell.swift
//  SitePassword
//
//  Created by 이수현 on 2022/08/14.
//

import UIKit

class MainTableViewCell: UITableViewCell {
    
//    @IBAction func myExit(sender: UIStoryboardSegue){
//    }
//
    
    var receivedText : String?
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var List: UILabel!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        List.text = receivedText

        // Configure the view for the selected state
    }

}
