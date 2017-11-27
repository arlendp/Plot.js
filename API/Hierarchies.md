## Hierarchies

层级图API。可以绘制多种层级图，包括：**Cluster**，**Tree**，**TreeMap**，**Pack**等等
![pack](./ios/pack.png)
### Cluster

具体见`DFIHierarchyCluster.h`头文件，**DFIHierarchyCluster**类提供了绘制Cluster的API

#### API

[#]() `@property (nonatomic, strong) DFIHierarchyNode *root;`

*root* : 表示该层级数据的根节点。有了该根节点，就可以得到所有的节点。详见[DFIHierarchyNode]()

[#]() `- (void)loadRootNode:(DFIHierarchyNode *)root;`

函数说明：使用root根节点，来填充该Cluster层级图，等待绘制

[#]() `- (DFIHierarchyCluster *)size:(CGSize)size;`

函数说明：设置Cluster的大小，返回该Cluster为了链式调用

### Tree

具体见`DFIHierarchyTree.h`头文件，**DFIHierarchyTree**类提供了绘制Tree的API

#### API

[#]() `@property (nonatomic, strong) DFIHierarchyNode *root;`

*root* : 表示该层级数据的根节点。有了该根节点，就可以得到所有的节点。详见[DFIHierarchyNode]()

[#]() `- (void)loadRootNode:(DFIHierarchyNode *)root;`

函数说明：使用root根节点，来填充该Tree层级图，等待绘制

[#]() `- (DFIHierarchyTree *)size:(CGSize)size;`

函数说明：设置Tree的大小，返回该Tree为了链式调用

### TreeMap

具体见`DFIHierarchyTreemap.h`头文件，**DFIHierarchyTreemap**类提供了绘制TreeMap的API

#### API

[#]() `@property (nonatomic, strong) DFIHierarchyNode *root;`

*root* : 表示该层级数据的根节点。有了该根节点，就可以得到所有的节点。详见[DFIHierarchyNode]()

[#]() `- (void)loadRootNode:(DFIHierarchyNode *)root;`

函数说明：使用root根节点，来填充该TreeMap层级图，等待绘制

[#]() `- (DFIHierarchyTreeMap *)size:(CGSize)size;`

函数说明：设置TreeMap的大小，返回该TreeMap为了链式调用

[#]() `@property (nonatomic, assign) float paddingInner;`

*paddingInner* : 表示方块的内间距

[#]() `@property (nonatomic, assign) float paddingTop;`

*paddingTop* : 表示方块的上间距

[#]() `@property (nonatomic, assign) float paddingRight;`

*paddingRight* : 表示方块的右间距

[#]() `@property (nonatomic, assign) float paddingBottom;`

*paddingBottom* : 表示方块的下间距

[#]() `@property (nonatomic, assign) float paddingLeft;`

*paddingLeft* : 表示方块的左间距

### Pack

具体见`DFIHierarchyPack.h`头文件，**DFIHierarchyPack**类提供了绘制Pack的API

#### API

[#]() `@property (nonatomic, strong) DFIHierarchyNode *root;`

*root* : 表示该层级数据的根节点。有了该根节点，就可以得到所有的节点。详见[DFIHierarchyNode]()

[#]() `- (void)loadRootNode:(DFIHierarchyNode *)root;`

函数说明：使用root根节点，来填充该Pack层级图，等待绘制

[#]() `- (DFIHierarchyPack *)size:(CGSize)size;`

函数说明：设置Pack的大小，返回该Pack为了链式调用

[#]() `@property (nonatomic, assign) float padding;`

*padding* : 表示pack之间的间距

### HierarchyNode

具体见`DFIHierarchyNode.h`头文件，**DFIHierarchyNode**类表示层级数据中的一个节点的信息

#### API

[#]() `@property(nonatomic, assign) int depth;`

*depth*: 表示该node在整个层级图中的深度

[#]() `@property(nonatomic, assign) int height;`

*height*: 表示该node在整个层级图中的高度

[#]() `@property (nonatomic, strong) DFIHierarchyNode *parent;`

*parent*: 表示该节点的父节点

[#]() `@property (nonatomic, strong) NSMutableArray *children;`

*children*: 表示给节点的子节点们

[#]() `@property (nonatomic, strong) NSString *id;`

*id*: 节点的id

[#]() `@property (nonatomic, assign) float x;`

*x*: 节点的x坐标

[#]() `@property (nonatomic, assign) float y;`

*y*: 节点的y坐标

[#]() `@property (nonatomic, assign) float value;`

*value*: 节点的value