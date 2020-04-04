/**
 * Exemple sha256 XC8
 * 
*/

#include "mcc_generated_files/mcc.h"
#include "sha256.h"
#include <stdint.h>
#include <string.h>

// Hash contexts
union
{
    SHA256_CONTEXT context256;          // Context for SHA-224/256
} contexts;

// Working buffers for SHA hashes
union
{

    uint32_t workingBuffer32[80];       // Working buffer for SHA-1/224/256
}workingBuffer;;

// Sample message texts
const uint8_t message0[] = "";
const uint8_t message1[] = "a";
const uint8_t message2[] = "abc";
const uint8_t message3[] = "message digest";
const uint8_t message4[] = "abcdefghijklmnopqrstuvwxyz";
const uint8_t message5[] = "abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq";
const uint8_t message6[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
const uint8_t message7[] = "1234567890";
const uint8_t message8[] = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa";

// Message digests for SHA-256 (for comparison)
const uint8_t message0_256_digest[] = {0xE3,0xB0,0xC4,0x42,0x98,0xFC,0x1C,0x14,0x9A,0xFB,0xF4,0xC8,0x99,0x6F,0xB9,0x24,0x27,0xAE,0x41,0xE4,0x64,0x9B,0x93,0x4C,0xA4,0x95,0x99,0x1B,0x78,0x52,0xB8,0x55,};
const uint8_t message1_256_digest[] = {0xCA,0x97,0x81,0x12,0xCA,0x1B,0xBD,0xCA,0xFA,0xC2,0x31,0xB3,0x9A,0x23,0xDC,0x4D,0xA7,0x86,0xEF,0xF8,0x14,0x7C,0x4E,0x72,0xB9,0x80,0x77,0x85,0xAF,0xEE,0x48,0xBB,};
const uint8_t message2_256_digest[] = {0xBA,0x78,0x16,0xBF,0x8F,0x01,0xCF,0xEA,0x41,0x41,0x40,0xDE,0x5D,0xAE,0x22,0x23,0xB0,0x03,0x61,0xA3,0x96,0x17,0x7A,0x9C,0xB4,0x10,0xFF,0x61,0xF2,0x00,0x15,0xAD,};
const uint8_t message3_256_digest[] = {0xF7,0x84,0x6F,0x55,0xCF,0x23,0xE1,0x4E,0xEB,0xEA,0xB5,0xB4,0xE1,0x55,0x0C,0xAD,0x5B,0x50,0x9E,0x33,0x48,0xFB,0xC4,0xEF,0xA3,0xA1,0x41,0x3D,0x39,0x3C,0xB6,0x50,};
const uint8_t message4_256_digest[] = {0x71,0xC4,0x80,0xDF,0x93,0xD6,0xAE,0x2F,0x1E,0xFA,0xD1,0x44,0x7C,0x66,0xC9,0x52,0x5E,0x31,0x62,0x18,0xCF,0x51,0xFC,0x8D,0x9E,0xD8,0x32,0xF2,0xDA,0xF1,0x8B,0x73,};
const uint8_t message5_256_digest[] = {0x24,0x8D,0x6A,0x61,0xD2,0x06,0x38,0xB8,0xE5,0xC0,0x26,0x93,0x0C,0x3E,0x60,0x39,0xA3,0x3C,0xE4,0x59,0x64,0xFF,0x21,0x67,0xF6,0xEC,0xED,0xD4,0x19,0xDB,0x06,0xC1,};
const uint8_t message6_256_digest[] = {0xDB,0x4B,0xFC,0xBD,0x4D,0xA0,0xCD,0x85,0xA6,0x0C,0x3C,0x37,0xD3,0xFB,0xD8,0x80,0x5C,0x77,0xF1,0x5F,0xC6,0xB1,0xFD,0xFE,0x61,0x4E,0xE0,0xA7,0xC8,0xFD,0xB4,0xC0,};
const uint8_t message7_256_digest[] = {0xF3,0x71,0xBC,0x4A,0x31,0x1F,0x2B,0x00,0x9E,0xEF,0x95,0x2D,0xD8,0x3C,0xA8,0x0E,0x2B,0x60,0x02,0x6C,0x8E,0x93,0x55,0x92,0xD0,0xF9,0xC3,0x08,0x45,0x3C,0x81,0x3E,};
const uint8_t message8_256_digest[] = {0xCD,0xC7,0x6E,0x5C,0x99,0x14,0xFB,0x92,0x81,0xA1,0xC7,0xE2,0x84,0xD7,0x3E,0x67,0xF1,0x80,0x9A,0x48,0xA4,0x97,0x20,0x0E,0x04,0x6D,0x39,0xCC,0xC7,0x11,0x2C,0xD0,};

uint8_t digest[64];
/*
                         Main application
 */
void main(void)
{
    // Initialize the device
    SYSTEM_Initialize();

    // If using interrupts in PIC18 High/Low Priority Mode you need to enable the Global High and Low Interrupts
    // If using interrupts in PIC Mid-Range Compatibility Mode you need to enable the Global Interrupts
    // Use the following macros to:

    // Enable the Global Interrupts
    //INTERRUPT_GlobalInterruptEnable();

    // Disable the Global Interrupts
    //INTERRUPT_GlobalInterruptDisable();

    while (1)
    {
      
     SHA256_Initialize (&contexts.context256, SHA2_256, workingBuffer.workingBuffer32);
    SHA256_DataAdd (&contexts.context256, (uint8_t *)message0, 0);
    SHA256_Calculate (&contexts.context256, digest);
    if (memcmp(digest, message0_256_digest, 32))
    {
    
    }
    
    
    
    
    SHA256_Initialize (&contexts.context256, SHA2_256, workingBuffer.workingBuffer32);
    SHA256_DataAdd (&contexts.context256, (uint8_t *)message1, 1);
    SHA256_Calculate (&contexts.context256, digest);
    if (memcmp(digest, message1_256_digest, 32))
    {
        
    }

   

        // Add your application code
    }
}
/**
 End of File
*/