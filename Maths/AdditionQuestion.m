//
//  AdditionQuestion.m
//  Maths
//
//  Created by NICE on 2018-07-31.
//  Copyright © 2018 NICE. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init {
    if (self = [super init]) {
        _question = [NSString stringWithFormat:@"%@ + %@ = ?", @(arc4random_uniform(91) + 10), @(arc4random_uniform(91) + 10)];
        NSLog(@"%@", _question);
    }
    return self;
}




@end
