//
//  InputHandler.m
//  Maths
//
//  Created by NICE on 2018-07-31.
//  Copyright © 2018 NICE. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

- (NSString*)getInput {
    char inputNum[255];
    
    printf("input : ");
    fgets(inputNum, 255, stdin);
    
    NSString *inputAns = [NSString stringWithCString:inputNum encoding:NSUTF8StringEncoding];
    
    inputAns = [inputAns stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return inputAns;
}

@end
