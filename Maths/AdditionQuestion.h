//
//  AdditionQuestion.h
//  Maths
//
//  Created by Ekam Singh Dhaliwal on 2019-05-28.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AdditionQuestion : NSObject

@property (nonatomic) NSInteger answer;
@property NSString *question;
@property NSDate *startTime;
@property NSDate *endTime;

-(NSTimeInterval)answerTime;


@end

NS_ASSUME_NONNULL_END
