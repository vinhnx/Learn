// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to BeerDetails.m instead.

#import "_BeerDetails.h"

const struct BeerDetailsAttributes BeerDetailsAttributes = {
	.image = @"image",
	.note = @"note",
	.rating = @"rating",
};

const struct BeerDetailsRelationships BeerDetailsRelationships = {
	.beer = @"beer",
};

const struct BeerDetailsFetchedProperties BeerDetailsFetchedProperties = {
};

@implementation BeerDetailsID
@end

@implementation _BeerDetails

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"BeerDetails" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"BeerDetails";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"BeerDetails" inManagedObjectContext:moc_];
}

- (BeerDetailsID*)objectID {
	return (BeerDetailsID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"ratingValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"rating"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic image;






@dynamic note;






@dynamic rating;



- (int16_t)ratingValue {
	NSNumber *result = [self rating];
	return [result shortValue];
}

- (void)setRatingValue:(int16_t)value_ {
	[self setRating:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveRatingValue {
	NSNumber *result = [self primitiveRating];
	return [result shortValue];
}

- (void)setPrimitiveRatingValue:(int16_t)value_ {
	[self setPrimitiveRating:[NSNumber numberWithShort:value_]];
}





@dynamic beer;

	






@end
