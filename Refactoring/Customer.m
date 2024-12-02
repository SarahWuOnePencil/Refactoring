//
//  Customer.m
//  Refactoring
//
//  Created by SarahWu on 2024/12/2.
//

#import "Customer.h"

@interface Customer ()

@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) NSMutableArray *rentals;
@end

@implementation Customer

- (instancetype)init {
    if (self = [super init]) {
        _rentals = [NSMutableArray array];
    }
    return self;
}

- (instancetype)initWithName:(NSString *)name {
    if (self = [self init]) {
        _name = name;
    }
    return self;
}

- (void)addRental:(Rental *)rental {
    [_rentals addObject:rental];
}

- (NSString *)statement {
    double totalAmount = 0;
    int frequentRenterPoints = 0;
    NSMutableArray *rentals = _rentals;
    NSString *result = [NSString stringWithFormat:@"Rental record for %@ \n",_name];
   
    for (Rental *each in _rentals) {
        double thisAmount = 0;
        
        switch (each.movie.priceCode) {
            case MovieType_regular:
                thisAmount += 2;
                if (each.daysRented > 2) {
                    thisAmount += (each.daysRented - 2) * 1.5;
                }
                break;
            case MovieType_newRelease:
                thisAmount += each.daysRented * 3;
                break;
            case MovieType_childrens:
                thisAmount += 1.5;
                if (each.daysRented > 3) {
                    thisAmount += (each.daysRented - 3) * 1.5;
                }
                break;
            default:
                break;
        }
        
        // add frequent renter points
        frequentRenterPoints ++;
        // add bonus for a two day new release rental
        if (each.movie.priceCode == MovieType_newRelease && each.daysRented > 1) {
            frequentRenterPoints ++;
        }
        
        // show figures for this rental
        result = [NSString stringWithFormat:@"%@, %f",each.movie.title,thisAmount];
        totalAmount += thisAmount;
    }
    
    return result;
}
@end
