//
//  Movie.h
//  Refactoring
//
//  Created by SarahWu on 2024/12/2.
//
// 简单的纯数据类

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSUInteger, MovieType) {
    MovieType_regular = 0,
    MovieType_newRelease = 1,
    MovieType_childrens = 2
};
@interface Movie : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, assign) MovieType priceCode;

@end

NS_ASSUME_NONNULL_END
