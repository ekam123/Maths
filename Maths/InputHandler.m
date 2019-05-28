//
//  InputHandler.m
//  Maths
//
//  Created by Ekam Singh Dhaliwal on 2019-05-28.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

- (NSString *)handleUserInput:(NSString *)userInput {
    
    NSLog(@"%@", userInput);
    
    char input[5];
    fgets(input, 5, stdin);
    //
    NSString *theInput = [NSString stringWithCString:input encoding:NSUTF8StringEncoding];
    
    //getting rid of whitespace
    theInput = [theInput stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return theInput; 
}

@end
