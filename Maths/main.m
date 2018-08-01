//
//  main.m
//  Maths
//
//  Created by NICE on 2018-07-31.
//  Copyright © 2018 NICE. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        NSLog(@"MATHS!\n\n\n");
        ScoreKeeper *score = [[ScoreKeeper alloc] init];
        QuestionManager *questionManager = [[QuestionManager alloc] init];
        QuestionFactory *questionFactory = [[QuestionFactory alloc] init];
        
        while(gameOn) {
            Question *maths = [questionFactory generateRandomQuestion];
            NSLog(@"%@", maths.question);
            
            NSString *input = [InputHandler getInput];
            
            
            if ([input isEqual: @"quit"]) {
                gameOn = NO;
            }
            
            NSLog(@"%@", [maths evaluate:[input intValue]]);
            NSLog(@"%@", [score getScore:[maths evaluate:[input intValue]]]);
            
            [questionManager.questions addObject:maths];
            NSLog(@"%@", [questionManager timeOutput]);
        }
    }
    return 0;
}
