//
//  ScoreKeeper.h
//  Maths
//
//  Created by Ekam Singh Dhaliwal on 2019-05-28.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScoreKeeper : NSObject

@property int right;
@property int wrong;

- (NSString *)giveScore;

- (void) incrementRight;

- (void) incrementWrong;

@end

NS_ASSUME_NONNULL_END
