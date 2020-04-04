# 1 "sha256.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "sha256.c" 2
# 23 "sha256.c"
# 1 "./sha_config.h" 1
# 23 "sha256.c" 2

# 1 "./sha256.h" 1
# 26 "./sha256.h"
# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\stdint.h" 1 3



# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\musl_xc8.h" 1 3
# 4 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\stdint.h" 2 3
# 22 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\stdint.h" 3
# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\bits/alltypes.h" 1 3
# 127 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\bits/alltypes.h" 3
typedef unsigned long uintptr_t;
# 142 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long intptr_t;
# 158 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\bits/alltypes.h" 3
typedef signed char int8_t;




typedef short int16_t;




typedef __int24 int24_t;




typedef long int32_t;





typedef long long int64_t;
# 188 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long long intmax_t;





typedef unsigned char uint8_t;




typedef unsigned short uint16_t;




typedef __uint24 uint24_t;




typedef unsigned long uint32_t;





typedef unsigned long long uint64_t;
# 229 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\bits/alltypes.h" 3
typedef unsigned long long uintmax_t;
# 22 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\stdint.h" 2 3


typedef int8_t int_fast8_t;

typedef int64_t int_fast64_t;


typedef int8_t int_least8_t;
typedef int16_t int_least16_t;

typedef int24_t int_least24_t;

typedef int32_t int_least32_t;

typedef int64_t int_least64_t;


typedef uint8_t uint_fast8_t;

typedef uint64_t uint_fast64_t;


typedef uint8_t uint_least8_t;
typedef uint16_t uint_least16_t;

typedef uint24_t uint_least24_t;

typedef uint32_t uint_least32_t;

typedef uint64_t uint_least64_t;
# 139 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\stdint.h" 3
# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\bits/stdint.h" 1 3
typedef int32_t int_fast16_t;
typedef int32_t int_fast32_t;
typedef uint32_t uint_fast16_t;
typedef uint32_t uint_fast32_t;
# 139 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c99\\stdint.h" 2 3
# 26 "./sha256.h" 2








typedef enum
{
    SHA2_224,
    SHA2_256
} SHA256_BIT_LENGTH;


typedef struct
{
    uint32_t h[8];
    uint32_t totalBytes;
    uint8_t partialBlock[64] __attribute__((aligned(4)));
    uint32_t * workingBuffer;
    SHA256_BIT_LENGTH length;
} SHA256_CONTEXT;
# 92 "./sha256.h"
void SHA256_Initialize (SHA256_CONTEXT * context, SHA256_BIT_LENGTH length, uint32_t * workingBuffer);
# 133 "./sha256.h"
void SHA256_DataAdd (SHA256_CONTEXT * context, uint8_t * data, uint32_t len);
# 175 "./sha256.h"
void SHA256_Calculate (SHA256_CONTEXT * context, uint8_t * result);
# 24 "sha256.c" 2

# 1 "./sha256_private.h" 1
# 38 "./sha256_private.h"
 void SHA256_OutputData (uint8_t * output, uint32_t value);
 void SHA256_HashBlock (SHA256_CONTEXT * context);
# 25 "sha256.c" 2


const uint32_t SHA256_K[] = { 0x428a2f98, 0x71374491, 0xb5c0fbcf, 0xe9b5dba5, 0x3956c25b, 0x59f111f1, 0x923f82a4, 0xab1c5ed5, 0xd807aa98, 0x12835b01, 0x243185be, 0x550c7dc3, 0x72be5d74, 0x80deb1fe, 0x9bdc06a7, 0xc19bf174, 0xe49b69c1, 0xefbe4786, 0x0fc19dc6, 0x240ca1cc, 0x2de92c6f, 0x4a7484aa, 0x5cb0a9dc, 0x76f988da, 0x983e5152, 0xa831c66d, 0xb00327c8, 0xbf597fc7, 0xc6e00bf3, 0xd5a79147, 0x06ca6351, 0x14292967, 0x27b70a85, 0x2e1b2138, 0x4d2c6dfc, 0x53380d13, 0x650a7354, 0x766a0abb, 0x81c2c92e, 0x92722c85, 0xa2bfe8a1, 0xa81a664b, 0xc24b8b70, 0xc76c51a3, 0xd192e819, 0xd6990624, 0xf40e3585, 0x106aa070, 0x19a4c116, 0x1e376c08, 0x2748774c, 0x34b0bcb5, 0x391c0cb3, 0x4ed8aa4a, 0x5b9cca4f, 0x682e6ff3, 0x748f82ee, 0x78a5636f, 0x84c87814, 0x8cc70208, 0x90befffa, 0xa4506ceb, 0xbef9a3f7, 0xc67178f2 };
# 74 "sha256.c"
void SHA256_Initialize (SHA256_CONTEXT * context, SHA256_BIT_LENGTH length, uint32_t * workingBuffer)
{
    if (length == SHA2_256)
    {

        context->h[0] = 0x6a09e667;
        context->h[1] = 0xbb67ae85;
        context->h[2] = 0x3c6ef372;
        context->h[3] = 0xa54ff53a;
        context->h[4] = 0x510e527f;
        context->h[5] = 0x9b05688c;
        context->h[6] = 0x1f83d9ab;
        context->h[7] = 0x5be0cd19;
    }
    else
    {

        context->h[0] = 0xc1059ed8;
        context->h[1] = 0x367cd507;
        context->h[2] = 0x3070dd17;
        context->h[3] = 0xf70e5939;
        context->h[4] = 0xffc00b31;
        context->h[5] = 0x68581511;
        context->h[6] = 0x64f98fa7;
        context->h[7] = 0xbefa4fa4;
    }

    context->length = length;
    context->totalBytes = 0;
    context->workingBuffer = workingBuffer;
}
# 145 "sha256.c"
void SHA256_DataAdd (SHA256_CONTEXT * context, uint8_t * data, uint32_t len)
{
    uint8_t * blockPtr;

    blockPtr = context->partialBlock + (context->totalBytes & 0x3f);


    context->totalBytes += len;


    while(len != 0u)
    {
        *blockPtr++ = *data++;


        if(blockPtr == context->partialBlock + 64)
        {
            SHA256_HashBlock (context);
            blockPtr = context->partialBlock;
        }

        len--;
    }

}

void SHA256_HashBlock (SHA256_CONTEXT * context)
{
    uint32_t a, b, c, d, e, f, g, h;
    uint8_t i;
    uint32_t t1, t2;
    uint8_t * dataPtr = context->partialBlock;;
    uint32_t * schedulePtr;




    schedulePtr = context->workingBuffer;
    for (i = 0; i < 16; i++)
    {
        t1 = *dataPtr++;
        t1 <<= 8;
        t1 += *dataPtr++;
        t1 <<= 8;
        t1 += *dataPtr++;
        t1 <<= 8;
        t1 += *dataPtr++;
        *(schedulePtr + i) = t1;
    }


    for (i = 16; i < 64; i++)
    {
        schedulePtr = context->workingBuffer + i;
        *schedulePtr = (((*(schedulePtr - 2) >> 17) | (*(schedulePtr - 2) << (32-17))) ^ ((*(schedulePtr - 2) >> 19) | (*(schedulePtr - 2) << (32-19))) ^ (*(schedulePtr - 2) >> 10)) + *(schedulePtr - 7) + (((*(schedulePtr - 15) >> 7) | (*(schedulePtr - 15) << (32-7))) ^ ((*(schedulePtr - 15) >> 18) | (*(schedulePtr - 15) << (32-18))) ^ (*(schedulePtr - 15) >> 3)) + *(schedulePtr - 16);
    }


    a = context->h[0];
    b = context->h[1];
    c = context->h[2];
    d = context->h[3];
    e = context->h[4];
    f = context->h[5];
    g = context->h[6];
    h = context->h[7];

    schedulePtr = context->workingBuffer;
    for (i = 0; i < 64; i++)
    {
# 223 "sha256.c"
        t1 = h + (((e >> 6) | (e << (32-6))) ^ ((e >> 11) | (e << (32-11))) ^ ((e >> 25) | (e << (32-25)))) + ((e & f) ^ ((~e) & g)) + SHA256_K[i] + *(schedulePtr + i);

        t2 = (((a >> 2) | (a << (32-2))) ^ ((a >> 13) | (a << (32-13))) ^ ((a >> 22) | (a << (32-22)))) + ((a & b) ^ (a & c) ^ (b & c));
        h = g;
        g = f;
        f = e;
        e = d + t1;
        d = c;
        c = b;
        b = a;
        a = t1 + t2;
    }

    context->h[0] += a;
    context->h[1] += b;
    context->h[2] += c;
    context->h[3] += d;
    context->h[4] += e;
    context->h[5] += f;
    context->h[6] += g;
    context->h[7] += h;
}
# 286 "sha256.c"
void SHA256_Calculate (SHA256_CONTEXT * context, uint8_t * result)
{
    uint8_t * blockPtr = context->partialBlock + (context->totalBytes & 0x3F);
    uint8_t * endPtr;
    uint8_t i;

    *blockPtr++ = 0x80;

    endPtr = context->partialBlock + 56;

    if(blockPtr > endPtr)
    {
        endPtr += 8;
        while (blockPtr < endPtr)
        {
            *blockPtr++ = 0x00;
        }
        SHA256_HashBlock(context);
        blockPtr = context->partialBlock;
        endPtr -= 8;
    }


    endPtr += 3;
    while (blockPtr < endPtr)
    {
        *blockPtr++ = 0x00;
    }

    *blockPtr++ = context->totalBytes >> 29;
    *blockPtr++ = context->totalBytes >> 21;
    *blockPtr++ = context->totalBytes >> 13;
    *blockPtr++ = context->totalBytes >> 5;
    *blockPtr++ = context->totalBytes << 3;


    SHA256_HashBlock(context);


    for (i = 0; i < 7; i++)
    {
        SHA256_OutputData (result + (i << 2), context->h[i]);
    }

    if (context->length == SHA2_256)
    {
        SHA256_OutputData (result + 28, context->h[7]);
    }
}

void SHA256_OutputData (uint8_t * output, uint32_t value)
{
    *(output++) = (uint8_t)(value >> 24);
    *(output++) = (uint8_t)(value >> 16);
    *(output++) = (uint8_t)(value >> 8);
    *(output++) = (uint8_t)value;
}
