#include "postgres.h"
#include "fmgr.h"
#include "utils/geo_decls.h"

PG_MODULE_MAGIC;

PG_FUNCTION_INFO_V1(ST_DiscreteRelate);

Datum
ST_DiscreteRelate(PG_FUNCTION_ARGS)
{
    PG_RETURN_TEXT_P(cstring_to_text("Not implemented yet"));
}
