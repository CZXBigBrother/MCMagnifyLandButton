大家在实际的开发中有没有遇到过给了你一张很小的图标,但是又想要很大点击范围的情况,通常解决方案有几种:
###第一种:
方案:button 范围做大 
缺点:如果图标刚在在中间还算好,但是通常来说图标的都是要靠边的,所以很不靠谱
###第二种:
方案:重写button内部的img布局 
缺点:麻烦,各种改
###第三种:
方案:改变img的内边距  
缺点:很难非常的准确到达自己想要的效果,如果美工姐姐的像素眼爆发就呵呵哒....
![Snip20170106_23.png](https://github.com/CZXBigBrother/MCMagnifyLandButton/blob/master/Gif/Snip20170106_23.png)

![Snip20170106_24.png](https://github.com/CZXBigBrother/MCMagnifyLandButton/blob/master/Gif/Snip20170106_24.png)

---
接下来是是给大家推荐的
###第四中方案
重写button的点击范围的判断,修改button的点击范围实现 pointInside:withEvent:event 
#先看看效果
![click2.gif](https://github.com/CZXBigBrother/MCMagnifyLandButton/blob/master/Gif/click2.gif)

![click.gif](https://github.com/CZXBigBrother/MCMagnifyLandButton/blob/master/Gif/click.gif)
解释下这个类的使用
只要button先继承MCMagnifyLandButton类,其他使用都一样,需要改变点击范围时执行下面的方法
```
/*
 *  清空
 */
- (void)clear;
/*
 *  拓展右边空间
 */
- (id)increaseRight:(CGFloat)width;
/*
 *  拓展左边空间
 */
- (id)increaseLeft:(CGFloat)width;
/*
 *  拓展上层空间
 */
- (id)increaseUp:(CGFloat)width;
/*
 *  拓展下层空间
 */
- (id)increaseDown:(CGFloat)width;
/*
 *  向右移动
 */
- (id)moveRight:(CGFloat)width;
/*
 *  向左移动
 */
- (id)moveLeft:(CGFloat)width;
/*
 *  向上移动
 */
- (id)moveUp:(CGFloat)width;
/*
 *  向下移动
 */
- (id)moveDown:(CGFloat)width;
/*
 *  原始大小翻倍,不包括拓展空间
 */
- (void)multiLand:(NSInteger)multi;
```
已经将代码改成链式修改方便大家书写
Demo里写的可能更详细,可以下载来看看,代码量其实很小
如果喜欢就star一下吧谢谢
