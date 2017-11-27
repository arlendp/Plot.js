## Shapes

提供基本图形的API。包括**扇形图**，**饼图**，**折线图**，**面积图**，**stack图形**，**基础图形**等等

### Arc扇形图

具体见`DFIShapeArc.h`头文件。**DFIShapeArc**类提供绘制扇形图的API。

#### API

[#]() `@property (nonatomic, strong) DFIPath *path;`

*path*：使用DFIPath来存储扇形的路径信息

[#]() `@property (nonatomic, assign) float innerRadius;`

*innerRadius* : 扇形的内半径

[#]() `@property (nonatomic, assign) float outerRadius;`

*outerRadius* : 扇形的外半径

[#]() `@property (nonatomic, assign) float startAngle;`

*startAngle* : 扇形的起始弧度

[#]() `@property (nonatomic, assign) float endAngle;`

*endAngle* : 扇形的借宿弧度

[#]() `@property (nonatomic, assign) float padAngle;`

*padAngle* : 两扇形之间的弧度

[#]() `- (void)loadArcWithData:(NSDictionary *)data;`

函数说明： 使用data来填充扇形的数据，等待绘制

### Pie饼图

具体见`DFIShapePie.h`。**DFIShapePie**类提供了绘制饼图的API

#### API

[#]() `@property (nonatomic, assign) float startAngle;`

*startAngle* : 饼图的起始弧度

[#]() `@property (nonatomic, assign) float endAngle;`

*endAngle* : 饼图的借宿弧度

[#]() `@property (nonatomic, strong) NSArray *arcs;`

*arcs*: 饼图由多个扇形图构成，arcs保存了扇形图的信息

[#]() `- (NSMutableArray *)loadPieWithData:(NSMutableArray *)data;`

函数说明： 加载pie数据，创建饼图，全局加载方法, 返回arc数组，等待绘制

### Line折线图

具体见`DFIShapeLine.h`。**DFIShapeLine**类提供了绘制折线图的API

#### API

[#]() `@property (nonatomic, assign) DFIShapeCurveType curveType;`

*curveType* : 两点间的线段的类型

[#]() `@property (nonatomic, strong) DFIPath *context;`

*context* : 折线的路径

[#]() `- (void)loadLineWithData:(NSDictionary *)data;`

函数说明： 使用data来填充折线图的数据，等待绘制

### Area面积图

具体见`DFIShapeArea.h`。**DFIShapeArea**类提供了绘制面积图的API

#### API

[#]() `@property (nonatomic, assign) DFIShapeCurveType curveType;`

*curveType* : 两点间的线段的类型

[#]() `@property (nonatomic, strong) DFIPath *context;`

*context* : 面积的路径

[#]() `- (void)loadAreaWithData:(NSDictionary *)data;`

函数说明： 使用data来填充面积图的数据，等待绘制

### Symbol基本图形

具体见`DFIShapeSymbol.h`。**DFIShapeSymbol**类提供了绘制基本图形的API

#### API

[#]() `@property (nonatomic, assign) DFIShapeSymbolType type;`

*type* : 基本图形的类型

[#]() `@property (nonatomic, strong) DFIPath *context;`

*context* : 图形路径

[#]() `@property (nonatomic, assign) CGFloat size;`

*size*: 设置图形的size

[#]() `- (void)loadSymbol;`

函数说明： 加载symbol，在init，设置type，size之后