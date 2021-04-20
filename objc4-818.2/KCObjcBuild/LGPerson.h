//
//  LGPerson.h
//  KCObjc
//
//  Created by Cooci on 2020/7/24.
//

#import <Foundation/Foundation.h>
#import "LXAnimal.h"

NS_ASSUME_NONNULL_BEGIN

// 8 + 8 + 8 + 8 + 8 
@interface LGPerson : LXAnimal
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *nickName;
@property (nonatomic, strong) NSString *uid;
@property (nonatomic, strong) NSString *ava;
//@property (nonatomic, strong) NSString *av1;

- (void)sleep;
+ (void)eat;
@end

NS_ASSUME_NONNULL_END
