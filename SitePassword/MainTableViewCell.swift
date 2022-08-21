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

    @IBOutlet weak var List: UILabel!
   // var recivedText : String?  
   
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
