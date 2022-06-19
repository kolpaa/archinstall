/* user and group to drop privileges to */
static const char *user  = "kolpa";
static const char *group = "kolpa";

static const char *colorname[NUMCOLS] = {
	[INIT] =   "black",     /* after initialization */
	[INPUT] =  "#202020",   /* during input */
	[FAILED] = "#d4be98",   /* wrong password */
};

/* treat a cleared input like a wrong password (color) */
static const int failonclear = 1;
