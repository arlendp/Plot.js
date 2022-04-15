//
//  DFIGLHierarchyPackViewController.m
//  DFI
//
//  Created by vanney on 2017/3/16.
//  Copyright © 2017年 vanney9. All rights reserved.
//

#import "DFIGLHierarchyPackViewController.h"
#import "DFIHierarchyPack.h"
#import "DFIGLHierarchyPackView.h"

#import "DFIDSV.h"
#import "DFIHierarchyStratify.h"
#import "DFIHierarchyNode+Treemap.h"

@interface DFIGLHierarchyPackViewController ()
@property (nonatomic, strong) DFIGLHierarchyPackView *packView;
@end

@implementation DFIGLHierarchyPackViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    DFIDSV *parseCSV = [[DFIDSV alloc] initWithDelimiter:@","];
    [parseCSV parseWithTextFileName:_nodeFile andFileSuffix:_fileType];
    DFIDSVParseResult *result = parseCSV.result;
    DFIHierarchyStratify *stratify = [[DFIHierarchyStratify alloc] init];
    stratify.parentID = ^NSString *(DFIHierarchyNode *node) {
        NSString *nodeID = node.id;
        NSRange range = [nodeID rangeOfString:@"." options:NSBackwardsSearch];
        if (range.length <= 0) {
            return nil;
        } else {
            return [nodeID substringToIndex:range.location];
        }
    };
    [stratify loadDSVData:result];
    [stratify.root sum:^float(NSMutableDictionary *dictionary) {
        return [[dictionary objectForKey:@"value"] floatValue];
    }];
    [stratify.root sort:^BOOL(DFIHierarchyNode *a, DFIHierarchyNode *b) {
        if (a.value >= b.value) {
            return NO;
        } else {
            return YES;
        }
    }];

    DFIHierarchyPack *pack = [[DFIHierarchyPack alloc] init];
    [pack size:self.view.bounds.size];
    pack.padding = 3.0f;
    [pack loadRootData:stratify.root];

    _packView = [[DFIGLHierarchyPackView alloc] initWithFrame:self.view.bounds andPack:pack];
    [self.view addSubview:_packView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
