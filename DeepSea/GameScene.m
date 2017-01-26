//
//  GameScene.m
//  DeepSea
//
//  Created by Anton Orzes on 22/01/2017.
//  Copyright © 2017 Anton Orzes. All rights reserved.
//

#import "GameScene.h"
#import "Ronilac.h"

@implementation GameScene {
    Ronilac *ron;
}

- (void)didMoveToView:(SKView *)view {
    // Setup your scene here
    SKSpriteNode *podloga = [SKSpriteNode spriteNodeWithImageNamed:@"deepSea.jpg"];
    podloga.size = self.scene.size;
    [self addChild:podloga];
    podloga.zPosition = 0;
    
    ron = [[Ronilac alloc]initWithPosition:CGPointMake(-100, -100)];
    [self addChild:ron];
    
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
        for (UITouch *touch in touches) {
            CGPoint location = [touch locationInNode:self];
            float distance = hypotf(ron.position.x-location.x,ron.position.y-location.y);
            float angle = M_PI+atan2(ron.position.y - location.y, ron.position.x - location.x);
            SKAction *ronAngle = [SKAction rotateToAngle:angle duration:1.5 shortestUnitArc:YES];
            SKAction *ronMove = [SKAction moveTo:location duration:distance/50];
            [ron runAction:[SKAction sequence:@[ronAngle,ronMove]]];
            
            
        }
}
-(void)update:(CFTimeInterval)currentTime {
    // Called before each frame is rendered
}

@end
