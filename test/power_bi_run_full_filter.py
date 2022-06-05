"""
Author: Fuentes Juvera, Luis
E-mail: luis.fuju@outlook.com
username: LuisDFJ

Example usage: High-level abstraction for fetching IIoT Modules on PowerBI.

Copy the following code on a Python power bi get data script.

"""

from DataAccess.Query import run_query

if __name__ == "__main__":
  try:
      results = run_query()
      df = results["full-filter"]
      print( df )
  except Exception:
      print( "Loading failed!" )