//
//  foriegnStockHolding.h
//  StockHolding
//
//  Created by John Lester Nuccio on 8/11/13.
//  Copyright (c) 2013 John Lester Nuccio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassStockHolding.h"


@interface foriegnStockHolding : ClassStockHolding
{
    float conversionRate;
}
@property float conversionRate;

@end
