//
//  ScoreKeeper.m
//  Maths
//
//  Created by NICE on 2018-07-31.
//  Copyright © 2018 NICE. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper


- (NSString*)getScore:(NSString*)result {
    if ([result isEqual:@"Right!"]) {
        self.right = self.right + 1;
    } else {
        self.wrong = self.wrong + 1;
    }
    NSString *scoreString = [NSString stringWithFormat:@"score: %@ right, %@ wrong --- %.1f %%", @(self.right), @(self.wrong), self.right/(self.right + self.wrong)*100];
    return scoreString;
}

@end
