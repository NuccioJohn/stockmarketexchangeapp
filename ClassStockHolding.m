//
//  ClassStockHolding.m
//  StockHolding
//
//  Created by John Lester Nuccio on 8/10/13.
//  Copyright (c) 2013 John Lester Nuccio. All rights reserved.
//

#import "ClassStockHolding.h"
#import "Portfolio.h"

@implementation ClassStockHolding

@synthesize purchaseSharePrice, currentSharePrice, numberOfShares;

-(float)costInDollars
{
    float p = [self purchaseSharePrice];
    return [self numberOfShares] * p;
}
-(float)valueInDollars
{
    float c = [self currentSharePrice];
    return [self numberOfShares] * c;
}

@end
