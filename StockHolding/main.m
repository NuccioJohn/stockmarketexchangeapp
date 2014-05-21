//
//  main.m
//  StockHolding
//
//  Created by John Lester Nuccio on 8/10/13.
//  Copyright (c) 2013 John Lester Nuccio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassStockHolding.h"
#import "foriegnStockHolding.h"
#import "Portfolio.h"
int main(int argc, const char * argv[])
{
    
//Create Portfolio
Portfolio *myOnlyPortfolio=[[Portfolio alloc] init];
[myOnlyPortfolio setPortfolioID:1];

for(int i=0; i<10; i++)
{
    //Let's create a stock object
    ClassStockHolding *thisstock = [[ClassStockHolding alloc] init];
    
    //Assign stock values
    [thisstock setNumberOfShares:i*100];
    [thisstock setPurchaseSharePrice:100-i];
    [thisstock setCurrentSharePrice:100+i];
    
    //Add Stock to the array
    [myOnlyPortfolio addStockObject:thisstock];
    int totalValueOfStock = [myOnlyPortfolio valueOfStocks];
    NSLog(@"My total value is %d", totalValueOfStock);
    {

    // Created 5 ClassStockHolding Objects
    ClassStockHolding *stock1 = [[ClassStockHolding alloc] init];
    ClassStockHolding *stock2 = [[ClassStockHolding alloc] init];
    ClassStockHolding *stock3 = [[ClassStockHolding alloc] init];
    ClassStockHolding *stock4 = [[ClassStockHolding alloc] init];
    ClassStockHolding *stock5 = [[ClassStockHolding alloc] init];
    foriegnStockHolding *stock6 = [[foriegnStockHolding alloc] init];
    
    // Set Purchase Share Price
    [stock1 setPurchaseSharePrice:10.13];
    [stock2 setPurchaseSharePrice:12.89];
    [stock3 setPurchaseSharePrice:11.11];
    [stock4 setPurchaseSharePrice:11.89];
    [stock5 setPurchaseSharePrice:12.90];
    [stock6 setPurchaseSharePrice:15.00];
    
    // Set Current Share Price
    [stock1 setCurrentSharePrice:6.89];
    [stock2 setCurrentSharePrice:8.90];
    [stock3 setCurrentSharePrice:10.89];
    [stock4 setCurrentSharePrice:7.89];
    [stock5 setCurrentSharePrice:9.49];
    [stock6 setCurrentSharePrice:18.00];
    
    //Set Number of Shares =
    [stock1 setNumberOfShares:90];
    [stock2 setNumberOfShares:78];
    [stock3 setNumberOfShares:67];
    [stock4 setNumberOfShares:78];
    [stock5 setNumberOfShares:180];
    [stock6 setNumberOfShares:90];
    
    // Set Conversion Rate
    [stock6 setConversionRate:1.67];
    
    
   

// Create an empty array
NSMutableArray *stockList = [NSMutableArray array];

//Added the NSString Objects to the array
[stockList addObject:stock1];
[stockList addObject:stock2];
[stockList addObject:stock3];
[stockList addObject:stock4];
[stockList addObject:stock5];
[stockList addObject:stock6];

    // Iterate through the array printing out the value of each
    for (ClassStockHolding *stock in stockList) {
        NSLog(@"Purchase Share Price: %.2f , Current Share Price: %.2f , Number Of Share: %d , Cost In Dollars: %.2f , Value In Dollars: %.2f", [stock purchaseSharePrice], [stock currentSharePrice], [stock numberOfShares], [stock costInDollars], [stock valueInDollars]);
    }
    }
        return 0;
}
}


