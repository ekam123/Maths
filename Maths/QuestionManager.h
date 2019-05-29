//
//  QuestionManager.h
//  Maths
//
//  Created by Ekam Singh Dhaliwal on 2019-05-29.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

NS_ASSUME_NONNULL_BEGIN

@interface QuestionManager : NSObject

@property NSMutableArray *questions; 

-(void)addQuestions:(AdditionQuestion *)question;

@end

NS_ASSUME_NONNULL_END
