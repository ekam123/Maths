//
//  ScoreKeeper.m
//  Maths
//
//  Created by Ekam Singh Dhaliwal on 2019-05-28.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (instancetype)init
{
    self = [super init];
    if (self) {
        _right = 0;
        _wrong = 0; 
    }
    return self;
}

- (NSString *)giveScore {
    int total = self.right + self.wrong;
    NSString *theScore = [NSString stringWithFormat: @" score: %d right, %d wrong ---- %d%%", self.right, self.wrong, 100 * self.right / total ];
    return theScore;
}

- (void) incrementRight {
    self.right = self.right + 1;
}

- (void) incrementWrong {
    self.wrong = self.wrong + 1; 
}

@end
