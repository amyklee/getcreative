//
//  CreativeViewController.m
//  Amy Lee
//
//  Created by Amy Lee on 4/19/15.
//  Copyright (c) 2015 Amy Lee. All rights reserved.
//

#import "CreativeViewController.h"

@interface CreativeViewController ()

@end

@implementation CreativeViewController
{
    NSMutableArray *ideasArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    ideasArray = [@[@"Draw a toy robot",
                    @"Create a new font",
                    @"Look! It's a bird! It's a plane! It's...",
                    @"Draw something exploding",
                    @"Create a new breakfast cereal",
                    @"Draw what's outside your window",
                    @"Draw yourself having fun",
                    @"Draw what you see when you look up",
                    @"Draw the back of your eyelids",
                    @"Draw a hybrid between your favorite animal and your least favorite animal",
                    
                    ] mutableCopy];
    
}
- (IBAction)buttonTask:(UIButton *)button {
    button.titleLabel.numberOfLines = 0;
    button.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    
    NSUInteger randomIndex = arc4random() % ideasArray.count;
    NSString *ideaString = ideasArray[randomIndex];
    [button setTitle:ideaString forState:UIControlStateNormal];
    
    float red = (float)arc4random() / RAND_MAX;
    float green = (float)arc4random() / RAND_MAX;
    float blue = (float)arc4random() / RAND_MAX;
    
    button.backgroundColor = [UIColor colorWithRed:red green:green blue:blue alpha:1];
    
//    NSMutableParagraphStyle *style =  [[NSParagraphStyle defaultParagraphStyle] mutableCopy];
//    //style.alignment = NSTextAlignmentJustified;
//    style.alignment = NSTextAlignmentCenter;
//    style.lineBreakMode = NSLineBreakByWordWrapping;
//    style.firstLineHeadIndent = 10.0f;
//    style.headIndent = 10.0f;
//    style.tailIndent = -10.0f;
//    
//    NSAttributedString *attrText = [[NSAttributedString alloc] initWithString:ideaString attributes:@{ NSParagraphStyleAttributeName : style}];
//    
//    [button setAttributedTitle:attrText forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
