//
//  Portfolio.h
//  StockHolding
//
//  Created by John Lester Nuccio on 8/21/13.
//  Copyright (c) 2013 John Lester Nuccio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassStockHolding.h"

@interface Portfolio : NSObject
{
    int portfolioID;
    NSMutableArray *stocks;
}

@property int portfolioID;
-(void) addStockObject:(ClassStockHolding*)s;
-(unsigned int) valueOfStocks;
@end
