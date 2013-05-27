//
//  HZViewController.m
//  TwinkleStarExample
//
//  Created by Hector Zarate on 5/22/13.
//  Copyright (c) 2013 Hector Zarate. All rights reserved.
//

#import "HZViewController.h"
#import "HZTwinkleStar.h"

@interface HZViewController ()

@property (nonatomic, retain) HZTwinkleStar *twinkleStar;

@end

@implementation HZViewController

- (void)viewDidLoad
{
    self.twinkleStar = [HZTwinkleStar sharedTwinkleStar];
    
    [super viewDidLoad];
}

- (IBAction)turnFlashOnButton:(id)sender
{
    [self.twinkleStar turnFlashLEDOn];
}

- (IBAction)turnFlashOffButton:(id)sender
{
    [self.twinkleStar turnFlashLEDOff];
}

- (IBAction)valueChangeInSlider:(id)sender
{
    self.twinkleStar.flashFrequency = self.frequencySlider.value;
    self.frequencyLabel.text = [NSString stringWithFormat:@"%i",
                                (NSUInteger)floor(self.twinkleStar.flashFrequency)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload
{
    self.frequencyLabel = nil;
    self.frequencySlider = nil;
    
    [super viewDidUnload];
}
@end
