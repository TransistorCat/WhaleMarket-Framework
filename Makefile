.PHONY: clean # 伪目标

# 自定义环境变量
CC = g++ # 指定编译器

CFLAGS = -I include -Wall -std=c++11 -g# 指定头文件目录
CFILES = $(shell find src -name "*.cpp") # 搜索所有的源文件
OBJS = $(CFILES:.cpp=.o) # 所有的目标文件
TARGET = main # 最终生成目标

RM = -rm -f # 删除方式

# 项目构建方式
$(TARGET): $(OBJS)
	$(CC) -o $(TARGET) $(OBJS) 

%.o : %.cpp
	$(CC) -c $(CFLAGS) $< -o $@

clean:
	$(RM) $(OBJS) $(TARGET)

