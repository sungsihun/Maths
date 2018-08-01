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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ScoreKeeper *score = [[ScoreKeeper alloc] init];
        QuestionManager *manager = [[QuestionManager alloc] init];
        
        while(TRUE) {
            NSLog(@"\n\nMATHS!!");
            
            Question *maths = [[Question alloc] init];
            NSString *input = [InputHandler getInput];
            
            
            if ([input isEqual: @"quit"]) {
                break;
            }
            
            NSLog(@"%@", [maths evaluate:[input intValue]]);
            NSLog(@"%@", [score getScore:[maths evaluate:[input intValue]]]);
            
            [manager.questions addObject:maths];
            NSLog(@"%@", [manager timeOutput]);
        }
    }
    return 0;
}
