//
//  LGPerson.m
//  KCObjc
//
//  Created by Cooci on 2020/7/24.
//

#import "LGPerson.h"

@implementation LGPerson
//+ (instancetype)allocWithZone:(struct _NSZone *)zone  {
//    return [super allocWithZone:zone];
//}
- (void)sleep {
    NSLog(@"睡觉");
}
+ (void)eat {
    NSLog(@"吃饭");
}
@end
