/*
 * Copyright (c) 2005-2018 Imperas Software Ltd., www.imperas.com
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
 * either express or implied.
 *
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

#include <stdio.h>
#include <stdlib.h>

static int fib(int i) {
    return (i>1) ? fib(i-1) + fib(i-2) : i;
}

#define MAX 48
static unsigned char resultArray[MAX];

int main(int argc, char **argv[]) {

    unsigned int i;
    int num = (argc >= 2) ? atoi((const char *)argv[1]) : 38;

    printf("starting fib(%d)...\n", num);

    for(i=0; i<num; i++) {
        int result=fib(i);                      // calculate fibonacci for i
        printf("fib(%d) = %d\n", i, result);

        resultArray[i%MAX] = result & 0xff;     // store low byte into result array
    }

    printf("finishing...\n");

    return 0;
}
