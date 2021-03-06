
//  Created by Wentai Cui on 2/28/16.
//  Copyright © 2016 wentai. All rights reserved.
//

import UIKit
import Parse

class UserMedia: NSObject {
	
	
	class func postUserImage(image: UIImage?, withCaption caption: String?, withUsername username: String?, withCompletion completion : PFBooleanResultBlock?){
		let element = PFObject(className: "User")
		
		element["picture"] = caption
		element["name"] = username
		element["picture"] = getPFFileFromImage(image)
		
		element.saveInBackgroundWithBlock(completion)
	}
	
	class func getPFFileFromImage(image: UIImage?) -> PFFile? {
		// check if image is not nil
		if let image2 = image {
			// get image data and check if that is not nil
			if let imageData = UIImagePNGRepresentation(resize(image2, newSize: CGSize(width: 150.0, height: 150.0))) {
				return PFFile(name: "image.png", data: imageData)
			}
		}
		return nil
	}
	
	class func resize(image: UIImage, newSize: CGSize) -> UIImage {
		let resizeImageView = UIImageView(frame: CGRectMake(0, 0, newSize.width, newSize.height))
		resizeImageView.contentMode = UIViewContentMode.ScaleAspectFill
		resizeImageView.image = image
		
		UIGraphicsBeginImageContext(resizeImageView.frame.size)
		resizeImageView.layer.renderInContext(UIGraphicsGetCurrentContext()!)
		let newImage = UIGraphicsGetImageFromCurrentImageContext()
		UIGraphicsEndImageContext()
		return newImage
	}

}
