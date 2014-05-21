//
//  ClassStockHolding.h
//  StockHolding
//
//  Created by John Lester Nuccio on 8/10/13.
//  Copyright (c) 2013 John Lester Nuccio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClassStockHolding : NSObject
{
float purchaseSharePrice;
float currentSharePrice;
int numberOfShares;
}

@property float purchaseSharePrice;
@property float currentSharePrice;
@property int numberOfShares;

-(float)costInDollars; // purchaseSharePrice * numberOfShares
-(float)valueInDollars; // currentSharePrice * numberOfShares


@end
