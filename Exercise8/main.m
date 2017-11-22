//
//  main.m
//  Exercise8
//
//  Created by Tống Đăng Tình on 11/22/17.
//  Copyright © 2017 Tống Đăng Tình. All rights reserved.
//-------------------------------------

/*
    The add: , subtruct:, mulply:, and divide:, methods from Program 4.6 do not return a value. Modify these methods to return value of the accumulator after the computation is performed. Test the new methods
 */

#import <Foundation/Foundation.h>

// _____________________________________________

//    interface section
@interface Calculator : NSObject
{
    double accumulator;
}
-(void) setAccumulator: (double)   value;
-(void) clear;
-(double) accumulator;
-(double) add: (double) value;
-(double) subtruct: (double) value;
-(double) mulply: (double)  value;
-(double) divide: (double) value;


@end

//   implementation section
@implementation Calculator


//  setAccumulator method
-(void) setAccumulator:(double)value
{
    accumulator = value;
}


// Clear method
-(void) clear
{
    accumulator = 0;
}

-(double) accumulator
{
    return  accumulator;
}
// add method
-(double) add: (double) value
{
    accumulator+=value;
    return accumulator;
}
// subtruct method

-(double) subtruct:(double)value
{
    accumulator-=value;
    return accumulator;
}
// mulply method
-(double) mulply:(double)value
{
    accumulator*=value;
    return accumulator;
}

// Divide method
-(double) divide:(double)value
{
    accumulator/=value;
    return accumulator;
}
@end

//  Program section
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        Calculator *myCalculator =[[Calculator alloc] init];
        // setAccumulator
        [myCalculator setAccumulator: 10.];
        //Addition
     NSLog(@"The addition is %g",   [myCalculator add:100.0]);
      //  NSLog(@"The addition = ",[myCalculator accumulator]);
        // Subtruction
        NSLog(@"The subtruct  is %g",[myCalculator subtruct:10 ]);
        NSLog(@"The mulply is %g",[myCalculator mulply:2]);
        NSLog(@"The divide is %g",[myCalculator divide:4]);
        
    }
    return 0;
}
