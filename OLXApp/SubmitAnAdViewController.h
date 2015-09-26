//
//  SubmitAnAdViewController.h
//  OLXApp
//
//  Created by Arvind Sharma on 26/09/15.
//  Copyright © 2015 Arvind Sharma. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CategoryViewController;

@interface SubmitAnAdViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, UICollectionViewDataSource, UICollectionViewDelegate, UIActionSheetDelegate> {
    NSMutableArray *photosArray;
    UIActionSheet *photoOptionActionSheet;
    CategoryViewController *categoryController;
}
@property (weak, nonatomic) IBOutlet UITableView *AdEntryTableView;
- (IBAction)addAPhotoAction:(id)sender;
- (IBAction)submitAdAction:(id)sender;

@end
