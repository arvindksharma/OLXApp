//
//  CategoryViewController.h
//  OLXApp
//
//  Created by Arvind Sharma on 26/09/15.
//  Copyright © 2015 Arvind Sharma. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SubmitAnAdViewController;
@class SubCategoryViewController;

@interface CategoryViewController : UITableViewController {
    
    SubCategoryViewController *subCategoryController;
}
@property(nonatomic, weak) SubmitAnAdViewController *delegate;
@property(nonatomic, strong) NSMutableDictionary *categoriesDict;
@property(nonatomic, strong) NSMutableArray *categoriesArray;

@end
