//
//  TestFunction.m
//  unit-test
//
//  Created by Alex on 4/17/14.
//  Copyright (c) 2014 Alex. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "FirstFunction.h"

@interface TestFunction : XCTestCase {
    @private
    FirstFunction *firstFunction;
}

@end


@implementation TestFunction

- (void)setUp {
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
    firstFunction = [[FirstFunction alloc] init];
}

- (void)tearDown {
    firstFunction = nil;
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

- (void)testDone {
    // Выполниться без проблем, кака как 2 * 2 = 4 - то что мы и ожидаем
    XCTAssert([firstFunction setX:2 setY:2] == 4);
}

- (void)testFailed {
    //тест будет провален
    XCTAssert([firstFunction setX:4 setY:2] == 10);
}

@end
