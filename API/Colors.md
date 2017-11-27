## Colors

具体见`DFIColor.h`头文件。**DFIColor**类提供了多种生成颜色的简易方法。支持多种颜色格式。

### API

[#]() `@property (nonatomic, assign) CGFloat r;`

*r* 颜色的red分量

[#]() `@property (nonatomic, assign) CGFloat g;`

*g* 颜色的green分量

[#]() `@property (nonatomic, assign) CGFloat b;`

*b* 颜色的blue分量

[#]() `@property (nonatomic, assign) CGFloat opacity;`

*opacity* 颜色的透明度

[#]() `+ (DFIColor *)colorWithFormat:(NSString *)format;`

参数说明：

*format* : 输入的颜色格式

函数说明：

输入一种颜色，输出对应的DFIColor对象。该函数支持多种颜色的输入格式，包括：

1. `rgb(255, 255, 255)`
2. `rgb(10%, 20%, 30%)`
3. `rgba(255, 255, 255, 0.4)`
4. `rgba(10%, 20%, 30%, 0.4)`
5. `#ffeeaa`
6. `#fea`
7. `steelblue`

[#]() `- (DFIColor *)brighterWithK:(CGFloat)k;`

参数说明：

*k* : 以k为倍数，将color调亮。默认k为0.7

[#]() `- (DFIColor *)darkerWithK:(CGFloat)k;`

参数说明：

*k* : 以k为倍数，将color调暗。默认k为 1/0.7

[#]() `- (UIColor *)toUIColor;`

函数说明：

实现**DFIColor** 和 **UIColor** 之间的相互转换

[#]() `- (NSString *)toString;`

函数说明：

将**DFIColor**转换成类似 *#ffeeaa* 这样的格式的**NSString**