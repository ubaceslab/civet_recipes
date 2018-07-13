#!/bin/bash

function load_grins_modules()
{
  module load gsl antioch
}
export -f load_grins_modules

function load_grins_modules_dbg()
{
  module load gsl antioch-dbg
}
export -f load_grins_modules_dbg
