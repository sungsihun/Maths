//
//  main.m
//  Maths
//
//  Created by NICE on 2018-07-31.
//  Copyright © 2018 NICE. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        while(TRUE) {
            AdditionQuestion *maths = [[AdditionQuestion alloc] init];
            
            char inputNum[255];
            
            printf("input : ");
            fgets(inputNum, 255, stdin);
            
            NSString *result = [NSString stringWithCString:inputNum encoding:NSUTF8StringEncoding];
            
            result = [result stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"%@", result);
        }
        
        
        
    }
    return 0;
}
