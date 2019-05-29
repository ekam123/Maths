//
//  QuestionManager.m
//  Maths
//
//  Created by Ekam Singh Dhaliwal on 2019-05-29.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [[NSMutableArray alloc] init]; 
    }
    return self;
}

-(void)addQuestions:(Question *)question{
    [self.questions addObject:question]; 
}


-(int)totalTime {
    int totalTime = 0;
    for (Question *quest in self.questions) {
        double tmpTime = [quest answerTime];
        totalTime = round(totalTime + tmpTime);
    }
    return totalTime; 
}

-(NSString *)timeOutput {
    int totalSeconds = self.totalTime;
    int averageTime = totalSeconds / round([self.questions count]);
    return [NSString stringWithFormat:@"total time: %ds, average time: %ds", totalSeconds, averageTime];
}

@end
