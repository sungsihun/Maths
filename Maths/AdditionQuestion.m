//
//  AdditionQuestion.m
//  Maths
//
//  Created by NICE on 2018-07-31.
//  Copyright © 2018 NICE. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion



- (NSString *)question {
    return [NSString stringWithFormat:@"%i", (arc4random_uniform(100) + 10)];
}

@end
