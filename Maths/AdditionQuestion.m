//
//  AdditionQuestion.m
//  Maths
//
//  Created by Ekam Singh Dhaliwal on 2019-05-29.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init {
    if (self = [super init]) {
        [self generateQuestion];
    }
    return self;
}

- (void)generateQuestion {
       super.question = [NSString stringWithFormat:@"%d + %d ?",super.leftValue, super.rightValue];
    super.answer = super.leftValue + super.rightValue;

}

@end
