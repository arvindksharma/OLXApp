//
//  AppDelegate.h
//  OLXApp
//
//  Created by Arvind Sharma on 26/09/15.
//  Copyright © 2015 Arvind Sharma. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate> {

}
@property (strong, nonatomic) NSMutableDictionary *categoriesDict;

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;
-(NSMutableDictionary *) getCategories;


@end

