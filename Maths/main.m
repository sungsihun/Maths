//
//  main.m
//  Maths
//
//  Created by NICE on 2018-07-31.
//  Copyright © 2018 NICE. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        while(TRUE) {
            NSLog(@"MATHS!!");
            
            AdditionQuestion *maths = [[AdditionQuestion alloc] init];
            InputHandler *in = [[InputHandler alloc] init];
            NSString *input = [in getInput];
            
            
//            char inputNum[255];
//
//            printf("input : ");
//            fgets(inputNum, 255, stdin);
//
//            NSString *inputAns = [NSString stringWithCString:inputNum encoding:NSUTF8StringEncoding];
//
//            inputAns = [inputAns stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            if ([input isEqual: @"quit"]) {
                break;
            }
            
            NSLog(@"%@", [maths evaluate:[input intValue]]);
        }
    }
    return 0;
}
