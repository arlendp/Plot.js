## Delimiter-Separated Values

解析各类分隔符文件，比如逗号分隔符、tab分隔符等等

### DSV

具体见`DFIDSV.h`头文件。**DFIDSV**类是一个解析器，提供解析分隔符文件的API

#### API

[#]() `@property (nonatomic, strong) DFIDSVParseResult *result;`

*result* : 用来存放解析的结果。结果类型详见 [DFIDSVParseResult]()

[#]() `- (instancetype)initWithDelimiter:(NSString *)delimiter;`

函数说明：

根据特定的分隔符来初始化文件解析器

参数说明：

*delemiter* : 指定分隔符。比如 `,` 或者 `\t` 等等

[#]() `- (void)parseWithText:(NSString *)text;`

函数说明：

解析text文本，将解析的结果存放在result成员变量中

参数说明：

*text* : 待解析的文本

[#]() `- (void)parseWithTextFileName:(NSString *)fileName andFileSuffix:(NSString *)suffix;`

函数说明：

输入文件名，解析文件，将结果存放在result成员变量中

参数说明：

1. *fileName* : 待解析的文件名
2. *suffix* : 待解析文件的后缀名

[#]() `- (NSMutableArray *)parseRowsWithText:(NSString *)text;`

函数说明：

解析text文本，将结果放在数组中，并返回

参数说明：

*text* ：待解析的文本

### DSVParseResult

具体见`DFIDSVParseResult.h`头文件。**DFIDSVParseResult**类用来存放解析的结果

#### API

[#]() `@property (nonatomic, strong) NSMutableArray *columns;`

*columns* 表示文件的第一行所代表的项目

[#]() `@property (nonatomic, strong) NSMutableArray *rows;`

*rows* 存放具体的每一行的解析结果