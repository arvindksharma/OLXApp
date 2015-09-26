//
//  SubmitAnAdViewController.m
//  OLXApp
//
//  Created by Arvind Sharma on 26/09/15.
//  Copyright © 2015 Arvind Sharma. All rights reserved.
//

#import "SubmitAnAdViewController.h"
#import "TextCell.h"
#import "PhotoCell.h"
#import "SubmitCell.h"
#import "PhotoCollectionViewCell.h"

typedef enum entryField {
    Photos = 0,
    Title,
    Description,
    Name,
    ContactNumber,
    Email,
    ChooseCategory,
    Submit
}EntryField;

@interface SubmitAnAdViewController ()

@end

@implementation SubmitAnAdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    photoOptionActionSheet = [[UIActionSheet alloc] initWithTitle:@"Choose a photo" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:@"Take a Picture", @"Photo Library", nil];
    //[photoOptionActionSheet showInView:self.view];
}

#pragma TableView Datasource Methods

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 7;
}


-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if(indexPath.row == Photos) {
        PhotoCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PhotoCell" forIndexPath:indexPath];
        return cell;
    }
    else if(indexPath.row == Submit) {
        SubmitCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SubmitCell" forIndexPath:indexPath];
        return cell;
    }
    else if(indexPath.row == ChooseCategory) {
        SubmitCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CategoryCell" forIndexPath:indexPath];
        return cell;
    }
    else {
        TextCell *cell = (TextCell *)[tableView dequeueReusableCellWithIdentifier:@"TextCell" forIndexPath:indexPath];
        cell.fieldEntryTextfield.tag = indexPath.row;
        cell.fieldEntryTextfield.placeholder = [self getFieldTitleForIndex:indexPath];
        return cell;
    }
    
}

#pragma TableView Delegate Methods

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    EntryField index = (int)indexPath.row;
    CGFloat height = 0;
    switch (index) {
        case Photos:
            height = 100.0;
            break;
        case Title:
            height = 50.0;
            break;
        case Description:
            height = 150.0;
            break;
        case Name:
            height = 50.0;
            break;
        case ContactNumber:
            height = 50.0;
            break;
        case Email:
            height = 50.0;
            break;
        case Submit:
            height = 70.0;
            break;
        default:
            break;
    }
    return height;
}

-(NSString *) getFieldTitleForIndex:(NSIndexPath *)indexPath {
    int index = (int)indexPath.row;
    
    NSString *fieldTitle = @"";
    switch(index) {
        case 1: fieldTitle = @"Title (max. 40)";
            break;
        case 2: fieldTitle = @"Description (max. 5000)";
            break;
        case 3: fieldTitle = @"Name";
            break;
        case 4: fieldTitle = @"Contact Number";
            break;
        case 5: fieldTitle = @"Email";
            break;
    }
    return fieldTitle;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return photosArray.count + 1;
}

- (UICollectionViewCell * _Nonnull)collectionView:(UICollectionView * _Nonnull)collectionView cellForItemAtIndexPath:(NSIndexPath * _Nonnull)indexPath {
    
    if(indexPath.row == 0) {
        UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PlaceholderCell" forIndexPath:indexPath];
        return cell;
    }
    else {
        PhotoCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PlaceholderCell" forIndexPath:indexPath];
        return cell;
    }
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

- (IBAction)addAPhotoAction:(id)sender {
    [photoOptionActionSheet showInView:self.view];
}

- (IBAction)submitAdAction:(id)sender {
    
}


@end
