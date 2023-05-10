import os
import sys


if __name__ == '__main__':
    # 检查输入参数是否存在
    if len(sys.argv) < 2:
        print("请输入一个路径名作为参数！")
        sys.exit(1)

    # 获取第一个参数
    path = sys.argv[1]

    # 获取上一级路径名
    parent_path = os.path.dirname(path)

    # 输出上一级路径名
    # print("上一级路径名：", parent_path)

    sys.exit(parent_path)
