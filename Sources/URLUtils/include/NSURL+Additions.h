//
//  NSURL+Additions.h

@import Foundation;

NS_ASSUME_NONNULL_BEGIN

@interface NSURL (Additions)

@property (copy, readonly) NSDictionary<NSString *, NSString *> *queryParams;

@end

NS_ASSUME_NONNULL_END
