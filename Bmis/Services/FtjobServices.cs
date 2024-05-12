using Bmis.Class;
using Bmis.Models;
using MySql.Data.MySqlClient;
using System.Data;

namespace Bmis.Services
{
    public class FtjobServices
    {
        private readonly AppDb _constring;
        public IConfiguration Configuration;

        public FtjobServices(AppDb constring, IConfiguration configuration)
        {
            _constring = constring;
            Configuration = configuration;
        }

        public async Task<List<ftjob>> FtJob()
        {
            List<ftjob> xftjob = new List<ftjob>();
            using (var con = new MySqlConnection(_constring.GetConnection()))
            {
                try
                {
                    await con.OpenAsync().ConfigureAwait(false);
                    var com = new MySqlCommand("ViewftJob", con)
                    {
                        CommandType = CommandType.StoredProcedure,
                    };
                    var rdr = await com.ExecuteReaderAsync().ConfigureAwait(false);
                    while (await rdr.ReadAsync().ConfigureAwait(false))
                    {
                        xftjob.Add(new ftjob
                        {
                            ftjobID = rdr["ftjobID"].ToString(),
                            type = rdr["type"].ToString(),
                            resID = rdr["resID"].ToString(),
                            date = Convert.ToDateTime(rdr["date"]),
                            fullname = rdr["fullname"].ToString(),
                            purok = rdr["purok"].ToString(),
                            rstatus = rdr["rstatus"].ToString(),
                            age = rdr["age"].ToString(),
                            gender = rdr["gender"].ToString(),
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
            return xftjob;
        }

        public async Task<int> AddftJob(ftjob xjob)
        {
            using (var con = new MySqlConnection(_constring.GetConnection()))
            {
                try
                {
                    await con.OpenAsync().ConfigureAwait(false);
                    var com = new MySqlCommand("AddftJob", con)
                    {
                        CommandType = CommandType.StoredProcedure,
                    };
                    com.Parameters.AddWithValue("_ftjobID", xjob.ftjobID);
                    com.Parameters.AddWithValue("_date", xjob.date);
                    com.Parameters.AddWithValue("_type", xjob.type);
                    com.Parameters.AddWithValue("_resID", xjob.resID);
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

        public async Task<int> UpdateftJob(ftjob xjob)
        {
            using (var con = new MySqlConnection(_constring.GetConnection()))
            {
                try
                {
                    await con.OpenAsync().ConfigureAwait(false);
                    var com = new MySqlCommand("UpdateftJob", con)
                    {
                        CommandType = CommandType.StoredProcedure,
                    };
                    com.Parameters.AddWithValue("_ftjobID", xjob.ftjobID);
                    com.Parameters.AddWithValue("_date", xjob.date);
                    com.Parameters.AddWithValue("_type", xjob.type);
                    com.Parameters.AddWithValue("_resID", xjob.resID);
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


        public async Task<List<ftjob>> RequestftJob(string resID)
        {
            List<ftjob> xjob = new List<ftjob>();
            using (var con = new MySqlConnection(_constring.GetConnection()))
            {
                try
                {
                    await con.OpenAsync().ConfigureAwait(false);
                    var com = new MySqlCommand("RequestFtJob", con)
                    {
                        CommandType = CommandType.StoredProcedure,
                    };
                    com.Parameters.Clear();
                    com.Parameters.AddWithValue("_resID", resID);
                    var rdr = await com.ExecuteReaderAsync().ConfigureAwait(false);
                    while (await rdr.ReadAsync().ConfigureAwait(false))
                    {
                        xjob.Add(new ftjob
                        {
                            ftjobID = rdr["ftjobID"].ToString(),
                            type = rdr["type"].ToString(),
                            resID = rdr["resID"].ToString(),
                            date = Convert.ToDateTime(rdr["date"]),
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

        public async Task<List<ftjob>> SearchftJob(string search)
        {
            List<ftjob> xjob = new List<ftjob>();
            using (var con = new MySqlConnection(_constring.GetConnection()))
            {
                try
                {
                    await con.OpenAsync().ConfigureAwait(false);
                    var com = new MySqlCommand("SearchftJob", con)
                    {
                        CommandType = CommandType.StoredProcedure,
                    };
                    com.Parameters.Clear();
                    com.Parameters.AddWithValue("search", search);
                    com.Parameters.AddWithValue("@searchWildcard", $"{search}%");
                    var rdr = await com.ExecuteReaderAsync().ConfigureAwait(false);
                    while (await rdr.ReadAsync().ConfigureAwait(false))
                    {
                        xjob.Add(new ftjob
                        {
                            ftjobID = rdr["ftjobID"].ToString(),
                            type = rdr["type"].ToString(),
                            resID = rdr["resID"].ToString(),
                            date = Convert.ToDateTime(rdr["date"]),
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
    }
}
