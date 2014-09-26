//
//  LayerLabel.m
//  LayerLabel
//
//  Created by Vinh Nguyen on 26/09/2014.
//  Copyright (c) Năm 2014 Vinh nguyen. All rights reserved.
//

#import "LayerLabel.h"
@import QuartzCore;

@implementation LayerLabel

+ (Class)layerClass
{
    // this make our label create a CATextLayer instead of a regular CALayer
    // for its backing layer
    return [CATextLayer class];
}

- (CATextLayer *)textLayer
{
    return (CATextLayer *)self.layer;
}

- (void)setUp
{
    // set defaults from UILabel settings
    self.text = self.text;
    self.textColor = self.textColor;
    self.font = self.font;
    
    [self textLayer].alignmentMode = kCAAlignmentJustified;
    [self textLayer].wrapped = YES;
    [self.layer display]; // reload the content of layer
}

- (instancetype)initWithFrame:(CGRect)frame
{
    // called when creating label programmatically
    if (self = [super initWithFrame:frame]) {
        [self setUp];
    }
    return self;
}

- (void)awakeFromNib
{
    // called when creating label using IB
    [self setUp];
}

- (void)setText:(NSString *)text
{
    super.text = text;
    [self textLayer].string = text;
}

- (void)setTextColor:(UIColor *)textColor
{
    super.textColor = textColor;
    [self textLayer].foregroundColor = textColor.CGColor;
}

- (void)setFont:(UIFont *)font
{
    super.font = font;
    
    CFStringRef fontName = (__bridge CFStringRef)font.fontName;
    CGFontRef fontRef = CGFontCreateWithFontName(fontName); // Note: create -> release
    [self textLayer].font = fontRef;
    CGFontRelease(fontRef);
}

@end
