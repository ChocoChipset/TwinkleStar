//
//  HZTwinkleStar.h
//  TwinkleStarExample
//
//  Created by Hector Zarate on 5/22/13.
//  Copyright (c) 2013 Hector Zarate. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HZTwinkleStar : NSObject

@property (nonatomic, unsafe_unretained) CGFloat flashFrequency;
@property (nonatomic, unsafe_unretained, readonly, getter = isFlashLEDAvailable) BOOL flashLEDAvailable;

+(HZTwinkleStar *)sharedTwinkleStar;

-(void)turnFlashLEDOn;
-(void)turnFlashLEDOff;


@end
