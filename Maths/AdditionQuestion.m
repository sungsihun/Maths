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
        int num1 = arc4random_uniform(91) + 10;
        int num2 = arc4random_uniform(91) + 10;
        _question = [NSString stringWithFormat:@"%@ + %@ = ?", @(num1), @(num2)];
        NSLog(@"%@", _question);
        _answer = num1 + num2;
        _startTime = [NSDate date];
    }
    return self;
}

- (NSString*)evaluate:(int)inputAns {
    if (inputAns == self.answer) {
        _endTime = [NSDate date];
        return @"Right!";
    } else {
        _endTime = [NSDate date];
        return @"Wrong!";
    }
}

- (float)answerTime {
    NSTimeInterval timeDiff = [self.endTime timeIntervalSinceDate:self.startTime];
    return timeDiff;
}


@end
