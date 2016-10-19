//
//  ViewController.h
//  JCVideoPlayer
//
//  Created by Student P_02 on 10/10/16.
//  Copyright © 2016 Jivan Chaudhari. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController

{
    AVPlayer *myPlayer;
    
    AVPlayerLayer *videoPlayerLayer;
    
    NSURL *fileURL;
}

@property (strong, nonatomic) IBOutlet UIView *videoView;


- (IBAction)playButtonAction:(id)sender;


- (IBAction)stopButtonAction:(id)sender;

@end

