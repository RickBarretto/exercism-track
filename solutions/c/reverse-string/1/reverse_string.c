#include "reverse_string.h"

#include <string.h>
#include <stdlib.h>

char *reverse(const char *value)
{
    int len = strlen(value);
    char *res = calloc(len + 1, sizeof(char));

    for (int i = 0, j = len - 1; value[i] != '\0' ;i++, j--)
    {
        res[j] = value[i];
    }

    res[len] = '\0';
    return res;
    
}