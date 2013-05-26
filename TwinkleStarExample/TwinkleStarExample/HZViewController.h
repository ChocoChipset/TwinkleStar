//
//  HZViewController.h
//  TwinkleStarExample
//
//  Created by Hector Zarate on 5/22/13.
//  Copyright (c) 2013 Hector Zarate. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HZViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISlider *frequencySlider;

- (IBAction)turnFlashOnButton:(id)sender;
- (IBAction)turnFlashOffButton:(id)sender;
- (IBAction)valueChangeInSlider:(id)sender;

@end
