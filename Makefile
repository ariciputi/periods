MODULE_big = periods
OBJS = periods.o
EXTENSION = periods
DOCS = README.periods

DATA = periods--1.0.sql \
	   periods--1.1.sql \
	   periods--1.0--1.1.sql

REGRESS = install \
		  periods \
		  system_time_periods \
		  system_versioning \
		  excluded_columns \
		  unique_foreign \
		  for_portion_of \
		  predicates \
		  drop_protection \
		  rename_following \
		  health_checks \
		  issues \
		  beeswax \
		  uninstall

PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
