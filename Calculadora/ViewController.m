//
//  ViewController.m
//  Calculadora
//
//  Created by user138066 on 4/18/18.
//  Copyright © 2018 user138066. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

NSInteger op;
float num1,num2;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)number9:(id)sender{
    int n9 = 9;
    _tfView.text = [NSString stringWithFormat:@"%@%d",_tfView.text , n9];
}
-(IBAction)number8:(id)sender{
    int n8 = 8;
    _tfView.text = [NSString stringWithFormat:@"%@%d",_tfView.text ,n8 ];
}
-(IBAction)number7:(id)sender{
    int n7 = 7;
    _tfView.text = [NSString stringWithFormat:@"%@%d",_tfView.text ,n7 ];
}
-(IBAction)number6:(id)sender{
    int n6 = 6;
    _tfView.text = [NSString stringWithFormat:@"%@%d",_tfView.text ,n6 ];
}
-(IBAction)number5:(id)sender{
    int n5 = 5;
    _tfView.text = [NSString stringWithFormat:@"%@%d",_tfView.text ,n5 ];
}
-(IBAction)number4:(id)sender{
    int n4 = 4;
    _tfView.text = [NSString stringWithFormat:@"%@%d",_tfView.text ,n4 ];
}
-(IBAction)number3:(id)sender{
    int n3 = 3;
    _tfView.text = [NSString stringWithFormat:@"%@%d",_tfView.text ,n3];
}
-(IBAction)number2:(id)sender{
    int n2 = 2;
    _tfView.text = [NSString stringWithFormat:@"%@%d",_tfView.text ,n2 ];
}
-(IBAction)number1:(id)sender{
    int n1 = 1;
    _tfView.text = [NSString stringWithFormat:@"%@%d",_tfView.text ,n1 ];
}
-(IBAction)number0:(id)sender{
    int n0 = 0;
    _tfView.text = [NSString stringWithFormat:@"%@%d",_tfView.text ,n0 ];
}
-(IBAction)punto:(id)sender{
    _tfView.text = [NSString stringWithFormat:@"%@.",_tfView.text ];
}
-(IBAction)suma:(id)sender{
    NSString *a = _tfView.text;
    num1 = [a floatValue];
    op=1;
    _tfView.text = [NSString stringWithFormat:@""];
}
-(IBAction)resta:(id)sender{
    NSString *a = _tfView.text;
    num1 = [a floatValue];
    op=2;
    _tfView.text = [NSString stringWithFormat:@""];
}
-(IBAction)multi:(id)sender{
    NSString *a = _tfView.text;
    num1 = [a floatValue];
    op=3;
    _tfView.text = [NSString stringWithFormat:@""];
}
-(IBAction)div:(id)sender{
    NSString *a = _tfView.text;
    num1 = [a floatValue];
    op=4;
    _tfView.text = [NSString stringWithFormat:@""];
}

-(IBAction)igual:(id)sender{
    NSString *a = _tfView.text;
    num2 = [a floatValue];
    float total = 0;
    switch (op) {
        case 1:
            total = num1 + num2;
            break;
        case 2:
            total = num1 - num2;
            break;
        case 3:
            total = num1 * num2;
            break;
        case 4:
            total = num1 / num2;
            break;
        default:
            break;
    }
    
    _tfView.text = [NSString stringWithFormat:@"%f",total];
}
-(IBAction)borrar:(id)sender{
    num1 = 0;
    num2 = 0;
    op=0;
    _tfView.text = [NSString stringWithFormat:@""];
}

@end
