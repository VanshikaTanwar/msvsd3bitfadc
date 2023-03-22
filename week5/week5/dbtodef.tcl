#!/usr/bin/tclsh
# run with openroad -no_init -exit dbtodef.tcl

# read a database file provided the input name set to from_oprd_ in env
  read_db /home/vanshikatanwar/openfasoc/openfasoc/generators/async-gen/flow/results/sky130hd/async/5_route.odb
# write the database file provided the output name set to to_oprd_ in env
  write_def /home/vanshikatanwar/openfasoc/openfasoc/generators/async-gen/flow/results/sky130hd/async/5_route.def
