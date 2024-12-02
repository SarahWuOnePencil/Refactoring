//
//  Customer.h
//  Refactoring
//
//  Created by SarahWu on 2024/12/2.
//
// 表示顾客

#import <Foundation/Foundation.h>
#import "Rental.h"

NS_ASSUME_NONNULL_BEGIN

@interface Customer : NSObject

@property (nonatomic, copy, readonly) NSString *name;
@property (nonatomic, strong, readonly) NSMutableArray *rentals;

- (void)addRental:(Rental *)rental;
- (instancetype)initWithName:(NSString *)name;
@end

NS_ASSUME_NONNULL_END
