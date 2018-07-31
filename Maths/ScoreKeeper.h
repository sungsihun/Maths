//
//  ScoreKeeper.h
//  Maths
//
//  Created by NICE on 2018-07-31.
//  Copyright © 2018 NICE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property (nonatomic, assign)float right;
@property (nonatomic, assign)float wrong;

- (NSString*)getScore:(NSString*)result;

@end
