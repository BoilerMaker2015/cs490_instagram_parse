
//  Created by wentai on 2/28/16.
//  Copyright © 2016 wentai. All rights reserved.
//

import UIKit

class picture: UITableViewCell {
	
	
	@IBOutlet weak var instagramImageView: UIImageView!
	@IBOutlet weak var captionLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
