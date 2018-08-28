//
//  MXKIFTextTests.m
//  MXKIFTextTests
//
//  Created by Meng,Xia(CE QA) on 2018/8/28.
//  Copyright © 2018年 Meng,Xia(CE QA). All rights reserved.
//

#import <XCTest/XCTest.h>
#import <KIF/KIF.h>

@interface MXKIFTextTests : KIFTestCase

@end

@implementation MXKIFTextTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}
- (void)beforeEach
{
    XCTAssertTrue([[tester class] testActorAnimationsEnabled]);
}

- (void)afterEach
{
    [[tester class] setTestActorAnimationsEnabled:YES];
}

- (void)testFeedIntoDetail
{
    [tester tapViewWithAccessibilityLabel:@"zhufeed"];
//    [tester tapRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:0] inTableViewWithAccessibilityIdentifier:@"zhufeed"];
//    [tester waitForViewWithAccessibilityLabel:@"First Cell" traits:UIAccessibilityTraitSelected];
//    [tester tapRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:0] inTableViewWithAccessibilityIdentifier:@"TableView Tests Table"];
//    [tester waitForViewWithAccessibilityLabel:@"Last Cell" traits:UIAccessibilityTraitSelected];

    
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
