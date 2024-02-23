//
//  ViewController.m
//  pr1Objc
//
//  Created by Никита Попов on 23.02.24.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self getResult: 1 b: -8 c: 12];
    [self max3: 1 b: -8 c: 12];
    
}

    
- (void)getResult : (int)a b:(int)b c:(int)c{
    int d = (b * b) - (4 * a * c);
    if (d > 0) {
        int x1 = (-b + sqrt(d)) / (2 * a);
        int x2 = (-b - sqrt(d)) / (2 * a);
        NSLog(@"Уравнение имеет два различных корня: x1 = %d, x2 = %d", x1, x2);
    }else if (d == 0) {
        int x = -b / (2 * a);
        NSLog(@"Уравнение имеет один корень: x = %d", x);
    }else{
        NSLog(@"Уравнение не имеет действительных корней");
    }
}

- (void)max3:(int)a b:(int)b c:(int)c{
    int res = a;
    if (b > a){
        res = b;
    }
    if (c > res){
        res = c;
    }
    NSLog(@"max = %d", res);
}




@end
