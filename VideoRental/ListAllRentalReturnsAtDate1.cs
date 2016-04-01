using System;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using Microsoft.SqlServer.Server;

public partial class StoredProcedures
{
    [Microsoft.SqlServer.Server.SqlProcedure]
    public static void ListAllRentalReturnsAtDate1 (DateTime ReturnDate)
    {
        // Put your code here
        using(SqlConnection conn = new SqlConnection("context connection=true"))
        {
            SqlParameter firstParam = new SqlParameter();
            firstParam.DbType = DbType.DateTime;
            firstParam.Value = ReturnDate;
            firstParam.ParameterName = "@ReturnDate";
            SqlCommand com = new SqlCommand();
            com.CommandText = "select m.MovieName,v.VCN, mr.FirstName+' '+mr.LastName as 'Name', vr.RentDate,vr.ReturnDate from VideoRental as vr inner join Video v on vr.VideoID = v.VideoID inner join Movie m on m.MovieID = v.MovieID inner join Member mr on mr.MemberID = vr.MemberID where vr.ReturnDate = @ReturnDate;";
            com.Parameters.Add(firstParam);
            SqlContext.Pipe.ExecuteAndSend(com);
        }
    }
}
