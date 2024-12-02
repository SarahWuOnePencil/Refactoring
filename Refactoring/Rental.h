//
//  Rental.h
//  Refactoring
//
//  Created by SarahWu on 2024/12/2.
//
// 表示某个顾客租了一部影片

#import <Foundation/Foundation.h>
#import "Movie.h"

NS_ASSUME_NONNULL_BEGIN

@interface Rental : NSObject

@property (nonatomic, strong) Movie *movie;
@property (nonatomic, assign) int daysRented;

@end

NS_ASSUME_NONNULL_END
