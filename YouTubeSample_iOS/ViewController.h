//
//  ViewController.h
//  YouTubeSample_iOS
//
//  Created by Manuel Carrasco Molina on 08.01.12.
//  Copyright (c) 2012 Pomcast. All rights reserved.
//

// +----------------------------------------------------------------------------------------+
// | See http://hoishing.wordpress.com/2011/08/23/gdata-objective-c-client-setup-in-xcode-4 |
// +----------------------------------------------------------------------------------------+

#import <UIKit/UIKit.h>
#import "YouTubeUploader.h"

@interface ViewController : UIViewController {
    
    IBOutlet UIProgressView *uploadProgressView;
}

@property (nonatomic, retain) YouTubeUploader *youTubeUploader;

@end
