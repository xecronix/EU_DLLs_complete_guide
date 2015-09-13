typedef struct
{
  int string_count;
  char* brand;
} Guitar;

/* Initialize an new guitar struct 
 * 
 * returns a pointer to the new guitar
 * */
Guitar * guitar_new();

/* Free up the guitar and release it from memory
 * This function will also free up the guitar.brand memory
 * */
void guitar_destroy(Guitar * guitar);

/*Sets the string_count value for the guitar
 * 
 * Guitar * guitar The struct that needs a new string count value
 * Int count the new number of string for the guitar
 * */
void guitar_set_string_count(Guitar * guitar, int count);

/*Gets the string_count value for the guitar
 * 
 * Guitar * guitar The struct holds the string count value we want
 * 
 * returns an integer value for the number of strings.
 * */
int guitar_get_string_count(Guitar * guitar);

/*Sets the brand value for the guitar.  
 * Frees the current brand char *
 * Copies the const * brand into a new char *
 * sets the guitar brand to this new copied value. 
 * 
 * Guitar * guitar The struct that needs a new brand value
 * */
void guitar_set_brand(Guitar * guitar, const char * brand);

/*Gets the brand pointer for the guitar
 * 
 * Guitar * guitar The struct holds the brand value we want
 * 
 * returns an char * for the guitar brand.
 * */
const char * guitar_get_brand(Guitar * guitar);
