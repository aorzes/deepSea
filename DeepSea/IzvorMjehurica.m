//
//  IzvorMjehurica.m
//  DeepSea
//
//  Created by Anton Orzes on 22/01/2017.
//  Copyright © 2017 Anton Orzes. All rights reserved.
//

#import "IzvorMjehurica.h"
#import "Mjehuric.h"

@implementation IzvorMjehurica
- (id)initWithPosition:(CGPoint)position {
    self = [super init];
    if (self) {
        self.position = position;
//        CGMutablePathRef myPath = CGPathCreateMutable();
//        CGPathAddArc(myPath, NULL, 100,100, 5, 0, M_PI*2, YES);
//        self.path = myPath;
        [NSTimer scheduledTimerWithTimeInterval:0.2
                                         target:self
                                       selector:@selector(makeBubble)
                                       userInfo:nil
                                        repeats:YES];
    }
    return self;
}

- (void)makeBubble {
    CGPoint preracunaj = [self convertPoint:self.position toNode:self.parent.scene];
    Mjehuric *mje = [[Mjehuric alloc]initWithPosition:preracunaj];
    [self.parent.scene addChild:mje];
}

@end
