## Paths

具体见`DFIPath.h`头文件。**DFIPath**类用来封装各种路径相关的信息

### API

[#]() `@property (nonatomic, strong) UIBezierPath *path;`

*path*: 使用beisaier曲线存放路径信息

[#]() `- (DFIPath *)moveTo:(CGPoint)point;`

函数说明： 移动到特定的point

[#]() `- (DFIPath *)closePath;`

函数说明： 闭合一条曲线

[#]() `- (DFIPath *)lineTo:(CGPoint)point;`

函数说明： 添加一条直线到特定的point

[#]() `- (DFIPath *)quadraticCurveTo:(CGPoint)endPoint withControl:(CGPoint)controlPoint;`

函数说明： 添加一条二次贝塞尔曲线

参数说明：

1. *endPoint*: 终点
2. *controlPoint*: 中间的控制点

[#]() `- (DFIPath *)bezierCurveTo:(CGPoint)endPoint withControl1:(CGPoint)point1 andControl2:(CGPoint)point2;`

函数说明： 添加一条三次贝塞尔曲线

参数说明：

1. *endPoint*: 终点
2. *point1*: 控制点1
3. *point2*: 控制点2

[#]() `- (DFIPath *)arcTo:(CGPoint)point1 to:(CGPoint)point2 withRadius:(float)radius;`

函数说明： 添加一条圆弧

参数说明：

1. *point1*: 起始点
2. *point2*: 终点
3. *radius*: 半径

[#]() `- (DFIPath *)arcWithCenter:(CGPoint)center startAngle:(float)startAngle endAngle:(float)endAngle andRadius:(float)radius clockwise:(BOOL)clockwise;`

函数说明： 添加一条圆弧

参数说明：

1. *center*: 圆心
2. *startAngle*: 起始弧度
3. *endAngle*: 结束弧度
4. *radius*: 半径
5. *clockwise*: 顺时针/逆时针

[#]() `- (DFIPath *)rectWithPoint:(CGPoint)point width:(float)width andHeight:(float)height;`

函数说明： 添加一个矩形

参数说明：

1. *point*: 左上角
2. *width*: 宽
3. *height*: 高