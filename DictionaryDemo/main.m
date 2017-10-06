//
//  main.m
//  DictionaryDemo
//
//  Created by developer-30 on 06/10/17.
//  Copyright © 2017 developer-30. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        NSLog(@"****** IMUTABLE ******");
        NSDictionary *dict = [[NSDictionary alloc]initWithObjectsAndKeys:
                              @"vijay",@"fname",
                              @"mittal",@"lname",
                              @"aligarh",@"city",
                              @"9897985559",@"mobile_no",
                              nil];
        
        NSLog(@"%@",dict);
        
        
        
        NSLog(@"****** MUTABLE ******");
        NSMutableDictionary *dict1 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:
                                      @"vijay",@"fname",
                                      @"mittal",@"lname",
                                      @"aligarh",@"city",
                                      @"9897985559",@"mobile_no",
                                      nil];
        
        [dict1 setValue:@"developer" forKey:@"profession"];
        [dict1 setObject:@"abc" forKey:@"xyz"];
        
        NSLog(@"%@",dict1);
        
        
        NSLog(@"****** Object and Keys binding ******");
        
        NSArray *arr1 = [[NSArray alloc]initWithObjects:@"fname",@"lname",@"email",@"mobile_number", @"address",@"city",nil];
        
        NSArray *arr2 = [[NSArray alloc] initWithObjects:@"Arya",@"Jeswal",@"aryajeswal@gmail.com",@"9897985559", @"sector-63",@"Aligarh", nil];
        
        NSMutableDictionary *dict3 = [[NSMutableDictionary alloc]initWithObjects:arr2 forKeys:arr1];
        
        NSLog(@"%@",dict3);
        
    }
    return 0;
}
