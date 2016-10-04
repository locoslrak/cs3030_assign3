 
#===============================================================================
#
#         USAGE: ./bolton.hw3.sed 
# 
#   DESCRIPTION: 
# 
#        AUTHOR: Morgan Dahl, morgandahl@mail.weber.edu
#  ORGANIZATION: 
#       CREATED: 09/29/2016 12:15
#      REVISION:  ---
#===============================================================================

#set -o nounset                              # Treat unset variables as an error

s'|,\(\w\+\)/\(\w\+\)/\(\w\+\),\(\w\+\)/\(\w\+\)/\(\w\+\)|,\1.\2.\3,\4.\5.\6|' $6


