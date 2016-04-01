using System;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using Microsoft.SqlServer.Server;

public partial class StoredProcedures
{
    [Microsoft.SqlServer.Server.SqlProcedure]
    public static void ShowMoviesInGenre (string genre)
    {
        // Put your code here
        using (SqlConnection conn = new SqlConnection("context connection=true"))
        {
            SqlParameter firstParam = new SqlParameter();
            firstParam.DbType = DbType.String;
            firstParam.Value = genre;
            firstParam.ParameterName = "@genre";
            SqlCommand com = new SqlCommand();
            com.CommandText = "select count(m.MovieID) from Movie as m full join Genre as g on m.MovieCategory = g.GenreID where g.GenreName = @genre;";
            com.Parameters.Add(firstParam);
            SqlContext.Pipe.ExecuteAndSend(com);
        }
    }
}
