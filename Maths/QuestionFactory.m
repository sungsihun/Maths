//
//  QuestionFactory.m
//  Maths
//
//  Created by NICE on 2018-08-01.
//  Copyright © 2018 NICE. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init {
    if (self = [super init]) {
        _questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
    }
    return self;
}

- (Question *)generateRandomQuestion {
    NSString *randomString = [self.questionSubclassNames objectAtIndex:arc4random_uniform(4)];
    return [[NSClassFromString(randomString) alloc] init];
}

@end
