//
//  ViewController.m
//  Amy Lee
//
//  Created by Amy Lee on 4/19/15.
//  Copyright (c) 2015 Amy Lee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *selfImage;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    double ratio = 1.0;
    
    CGRect currentFrame = self.selfImage.frame;
    self.selfImage.frame = CGRectMake(currentFrame.origin.x-currentFrame.size.width*ratio, currentFrame.origin.y-currentFrame.size.height*ratio, currentFrame.size.width*(1+ratio*2), currentFrame.size.height*(1+ratio*2));
    [UIView animateWithDuration:2.5 animations:^{
        self.selfImage.frame = currentFrame;
    }];
    
}
- (IBAction)openRedBubble:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.redbubble.com/people/amidotlee"]];
    
}
- (IBAction)openBehance:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.behance.net/amyk_lee"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
