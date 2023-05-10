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
    # parent_path = os.path.dirname(path)
    segs = path.split('/')
    parent_path = '/'.join(segs[:-1])
    if path[0] == '/':
        parent_path = '/' + parent_path

    # 输出上一级路径名
    print(parent_path)

    sys.exit(0)
