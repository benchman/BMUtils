//
//  BMPlaceholderTextView.m
//  BMUtils
//
//  Created by Aleksey Nemychenkov on 31/01/16.
//  Copyright © 2016 Aleksey Nemychenkov. All rights reserved.
//

#import "BMPlaceholderTextView.h"

@interface BMPlaceholderTextView ()

@property (weak, nonatomic) UILabel *placeholderLabel;
@property (weak, nonatomic) NSLayoutConstraint *topConstraint;
@property (weak, nonatomic) NSLayoutConstraint *leftConstraint;
@property (weak, nonatomic) NSLayoutConstraint *bottomConstraint;
@property (weak, nonatomic) NSLayoutConstraint *rightConstraint;

@end

@implementation BMPlaceholderTextView

- (void)awakeFromNib {
    [super awakeFromNib];
    [self addPlaceholderLabel];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textChanged:) name:UITextViewTextDidChangeNotification object:self];
}

- (void)setPlaceholder:(NSString *)placeholder {
    _placeholder = placeholder;
    self.placeholderLabel.text = placeholder;
}

- (void)setFont:(UIFont *)font {
    [super setFont:font];
    self.placeholderLabel.font = font;
}

- (void)setPlaceholderColor:(UIColor *)placeholderColor {
    _placeholderColor = placeholderColor;
    self.placeholderLabel.textColor = placeholderColor;
}

- (void)setText:(NSString *)text {
    [super setText:text];
    [self textChanged:nil];
}

- (void)textChanged:(NSNotification *)notification {
    BOOL showPlaceholder = self.text.length == 0;
    [UIView animateWithDuration:0.1 animations:^{
        self.placeholderLabel.alpha = showPlaceholder ? 1.0 : 0.0;
    }];
}

- (void)setTextContainerInset:(UIEdgeInsets)textContainerInset {
    [super setTextContainerInset:textContainerInset];
    [self updatePlaceholderConstraints];
}

- (void)updatePlaceholderConstraints {
    UIEdgeInsets insets = self.textContainerInset;
    CGFloat padding = self.textContainer.lineFragmentPadding;
    self.leftConstraint.constant = insets.left + padding;
    self.rightConstraint.constant = insets.right + padding;
    self.topConstraint.constant = insets.top;
    self.bottomConstraint.constant = insets.bottom;
    [self layoutIfNeeded];
}

- (void)addPlaceholderLabel {
    UILabel *label = [UILabel new];
    label.font = self.font;
    label.textColor = self.placeholderColor;
    label.text = self.placeholder;
    label.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:label];
    self.leftConstraint = [NSLayoutConstraint constraintWithItem:label attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeading multiplier:1.0 constant:0];
    self.topConstraint = [NSLayoutConstraint constraintWithItem:label attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTop multiplier:1.0 constant:0];
    self.bottomConstraint = [NSLayoutConstraint constraintWithItem:label attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0];
    self.rightConstraint = [NSLayoutConstraint constraintWithItem:label attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:0];
    [self addConstraints:@[self.leftConstraint, self.topConstraint, self.bottomConstraint, self.rightConstraint]];
    [self updatePlaceholderConstraints];
    self.placeholderLabel = label;
}

@end
