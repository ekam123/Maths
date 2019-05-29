//
//  main.m
//  Maths
//
//  Created by Ekam Singh Dhaliwal on 2019-05-28.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "AdditionQuestion.h"
#import "SubtractionQuestion.h"
#import "DivisionQuestion.h"
#import "MultiplicationQuestion.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameON = YES;
        QuestionManager *questionManager = [[QuestionManager alloc] init];
        ScoreKeeper *score = [[ScoreKeeper alloc] init];
        InputHandler *userInput = [[InputHandler alloc] init];
        QuestionFactory *questionFactory = [[QuestionFactory alloc] init];
        
        while (gameON) {
            
            Question *question1 = [questionFactory generateRandomQuestion];
            [questionManager addQuestions:question1];
            NSLog(@"%@", [question1 question]);
        
            
            NSString *theInput = [userInput handleUserInput:@"What is the answer: "];
            
            if ([theInput isEqualToString:@"quit"]) {
                gameON = NO;
                break;
            }
            
            NSInteger userAnswer = [theInput intValue];
           
            if (userAnswer == [question1 answer]) {
                [score incrementRight];
                NSLog(@"Right!");
            }
            else {
                [score incrementWrong];
                NSLog(@"Wrong!"); 
            }
            NSLog(@"%@", [score giveScore]);
            NSLog(@"%@", [questionManager timeOutput]);
        }
    }
    return 0;
}
