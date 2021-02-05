#!/usr/bin/python3

"""
A script to convert regular images to .coe files used in FPGA chips
Color depth: 12bit (RGB 4+4+4)
Author: Pill
Rev: 0.1.0
"""

import argparse
import os

from PIL import Image


def main():
    parser = argparse.ArgumentParser(description='Convert images to coe file, using 12 bits of color depth (RGB4+4+4)')
    parser.add_argument('src', metavar='src', type=str, help='image file you want to convert')
    args = parser.parse_args()
    src = args.src

    image = Image.open(src).convert('RGBA')

    print('Input image: {}x{} pixels'.format(*image.size))

    # remove alpha channel (white background) and output color reduced image for demo
    background = Image.new('RGBA', image.size, (255, 255, 255))
    alpha_composite = Image.alpha_composite(background, image)
    bit_reduced = alpha_composite.point(lambda p: int(p / 16) * 16)

    filename, suffix = os.path.splitext(src)
    print('Output demo image at:', filename + '.demo' + '.bmp')
    bit_reduced.save(filename + '.demo' + '.bmp')

    # generate BRAM data
    vector_content = ''
    for i in range(image.size[1]):  # height
        for j in range(image.size[0]):  # width
            vector_content += '{:1X}{:1X}{:1X},'.format(*([int(c / 16) for c in bit_reduced.getpixel((j, i))[:3]]))
        vector_content += '\n'
    vector_content = vector_content[:-2] + ';'

    print('Output coe file at:', src + '.coe')

    with open(src + '.coe', 'w') as f:
        f.write('memory_initialization_radix=16;\n')
        f.write('memory_initialization_vector=\n')
        f.write(vector_content)

    print('.coe file generated. Size: {} kbits'.format(round(image.size[0] * image.size[1] * 12 / 1024, 2)))


if __name__ == '__main__':
    main()
