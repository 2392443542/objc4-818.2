//
//  main.m
//  KCObjcBuild
//
//  Created by cooci on 2021/1/5.


// KC 重磅提示 调试工程很重要 源码直观就是爽
// ⚠️编译调试不能过: 请你检查以下几小点⚠️
// ①: enable hardened runtime -> NO
// ②: build phase -> denpendenice -> objc
// 爽了之后,还来一个 👍

#import <Foundation/Foundation.h>
#import "LGPerson.h"
//#import "LXAnimal.h"
#import <objc/runtime.h>
#import "LGPerson+LGA.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        LGPerson *objc1 = [LGPerson alloc];
    
//        [LGPerson eat];
//        [objc1  sleep];
//        [objc1  kc_instanceMethod1];
//        [objc1  sayHello1];
    }
    return 0;
}




