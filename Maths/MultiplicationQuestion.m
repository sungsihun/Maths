//
//  MultiplicationQuestion.m
//  Maths
//
//  Created by NICE on 2018-08-01.
//  Copyright © 2018 NICE. All rights reserved.
//

#import "MultiplicationQuestion.h"

@implementation MultiplicationQuestion

- (instancetype)init {
    if (self = [super init]) {
        [self generateQuestion];
    }
    return self;
}

- (void)generateQuestion {
    super.answer = super.rightValue * super.leftValue;
    super.question = [NSString stringWithFormat:@"%ld * %ld = ?", (long)super.rightValue, super.leftValue];
}


@end
