//
//  CategoryViewController.h
//  OLXApp
//
//  Created by Arvind Sharma on 26/09/15.
//  Copyright © 2015 Arvind Sharma. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SubmitAnAdViewController;

@interface CategoryViewController : UITableViewController {
    SubmitAnAdViewController *delegate;
    NSMutableDictionary *categoriesDict;
    NSArray *categoriesArray;
}

@end
