//
//  AdditionQuestion.m
//  Maths
//
//  Created by Ekam Singh Dhaliwal on 2019-05-28.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        int num1 = 10 + arc4random_uniform(91);
        int num2 = 10 + arc4random_uniform(91);
        _question = [NSString stringWithFormat:@"%d + %d ?", num1, num2];
        _answer = num1 + num2;
        _startTime = [NSDate date]; 
    }
    return self;
}

- (NSTimeInterval)answerTime {
    NSTimeInterval timeToAnswer = [self.endTime timeIntervalSinceDate:self.startTime];
    return timeToAnswer;
}

-(NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}

@end
