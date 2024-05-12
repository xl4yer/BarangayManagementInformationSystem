using Bmis.Class;
using Bmis.Models;
using MySql.Data.MySqlClient;
using System.Data;

namespace Bmis.Services
{
    public class ClearanceServices
    {
        private readonly AppDb _constring;
        public IConfiguration Configuration;

        public ClearanceServices(AppDb constring, IConfiguration configuration)
        {
            _constring = constring;
            Configuration = configuration;
        }

        public async Task<List<clearance>> Clearance()
        {
            List<clearance> xjob = new List<clearance>();
            using (var con = new MySqlConnection(_constring.GetConnection()))
            {
                try
                {
                    await con.OpenAsync().ConfigureAwait(false);
                    var com = new MySqlCommand("viewclearance", con)
                    {
                        CommandType = CommandType.StoredProcedure,
                    };
                    var rdr = await com.ExecuteReaderAsync().ConfigureAwait(false);
                    while (await rdr.ReadAsync().ConfigureAwait(false))
                    {
                        xjob.Add(new clearance
                        {
                            clearID = rdr["clearID"].ToString(),
                            type = rdr["type"].ToString(),
                            resID = rdr["resID"].ToString(),
                            date = Convert.ToDateTime(rdr["date"]),
                            purpose = rdr["purpose"].ToString(),
                            fullname = rdr["fullname"].ToString(),
                            purok = rdr["purok"].ToString(),
                            rstatus = rdr["rstatus"].ToString(),
                            age = rdr["age"].ToString(),
                            gender = rdr["gender"].ToString()
                        });
                    }
                    await rdr.CloseAsync().ConfigureAwait(false);
                }
                catch (Exception ex)
                {
                    // Handle the exception here
                }
                finally
                {
                    await con.CloseAsync().ConfigureAwait(false);
                }
            }
            return xjob;
        }

        public async Task<List<clearance>> SearchClearance(string search)
        {
            List<clearance> xjob = new List<clearance>();
            using (var con = new MySqlConnection(_constring.GetConnection()))
            {
                try
                {
                    await con.OpenAsync().ConfigureAwait(false);
                    var com = new MySqlCommand("SearchClearance", con)
                    {
                        CommandType = CommandType.StoredProcedure,
                    };
                    com.Parameters.Clear();
                    com.Parameters.AddWithValue("search", search);
                    com.Parameters.AddWithValue("@searchWildcard", $"{search}%");
                    var rdr = await com.ExecuteReaderAsync().ConfigureAwait(false);
                    while (await rdr.ReadAsync().ConfigureAwait(false))
                    {
                        xjob.Add(new clearance
                        {
                            clearID = rdr["clearID"].ToString(),
                            type = rdr["type"].ToString(),
                            resID = rdr["resID"].ToString(),
                            date = Convert.ToDateTime(rdr["date"]),
                            purpose = rdr["purpose"].ToString(),
                            fullname = rdr["fullname"].ToString(),
                            purok = rdr["purok"].ToString(),
                            rstatus = rdr["rstatus"].ToString(),
                        });
                    }
                    await rdr.CloseAsync().ConfigureAwait(false);
                }
                catch (Exception ex)
                {
                    // Handle the exception here
                }
                finally
                {
                    await con.CloseAsync().ConfigureAwait(false);
                }
            }
            return xjob;
        }

        public async Task<List<clearance>> RequestClearance(string resID)
        {
            List<clearance> xjob = new List<clearance>();
            using (var con = new MySqlConnection(_constring.GetConnection()))
            {
                try
                {
                    await con.OpenAsync().ConfigureAwait(false);
                    var com = new MySqlCommand("RequestClearance", con)
                    {
                        CommandType = CommandType.StoredProcedure,
                    };
                    com.Parameters.Clear();
                    com.Parameters.AddWithValue("_resID", resID);
                    var rdr = await com.ExecuteReaderAsync().ConfigureAwait(false);
                    while (await rdr.ReadAsync().ConfigureAwait(false))
                    {
                        xjob.Add(new clearance
                        {
                            clearID = rdr["clearID"].ToString(),
                            type = rdr["type"].ToString(),
                            resID = rdr["resID"].ToString(),
                            date = Convert.ToDateTime(rdr["date"]),
                            purpose = rdr["purpose"].ToString(),
                            rstatus = rdr["rstatus"].ToString(),
                        });
                    }
                    await rdr.CloseAsync().ConfigureAwait(false);
                }
                catch (Exception ex)
                {
                    // Handle the exception here
                }
                finally
                {
                    await con.CloseAsync().ConfigureAwait(false);
                }
            }
            return xjob;
        }

        public async Task<int> AddClearance(clearance xjob)
        {
            using (var con = new MySqlConnection(_constring.GetConnection()))
            {
                try
                {
                    await con.OpenAsync().ConfigureAwait(false);
                    var com = new MySqlCommand("AddClearance", con)
                    {
                        CommandType = CommandType.StoredProcedure,
                    };
                    com.Parameters.AddWithValue("_clearID", xjob.clearID);
                    com.Parameters.AddWithValue("_date", xjob.date);
                    com.Parameters.AddWithValue("_type", xjob.type);
                    com.Parameters.AddWithValue("_resID", xjob.resID);
                    com.Parameters.AddWithValue("_purpose", xjob.purpose);
                    com.Parameters.AddWithValue("_rstatus", xjob.rstatus);
                    return await com.ExecuteNonQueryAsync().ConfigureAwait(false);
                }
                catch (Exception ex)
                {
                    // Handle the exception here
                }
                finally
                {
                    await con.CloseAsync().ConfigureAwait(false);
                }
            }
            return 0;
        }

        public async Task<int> UpdateClearance(clearance xjob)
        {
            using (var con = new MySqlConnection(_constring.GetConnection()))
            {
                try
                {
                    await con.OpenAsync().ConfigureAwait(false);
                    var com = new MySqlCommand("UpdateClearance", con)
                    {
                        CommandType = CommandType.StoredProcedure,
                    };
                    com.Parameters.AddWithValue("_clearID", xjob.clearID);
                    com.Parameters.AddWithValue("_date", xjob.date);
                    com.Parameters.AddWithValue("_type", xjob.type);
                    com.Parameters.AddWithValue("_resID", xjob.resID);
                    com.Parameters.AddWithValue("_purpose", xjob.purpose);
                    com.Parameters.AddWithValue("_rstatus", xjob.rstatus);
                    return await com.ExecuteNonQueryAsync().ConfigureAwait(false);
                }
                catch (Exception ex)
                {
                    // Handle the exception here
                }
                finally
                {
                    await con.CloseAsync().ConfigureAwait(false);
                }
            }
            return 0;
        }
    }
}
