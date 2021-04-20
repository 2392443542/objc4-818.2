//
//  objc_class的bits.m
//  KCObjcBuild
//
//  Created by alieen on 2021/4/20.
//

#import "objc_class_bits.h"
#import "LGPerson.h"
#import "LXAnimal.h"
#import <objc/runtime.h>

struct Student {
    double a; // 8 （0，7）
    int b; // 4 (8,11)
    char c; // 1 (12)
    short d; // 2 (14,15) -16
    
} student;

// 32
struct Student1 {
    double a;
    int b;
    char c;
    short d;
    struct Student stu;  // 16
} student1;


@implementation objc_class_bits

- (void)methods {
//            NSObject *objc = [NSObject alloc];
//            NSObject *obj3 = [NSObject alloc];
            LGPerson *objc1 = [LGPerson alloc];
            const char *className = class_getName(objc1.class);
            Class metaClass = objc_getMetaClass(className);
            Method method5 = class_getClassMethod(metaClass, @selector(say888));
            objc_getClass(className);
            objc1.name = @"李文静";
            objc1.nickName = @"alieen";
            objc1.uid = @"123456";
            objc1.ava = @"https://";
            LGPerson *objc2 = [objc1 init];
            objc2.name = @"李文静2";
            objc2.nickName = @"alieen2";
            objc2.uid = @"1234562";
            objc2.ava = @"https://2";
            LGPerson *objc3 = [objc1 init];
            objc3.name = @"李文静3";
            objc3.nickName = @"alieen3";
            objc3.uid = @"1234563";
            objc3.ava = @"https://3";
            NSLog(@"%@ - %p - %p",objc1,objc1,&objc1);
            NSLog(@"%@ - %p - %p",objc2,objc2,&objc2);
            NSLog(@"%@ - %p - %p",objc3,objc3,&objc3);
            NSLog(@"%lu-%lu",sizeof(student),sizeof(student1));
            object_getClass(objc1);
            LXAnimal *objc4 = [LXAnimal alloc];
    /**
     (lldb)  po objc1 // 获取objc1 对象的地址(内存空间的地址)
     
     <LGPerson: 0x1014260e0>
     
     (lldb) x/4gx 0x1014260e0 获取objc1 内存的内容 0x031d8001000082d5 为isa 对象的内存分布
     0x1014260e0: 0x031d8001000082d5 0x0000000100004038
     0x1014260f0: 0x0000000000000000 0x0000000000000000
     
     (lldb)    po 0x031d8001000082d5 & 0x00007ffffffffff8ULL // 获取isa关联的类信息 当前的类
     LGPerson
     (lldb)  p/x  0x031d8001000082d5 & 0x00007ffffffffff8ULL // 获取isa关联类信息的地址
     
     (unsigned long long) $21 = 0x00000001000082d0
     
     (lldb)  x/4gx 0x00000001000082d0 类的内存分布
     
     0x1000082d0: 0x00000001000082a8 0x000000010036a140
     0x1000082e0: 0x000000010070f5b0 0x000880340000000f
     */
    /**
     class_data_bits_t
     (lldb) x/4gx LGPerson.class
     0x100008360: 0x0000000100008338 0x000000010036a140
     0x100008370: 0x0000000101c09b60 0x0001803400000003
     
     (lldb) p (class_data_bits_t *)0x100008380
     (class_data_bits_t *) $3 = 0x0000000100008380
     (lldb) p $3->data()
     (class_rw_t *) $4 = 0x0000000101544060
     (lldb) p *$4
     (class_rw_t) $5 = {
     flags = 2148007936
     witness = 0
     ro_or_rw_ext = {
     std::__1::atomic<unsigned long> = {
     Value = 4295000184
     }
     }
     firstSubclass = nil
     nextSiblingClass = nil
     }
     p $4->properties()
     (const property_array_t) $7 = {
     list_array_tt<property_t, property_list_t, RawPtr> = {
     = {
     list = {
     ptr = 0x0000000100008228
     }
     arrayAndFlag = 4295000616
     }
     }
     }
     (lldb) p $7.list.ptr
     (property_list_t *const) $9 = 0x0000000100008228
     (lldb) p $7.list
     (const RawPtr<property_list_t>) $8 = {
     ptr = 0x0000000100008228
     }
     (lldb) p $7.list.ptr
     (property_list_t *const) $9 = 0x0000000100008228
     (lldb) p *$9
     (property_list_t) $10 = {
     entsize_list_tt<property_t, property_list_t, 0, PointerModifierNop> = (entsizeAndFlags = 16, count = 4)
     }
     */
    
}

@end
