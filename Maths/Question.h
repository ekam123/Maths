//
//  Question.h
//  Maths
//
//  Created by Ekam Singh Dhaliwal on 2019-05-28.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Question : NSObject

@property (nonatomic) NSInteger answer;
@property (nonatomic, strong) NSString *question;
@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic, strong) NSDate *endTime;
@property (nonatomic) int rightValue;
@property (nonatomic) int leftValue;


-(NSTimeInterval)answerTime;

-(void)generateQuestion; 

@end

NS_ASSUME_NONNULL_END
