//
//  AdditionQuestion.m
//  Maths
//
//  Created by NICE on 2018-07-31.
//  Copyright © 2018 NICE. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init {
    if (self = [super init]) {
        _rightValue = arc4random_uniform(91) + 10;
        _leftValue = arc4random_uniform(91) + 10;
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

- (void)generateQuestion {
    
}


@end
