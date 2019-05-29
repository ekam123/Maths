//
//  Question.m
//  Maths
//
//  Created by Ekam Singh Dhaliwal on 2019-05-28.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init
{
    self = [super init];
    if (self) {
        _leftValue = 10 + arc4random_uniform(91);
        _rightValue = 10 + arc4random_uniform(91);
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

-(void)generateQuestion {
    
}

@end
