//
//  main.m
//  Maths
//
//  Created by Ekam Singh Dhaliwal on 2019-05-28.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        while (1) {
            NSLog(@"Print a number: ");
            char input[255];
            fgets(input, 255, stdin);
            
            NSString *theInput = [NSString stringWithCString:input encoding:NSUTF8StringEncoding];
        
            //getting rid of whitespace
            theInput = [theInput stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            NSLog(@"%@kjerkj", theInput);
                        
        }
        
        
    }
    return 0;
}
