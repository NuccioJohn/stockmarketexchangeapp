//
//  foriegnStockHolding.m
//  StockHolding
//
//  Created by John Lester Nuccio on 8/11/13.
//  Copyright (c) 2013 John Lester Nuccio. All rights reserved.
//

#import "foriegnStockHolding.h"
#import "Portfolio.h"

@implementation foriegnStockHolding

@synthesize conversionRate;

-(float)costInDollars
{
    float foriegnPSP = [super costInDollars];
    return foriegnPSP * conversionRate;
}
-(float)valueInDollars
{
    float foriegnCSP = [super valueInDollars];
    return foriegnCSP * conversionRate;
}

@end

