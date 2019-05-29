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

-(void)addQuestions:(AdditionQuestion *)question{
    [self.questions addObject:question]; 
}

@end
