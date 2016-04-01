using System;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using Microsoft.SqlServer.Server;

public partial class StoredProcedures
{
    [Microsoft.SqlServer.Server.SqlProcedure]
    public static void ShowMemberDueReturns (int MemberID)
    {
        // Put your code here
        using (SqlConnection conn = new SqlConnection("context connection=true"))
        {
            SqlParameter firstParam = new SqlParameter();
            firstParam.DbType = DbType.Int32;
            firstParam.Value = MemberID;
            firstParam.ParameterName = "@membID";
            SqlCommand com = new SqlCommand();
            com.CommandText = "select m.MemberID, m.FirstName+' '+m.LastName as 'Name',vr.VideoID,vr.RentDate,vr.ReturnDate,sum(vr.RentCostPerDay*datediff(d,vr.RentDate,GETDATE ())) as 'Total',(select count(vrr.VideoID) from Video vv left join VideoRental vrr on vv.VideoID = vrr.VideoID) from Member as m inner join VideoRental as vr on m.MemberID = vr.MemberID left join Video v on v.VideoID = vr.VideoID group by vr.VideoID,vr.RentalID,vr.RentDate,vr.ReturnDate,m.FirstName + ' ' + m.LastName,m.MemberID having vr.ReturnDate is null and m.MemberID = @membID;";
            com.Parameters.Add(firstParam);
            SqlContext.Pipe.ExecuteAndSend(com);
        }
    }
}
