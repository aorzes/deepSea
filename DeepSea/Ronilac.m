//
//  Ronilac.m
//  DeepSea
//
//  Created by Anton Orzes on 23/01/2017.
//  Copyright © 2017 Anton Orzes. All rights reserved.
//

#import "Ronilac.h"
#import "IzvorMjehurica.h"

@implementation Ronilac
- (id)initWithPosition:(CGPoint)position {
    self = [super init];
    if (self) {
        self.position = position;
        self.size = CGSizeMake(80, 40);
        self.texture = [SKTexture textureWithImageNamed: @"scuba1"];
        NSArray *swimArray = @[@"scuba1",@"scuba2",@"scuba3",
                               @"scuba4",@"scuba5",@"scuba6",
                               @"scuba7",@"scuba8",@"scuba7",
                               @"scuba6",@"scuba5",@"scuba4",
                               @"scuba3",@"scuba2"];
        NSMutableArray *swimTexture = [[NSMutableArray alloc]init];
        for (NSString *name in swimArray) {
            [swimTexture addObject:[SKTexture textureWithImageNamed: name]];
        }
        SKAction *swimAnimation = [SKAction repeatActionForever:
                                   [SKAction animateWithTextures:swimTexture timePerFrame:0.2]];
        [self runAction:swimAnimation];
        IzvorMjehurica *izMj = [[IzvorMjehurica alloc]initWithPosition:CGPointMake(self.size.width/4, self.size.height/4)];
        [self addChild:izMj];
        
        
    }
    return self;
}

@end
