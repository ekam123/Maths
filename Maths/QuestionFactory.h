//
//  QuestionFactory.h
//  Maths
//
//  Created by Ekam Singh Dhaliwal on 2019-05-29.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

NS_ASSUME_NONNULL_BEGIN

@interface QuestionFactory : NSObject
@property NSArray *questionSubclassNames; 

-(Question *)generateRandomQuestion;

@end

NS_ASSUME_NONNULL_END
