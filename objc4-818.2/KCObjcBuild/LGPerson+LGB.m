//
//  LGPerson+LGB.m
//  KCObjc
//
//  Created by cooci on 2020/10/9.
//

#import "LGPerson+LGB.h"

@implementation LGPerson (LGB)

// load 运行时
// 主类 没有实现 分类
// 2*2 = 4 种情况 
//4: 非懒加载类 + 懒加载分类 : read_image 就加载数据
// 只要有一个分类是  非懒加载分类 所有都会是  -  rwe  - 懒加载 重新去处理 LGPerson
//+ (void)load{
//
//}

- (void)kc_instanceMethod1{
    NSLog(@"%s",__func__);
}

- (void)cateB_4{
    NSLog(@"%s",__func__);
}
- (void)cateB_5{
    NSLog(@"%s",__func__);
}
- (void)cateB_6{
    NSLog(@"%s",__func__);
}

@end
