//
//  Portfolio.m
//  StockHolding
//
//  Created by John Lester Nuccio on 8/21/13.
//  Copyright (c) 2013 John Lester Nuccio. All rights reserved.
//

#import "Portfolio.h"
#import "ClassStockHolding.h"

@implementation Portfolio
@synthesize portfolioID;
-(void) addStockObject:(ClassStockHolding*)s;
{
    //is the array nil?
    if(!stocks){
        stocks=[[NSMutableArray alloc] init];
    }
    [stocks addObject:s];
     }
        -(unsigned int)valueOfStocks
     {
         unsigned int sum=0;
         for (ClassStockHolding*s in stocks){
             sum+=[s valueInDollars];
         }
         return sum;
     }

@end
