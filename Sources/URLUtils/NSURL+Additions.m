//
//  NSURL+Additions.m
//

#import "NSURL+Additions.h"

@implementation NSURL (Additions)

- (NSDictionary<NSString *, NSString *> * _Nonnull)queryParams {
    NSMutableDictionary *tempDic = [NSMutableDictionary dictionary];
    NSArray *subArray = [self.query componentsSeparatedByString:@"&"];
    for (int i = 0 ; i < subArray.count ; i++) {
        NSArray *dicArray = [subArray[i] componentsSeparatedByString:@"="];
        if (dicArray.count < 2) { continue; }
        tempDic[dicArray[0]] = dicArray[1];
    }
    return tempDic;
}

@end
