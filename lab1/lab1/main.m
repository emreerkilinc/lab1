//
//  main.m
//  lab1
//
//  Created by emre on 2018-09-23.
//  Copyright © 2018 emre. All rights reserved.
//

#import <Foundation/Foundation.h>

NSString *getUserInput(NSString *promp) {
    char inputChars[255];
    NSLog(@"%@",  promp);
    fgets(inputChars, 255, stdin);
    
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    return  [inputString  stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
};

int main(int argc, const char * argv[])  {
    @autoreleasepool {
       
        Boolean isWorking = true;
        
        while (isWorking) {
            NSString *input =  getUserInput(@"write: ");
            
            NSString *options = getUserInput(@"Choose the option:\n 1.Upperccase\n 2.Lowerccase\n3.Integer\n4.Canadalize\n5.Respond\n6.De-space-it\n q. Quit");
            NSString *number = [input substringFromIndex: [input length] ];
            if([options  isEqualToString:@"1"]) {
                NSLog(@"%@",[input uppercaseString]);
            } else if ([options isEqualToString:@"2"]) {
                NSLog(@"%@", [input lowercaseString]);
            } else if ([options isEqualToString:@"3"]) {
                NSString *canadianize = [input stringByAppendingString: @", eh?"];
                NSLog(@"%@", canadianize);
            } else if ([options isEqualToString:@"4"])  {
                NSString *canadianize = [input stringByAppendingString: @", eh?"];
                NSLog(@"%@", canadianize);
            } else if ([options isEqualToString:@"5"])  {
                NSString *last = [input substringFromIndex: [input length] - 1];
                if ([last isEqualToString:@"?"]) {
                    NSLog(@"%@",  @"I don't know");
                } else if ([last isEqualToString:@"!"]) {
                    NSLog(@"%@", @"Whoa, calm down");
                }
            } else if ([options isEqualToString:@"6"])   {
                NSString *despace = [input stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                NSLog(@"%@", despace);
            } else if ([options isEqualToString:@"q"]) {
                isWorking =false;
            }
            
        }
        return 0;
    }
}
