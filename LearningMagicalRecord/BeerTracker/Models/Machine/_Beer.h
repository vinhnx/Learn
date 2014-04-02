// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Beer.h instead.

#import <CoreData/CoreData.h>


extern const struct BeerAttributes {
	__unsafe_unretained NSString *name;
} BeerAttributes;

extern const struct BeerRelationships {
	__unsafe_unretained NSString *beerDetails;
} BeerRelationships;

extern const struct BeerFetchedProperties {
} BeerFetchedProperties;

@class BeerDetails;



@interface BeerID : NSManagedObjectID {}
@end

@interface _Beer : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (BeerID*)objectID;





@property (nonatomic, strong) NSString* name;



//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) BeerDetails *beerDetails;

//- (BOOL)validateBeerDetails:(id*)value_ error:(NSError**)error_;





@end

@interface _Beer (CoreDataGeneratedAccessors)

@end

@interface _Beer (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;





- (BeerDetails*)primitiveBeerDetails;
- (void)setPrimitiveBeerDetails:(BeerDetails*)value;


@end
