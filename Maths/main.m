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
#import "QuestionManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameON = YES;
        QuestionManager *questionList = [[QuestionManager alloc] init];
        ScoreKeeper *score = [[ScoreKeeper alloc] init];
        InputHandler *userInput = [[InputHandler alloc] init];
        
        while (gameON) {
            
            AdditionQuestion *question1 = [[AdditionQuestion alloc] init];
//            [[questionList questions] addObject:question1];
            [questionList addQuestions:question1]; 
            NSLog(@"%@", [question1 question]);
        
            
            
            NSString *theInput = [userInput handleUserInput:@"What is the answer: "];
            
            if ([theInput isEqualToString:@"quit"]) {
                gameON = NO;
                break;
            }
            
            NSInteger userAnswer = [theInput intValue];
           
            if (userAnswer == [question1 answer]) {
                NSLog(@"%f", [question1 answerTime]);
                [score incrementRight];
            }
            else {
                NSLog(@"%f", [question1 answerTime]); 
                [score incrementWrong]; 
            }
            NSLog(@"%@", [score giveScore]);
        
        
        }
    }
    return 0;
}
