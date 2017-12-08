//
//  ViewController.m
//  QHSafeException
//
//  Created by QianHan on 2017/12/5.
//  Copyright © 2017年 karl.luo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSArray *array1;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // ****************** NSDictionary ****************
//    NSString *dictValue = nil;
//    NSDictionary *dict = @{
//                           @"keet": dictValue,
//                           @"name": @"Qianhan",
//                           @"age": @"20"
//                           };
//    [dict setValue:dictValue forKey:@"sex"];
//    NSLog(@"$$$$$ %@", dict);
    
    // **************** NSMutableDictionary *************
    NSString *mDictValue = nil;
//    NSMutableDictionary *mDict = [NSMutableDictionary dictionaryWithObject:mDictValue forKey:@"mDict"];
    NSMutableDictionary *mDict = [NSMutableDictionary new];
    [mDict setObject:mDictValue forKey:@"keet"];
    [mDict setObject:@"Qianhan" forKey:@"name"];
    [mDict setObject:@"20" forKey:@"age"];

//    mDict[@"keet"] = mDictValue;
//    [mDict setObject:mDictValue forKeyedSubscript:@"keet"];
    [mDict removeObjectForKey:mDictValue];
    
    NSLog(@"$$$$$ %@", mDict);
    
    // **************** NSArray *************
//    NSString *aString = nil;
////    NSArray *array = @[@"a", @"b", aString];
//    NSArray *array = @[@"a", @"b"];
////    [array objectAtIndex:3];
////    [array objectAtIndexedSubscript:3];
//
////    NSMutableArray *tmpArray = [NSMutableArray new];
////    [tmpArray addObject:@"d"];
////    self.array1 = [tmpArray copy];
////    NSLog(@"#### %@", self.array1[1]);
//
////    NSLog(@"#### %@", array[4]);
//    NSLog(@"$$$$$ %@", array);
    
    // **************** NSMutableArray *************
//    NSString *mString = nil;
//    NSMutableArray *mArray = [NSMutableArray arrayWithObjects:@"a", @"b", @"c", mString, nil];
////    [mArray insertObject:mString atIndex:mArray.count];
////    [mArray insertObject:@"d" atIndex:mArray.count + 1];
////
////    [mArray objectAtIndex:mArray.count];
////    [mArray objectAtIndexedSubscript:mArray.count];
////
////    [mArray removeObjectAtIndex:mArray.count - 1];
////    [mArray exchangeObjectAtIndex:0 withObjectAtIndex:mArray.count];
//    
//    NSMutableArray *tmpArray = [NSMutableArray new];
//    [mArray removeAllObjects];
//    [tmpArray addObject:@"d"];
//    tmpArray = [mArray copy];
//    NSLog(@"#### %@", tmpArray[1]);
//    
////    NSLog(@"##### %@", mArray[mArray.count]);
////    NSLog(@"$$$$$ %@", mArray);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
