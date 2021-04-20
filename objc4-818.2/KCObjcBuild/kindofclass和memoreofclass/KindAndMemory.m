//
//  KindAndMemory.m
//  KCObjcBuild
//
//  Created by alieen on 2021/4/20.
//

#import "KindAndMemory.h"
#import "LGPerson.h"

@implementation KindAndMemory

- (void)methods {
    id obj = [NSObject class];
    NSLog(@"obj---%p",obj);
    Class class = [NSObject class];
    NSLog(@"class---%p",class);
    // isKindOfClass 和 isMemberOfClass
    BOOL re1 = [(id)[NSObject class] isKindOfClass:[NSObject class]];
    BOOL re2 = [(id)[NSObject class] isMemberOfClass:[NSObject class]];
    BOOL re3 = [[LGPerson class] isKindOfClass:[LGPerson class]];
    BOOL re4 = [(id)[LGPerson class] isMemberOfClass:[LGPerson class]];
    NSLog(@" re1 :%hhd\n re2 :%hhd\n re3 :%hhd\n re4 :%hhd\n",re1,re2,re3,re4);
    
    BOOL re5 = [(id)[NSObject alloc] isKindOfClass:[NSObject class]];
    BOOL re6 = [(id)[NSObject alloc] isMemberOfClass:[NSObject class]];
    BOOL re7 = [(id)[LGPerson alloc] isKindOfClass:[LGPerson class]];
    BOOL re8 = [(id)[LGPerson alloc] isMemberOfClass:[LGPerson class]];
    NSLog(@" re5 :%hhd\n re6 :%hhd\n re7 :%hhd\n re8 :%hhd\n",re5,re6,re7,re8);
}

@end
