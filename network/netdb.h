/* Description of database entry for a single host. */
struct hostent 
{
   char *h_name;     /* Officila name of host. */
   char **h_aliases;  /* Alias list. */
   int h_addrtype;   /* Host address type. */
   int h_length;     /* Length of address. */
   char **h_addr_list;  /* List of addresses from name server. */
#define h_addr h_addr_list[0] /* Address, for backward compatibility. */
};


