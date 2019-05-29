//
//  QuestionFactory.m
//  Maths
//
//  Created by Ekam Singh Dhaliwal on 2019-05-29.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion",@"MultiplicationQuestion", @"DivisionQuestion"];
    }
    return self;
}

-(Question *)generateRandomQuestion {
    int randomNumber = arc4random_uniform(3);
    NSString *className = self.questionSubclassNames[randomNumber];
    return [[NSClassFromString(className) alloc]init];
}

@end
