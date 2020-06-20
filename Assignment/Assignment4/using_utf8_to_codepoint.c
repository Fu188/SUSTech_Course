/*
 *   This program demonstrates how to use utf8_to_codepoint().
 *   To compile it:
 *     gcc -o demo using_utf8_to_codepoint.c utf8.c
 *
 *   Type UTF-8 characters or words on the command line, it will
 *   tell you what are the equivalent code points.
 */
#include <stdio.h>

#include "utf8.h"

int main(int argc, char **argv) {
    unsigned char *p;
    int            bytes_in_char;
    int            i;
    unsigned int   codepoint;

    for (i = 1; i < argc; i++) {
      p = (unsigned char *)argv[i];
      // Print as hexa encoding
      while (*p) {
         printf("%0X ", *p);
         p++;
      }
      putchar('\n');
      p = (unsigned char *)argv[i];
      while (*p) {
        codepoint = utf8_to_codepoint(p, &bytes_in_char);
        if (codepoint) {
           printf("%c %u (%X) %d byte character\n", *p,
                   codepoint, codepoint, bytes_in_char);
           // p += bytes_in_char;  // Same as the line that follows
           _utf8_incr(p);
        } else {
           printf("%c Invalid UTF-8\n", *p);
           p++;  // Try the next character
        }
      }
    }
}
