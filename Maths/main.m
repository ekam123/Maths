//
//  main.m
//  Maths
//
//  Created by Ekam Singh Dhaliwal on 2019-05-28.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h" 

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameON = YES;
        ScoreKeeper *score = [[ScoreKeeper alloc] init];
        
        while (gameON) {
            
            AdditionQuestion *question1 = [[AdditionQuestion alloc] init];
            NSLog(@"%@", [question1 question]);
        
            
            InputHandler *userInput = [[InputHandler alloc] init];
            NSString *theInput = [userInput handleUserInput:@"What is the answer: "];
            
            if ([theInput isEqualToString:@"quit"]) {
                gameON = NO;
                break;
            }
            
            NSInteger userAnswer = [theInput intValue];
           
            if (userAnswer == [question1 answer]) {
                [score incrementRight];
            }
            else {
                [score incrementWrong]; 
            }
            NSLog(@"%@", [score giveScore]);
        
        
        }
    }
    return 0;
}
