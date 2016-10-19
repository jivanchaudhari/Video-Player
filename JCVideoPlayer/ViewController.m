//
//  ViewController.m
//  JCVideoPlayer
//
//  Created by Student P_02 on 10/10/16.
//  Copyright © 2016 Jivan Chaudhari. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
     fileURL = [[NSBundle mainBundle]URLForResource:@"meraVideo" withExtension:@"mp4"];
    
    NSLog(@"%@",fileURL);
    
    myPlayer = [[AVPlayer alloc]initWithURL:fileURL];
    
    videoPlayerLayer = [AVPlayerLayer playerLayerWithPlayer:myPlayer];
    
    //[videoPlayerLayer setFrame:CGRectMake(50, 50, 300, 400)];
    
   // [self.view.layer addSublayer:videoPlayerLayer];
    
    //[myPlayer play];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)playButtonAction:(id)sender {
    
    UIButton *button = sender;
    
    
    if (button.tag == 0) {
        
        button.tag = 1;
        
        [videoPlayerLayer setFrame:_videoView.bounds];
        
        [videoPlayerLayer setBackgroundColor:[UIColor blackColor].CGColor];
        
        [self.videoView.layer addSublayer:videoPlayerLayer];
        
        self.videoView.clipsToBounds = YES;
        
        [myPlayer play];
        
        
    }
    else if (button.tag == 1) {
        
        button.tag = 0;
        
        [myPlayer pause];
        
    }
}

- (IBAction)stopButtonAction:(id)sender {
    
    [myPlayer pause];
    
}
@end
