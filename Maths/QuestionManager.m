//
//  QuestionManager.m
//  Maths
//
//  Created by NICE on 2018-08-01.
//  Copyright © 2018 NICE. All rights reserved.
//

#import "QuestionManager.h"
#import "Question.h"

@implementation QuestionManager

- (instancetype)init {
    if (self = [super init]) {
        _questions = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSString *)timeOutput {
    float sum = 0;
    
    for (Question* t in self.questions) {
        sum += t.answerTime;
    }
    
    float avgTime = sum / [self.questions count];
    
    NSString *timeOutputString = [NSString stringWithFormat:@"total time: %.2f, average time: %.2f", sum, avgTime];
    return timeOutputString;
}

@end
