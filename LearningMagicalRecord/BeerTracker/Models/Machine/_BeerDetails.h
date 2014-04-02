// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to BeerDetails.h instead.

#import <CoreData/CoreData.h>


extern const struct BeerDetailsAttributes {
	__unsafe_unretained NSString *image;
	__unsafe_unretained NSString *note;
	__unsafe_unretained NSString *rating;
} BeerDetailsAttributes;

extern const struct BeerDetailsRelationships {
	__unsafe_unretained NSString *beer;
} BeerDetailsRelationships;

extern const struct BeerDetailsFetchedProperties {
} BeerDetailsFetchedProperties;

@class Beer;





@interface BeerDetailsID : NSManagedObjectID {}
@end

@interface _BeerDetails : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (BeerDetailsID*)objectID;





@property (nonatomic, strong) NSString* image;



//- (BOOL)validateImage:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* note;



//- (BOOL)validateNote:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* rating;



@property int16_t ratingValue;
- (int16_t)ratingValue;
- (void)setRatingValue:(int16_t)value_;

//- (BOOL)validateRating:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) Beer *beer;

//- (BOOL)validateBeer:(id*)value_ error:(NSError**)error_;





@end

@interface _BeerDetails (CoreDataGeneratedAccessors)

@end

@interface _BeerDetails (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveImage;
- (void)setPrimitiveImage:(NSString*)value;




- (NSString*)primitiveNote;
- (void)setPrimitiveNote:(NSString*)value;




- (NSNumber*)primitiveRating;
- (void)setPrimitiveRating:(NSNumber*)value;

- (int16_t)primitiveRatingValue;
- (void)setPrimitiveRatingValue:(int16_t)value_;





- (Beer*)primitiveBeer;
- (void)setPrimitiveBeer:(Beer*)value;


@end
