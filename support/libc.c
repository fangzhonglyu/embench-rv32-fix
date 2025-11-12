#include <stddef.h>
void * memset (void *s, int c, size_t n){
    for(size_t i=0;i<n;i++){
        ((unsigned char *)s)[i]=(unsigned char)c;
    }
    return s;
}

void * memcpy (void *dest, const void *src, size_t n){
    for(size_t i=0;i<n;i++){
        ((unsigned char *)dest)[i]=((const unsigned char *)src)[i];
    }
    return dest;
}

int memcmp (const void *s1, const void *s2, size_t n){
    const unsigned char *p1 = (const unsigned char *)s1;
    const unsigned char *p2 = (const unsigned char *)s2;
    for(size_t i=0;i<n;i++){
        if(p1[i]!=p2[i]){
            return (int)(p1[i]-p2[i]);
        }
    }
    return 0;
}

void * memmove (void *dest, const void *src, size_t n){
    unsigned char *d = (unsigned char *)dest;
    const unsigned char *s = (const unsigned char *)src;
    if(d<s){
        for(size_t i=0;i<n;i++){
            d[i]=s[i];
        }
    }else if(d>s){
        for(size_t i=n;i>0;i--){
            d[i-1]=s[i-1];
        }
    }
    return dest;
}

// strlen
size_t strlen (const char *s){
    size_t len=0;
    while(s[len]!='\0'){
        len++;
    }
    return len;
}

// strchr
char * strchr (const char *s, int c){
    while(*s!='\0'){
        if(*s==(char)c){
            return (char *)s;
        }
        s++;
    }
    if(c=='\0'){
        return (char *)s;
    }
    return NULL;
}