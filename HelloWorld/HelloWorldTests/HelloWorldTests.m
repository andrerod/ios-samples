//
//  HelloWorldTests.m
//  HelloWorldTests
//
//  Created by André Rodrigues on 10/27/13.
//  Copyright (c) 2013 Microsoft. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface HelloWorldTests : XCTestCase

@end

@implementation HelloWorldTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
}

@end
