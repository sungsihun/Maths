//
//  QuestionFactory.h
//  Maths
//
//  Created by NICE on 2018-08-01.
//  Copyright © 2018 NICE. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionFactory : NSObject

@property (nonatomic) NSArray *questionSubclassNames;

- (Question *)generateRandomQuestion;

@end
