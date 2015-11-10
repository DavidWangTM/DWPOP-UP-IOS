# DWPOP-UP-IOS
IOS 弹出框，类似淘宝菜单弹出框
如果有更多想法，联系我Q:232190315.
# 效果图
![](https://raw.githubusercontent.com/DavidWangTM/DWPOP-UP-IOS/master/pop-up.gif)

Installation
--------------
###pod
```
pod 'pop', '~> 1.0'
```
###xib-view
![](https://raw.githubusercontent.com/DavidWangTM/DWPOP-UP-IOS/master/back_1.png)
Properties
--------------
```objective-c
-(void)setAdapterView:(UIView *)addview;

// @param springBounciness 反弹
// @param springSpeed 弹性速度
-(void)setAdapterView:(UIView *)addview springBounciness:(CGFloat) springBounciness springSpeed:(CGFloat) springSpeed;

//执行动画
-(void)showanimation;

//设置背景颜色
-(void)setDWBackgroundColor:(UIColor *)color;

```
