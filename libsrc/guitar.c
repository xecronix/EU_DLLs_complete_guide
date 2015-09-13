#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "guitar.h"

void guitar_set_string_count(Guitar * guitar, int count)
{
  guitar->string_count = count;
}

int guitar_get_string_count(Guitar * guitar)
{
  return guitar->string_count;
}

void guitar_set_brand(Guitar * guitar, const char * brand)
{
  if (guitar->brand != NULL)
  {
      free(guitar->brand);
  }
  char * new_brand = (char*)malloc(strlen(brand)+1);
  strncpy(new_brand, brand, strlen(brand));
  new_brand[strlen(brand)] = '\0';
  guitar->brand = new_brand;
}

const char * guitar_get_brand(Guitar * guitar)
{
  return guitar->brand;
}

void guitar_destroy(Guitar * guitar)
{
  if (guitar->brand != NULL)
  {
      free(guitar->brand);
      guitar->brand=NULL;
  }
  
  free(guitar);
}

Guitar * guitar_new()
{
  Guitar * guitar;
  guitar = (Guitar*)malloc(sizeof(Guitar));
  memset(guitar, '\0', sizeof(Guitar));
  return guitar;
}
