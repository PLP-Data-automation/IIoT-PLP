"""
Author: Fuentes Juvera, Luis
E-mail: luis.fuju@outlook.com
username: LuisDFJ

Example usage: Database recover using SQLite3

Opens a file explorer browser to select valid .db files.
The function saves the logs into a .csv file.

"""
from DataBase.utils.CSaveForm import Dialog as openDialog
import sqlite3
import pandas
import os

if __name__ == "__main__":
    if not os.path.exists( "log" ):
        os.makedirs( "log" )
    for file in openDialog( 'db' ):
        filename = os.path.basename( file ).split( "." )[0]
        conn = sqlite3.connect( file )
        df_2 = pandas.read_sql( "SELECT * FROM TORCEDORA2", conn )
        df_4 = pandas.read_sql( "SELECT * FROM TORCEDORA4", conn )
        df = pandas.concat( [ df_2, df_4 ] )
        df.to_csv( f"log/{filename}.csv" )
    print( "Program finished!" )
    os.system( "PAUSE" )
        
