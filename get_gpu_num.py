import os
import sys


if __name__ == '__main__':
    # 检查输入参数是否存在
    if len(sys.argv) < 1:
        print("请输入一个参数！")
        sys.exit(1)

    # 获取第一个参数
    gpus = sys.argv[1]

    res = str(len(gpus.split(',')))

    # 输出上一级路径名
    print(res)

    sys.exit(0)