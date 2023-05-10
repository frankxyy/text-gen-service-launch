import random
import string
import sys

# 生成8位随机字符串
def generate_random_string(length):
    letters_and_digits = string.ascii_letters + string.digits
    return ''.join(random.choice(letters_and_digits) for _ in range(length))


if __name__ == '__main__':
    # 调用函数生成8位随机字符串
    random_string = generate_random_string(8)

    # 打印随机字符串
    print(random_string)

    sys.exit(0)
