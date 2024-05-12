using Bmis.Class;
using Bmis.Models;
using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;
using MySql.Data.MySqlClient;
using System.Data;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;

namespace Bmis.Services
{
    public class UserServices
    {
        private readonly AppDb _constring;
        public IConfiguration Configuration;
        private readonly AppSettings _appSetting;

        public UserServices(AppDb constring, IConfiguration configuration, IOptions<AppSettings> appSettings)
        {
            _constring = constring;
            Configuration = configuration;
            _appSetting = appSettings.Value;
        }

        public async Task<int> UpdateAdminPassword(users xuser)
        {
            using (var con = new MySqlConnection(_constring.GetConnection()))
            {
                try
                {
                    await con.OpenAsync().ConfigureAwait(false);
                    var com = new MySqlCommand("UpdateAdminPassword", con)
                    {
                        CommandType = CommandType.StoredProcedure,
                    };
                    com.Parameters.AddWithValue("_userID", xuser.userID);
                    com.Parameters.AddWithValue("_password", xuser.password);
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
        public async Task<int> AddUsers(users xuser)
        {
            using (var con = new MySqlConnection(_constring.GetConnection()))
            {
                try
                {
                    await con.OpenAsync().ConfigureAwait(false);
                    var com = new MySqlCommand("AddUsers", con)
                    {
                        CommandType = CommandType.StoredProcedure,
                    };
                    com.Parameters.AddWithValue("_userID", xuser.userID);
                    com.Parameters.AddWithValue("_name", xuser.name);
                    com.Parameters.AddWithValue("_username", xuser.username);
                    com.Parameters.AddWithValue("_password", xuser.password);
                    com.Parameters.AddWithValue("_role", xuser.role);
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

        public async Task<int> UpdateUsers(users xuser)
        {
            using (var con = new MySqlConnection(_constring.GetConnection()))
            {
                try
                {
                    await con.OpenAsync().ConfigureAwait(false);
                    var com = new MySqlCommand("UpdateUsers", con)
                    {
                        CommandType = CommandType.StoredProcedure,
                    };
                    com.Parameters.AddWithValue("_userID", xuser.userID);
                    com.Parameters.AddWithValue("_name", xuser.name);
                    com.Parameters.AddWithValue("_username", xuser.username);
                    com.Parameters.AddWithValue("_password", xuser.password);
                    com.Parameters.AddWithValue("_role", xuser.role);
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

        public async Task<int> DeleteUsers(users xuser)
        {
            using (var con = new MySqlConnection(_constring.GetConnection()))
            {
                try
                {
                    await con.OpenAsync().ConfigureAwait(false);
                    var com = new MySqlCommand("DeleteUsers", con)
                    {
                        CommandType = CommandType.StoredProcedure,
                    };
                    com.Parameters.AddWithValue("_userID", xuser.userID);
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
        public async Task<List<users>> Users()
        {
            List<users> xuser = new List<users>();
            using (var con = new MySqlConnection(_constring.GetConnection()))
            {
                try
                {
                    await con.OpenAsync().ConfigureAwait(false);
                    var com = new MySqlCommand("ViewUsers", con)
                    {
                        CommandType = CommandType.StoredProcedure,
                    };
                    var rdr = await com.ExecuteReaderAsync().ConfigureAwait(false);
                    while (await rdr.ReadAsync().ConfigureAwait(false))
                    {
                        xuser.Add(new users
                        {
                            userID = rdr["userID"].ToString(),
                            name = rdr["name"]?.ToString(),
                            username = rdr["username"].ToString(),
                            password = rdr["password"].ToString(),
                            role = rdr["role"].ToString(),
                           
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
            return xuser;
        }

        public async Task<List<users>> UsernameCheck(string username)
        {
            List<users> xuser = new List<users>();
            using (var con = new MySqlConnection(_constring.GetConnection()))
            {
                try
                {
                    await con.OpenAsync().ConfigureAwait(false);
                    var com = new MySqlCommand("UsernameCheck", con)
                    {
                        CommandType = CommandType.StoredProcedure,
                    };
                    com.Parameters.Clear();
                    com.Parameters.AddWithValue("_username", username);
                    var rdr = await com.ExecuteReaderAsync().ConfigureAwait(false);
                    while (await rdr.ReadAsync().ConfigureAwait(false))
                    {
                        xuser.Add(new users
                        {
                            userID = rdr["userID"].ToString(),
                            name = rdr["name"]?.ToString(),
                            username = rdr["username"].ToString(),
                            password = rdr["password"].ToString(),
                            role = rdr["role"].ToString(),

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
            return xuser;
        }

        public async Task<List<users>> Login(string username, string password)
        {
            List<users> xuser = new();
            using (var con = new MySqlConnection(_constring.GetConnection()))
            {
                await con.OpenAsync().ConfigureAwait(false);
                var com = new MySqlCommand("Userlogin", con)
                {
                    CommandType = CommandType.StoredProcedure,
                };
                com.Parameters.Clear();
                com.Parameters.AddWithValue("_username", username);
                com.Parameters.AddWithValue("_password", password);
                var rdr = await com.ExecuteReaderAsync().ConfigureAwait(false);
                if (await rdr.ReadAsync().ConfigureAwait(false))
                {
                    xuser.Add(new users
                    {
                        userID = rdr["userID"].ToString(),
                        name = rdr["name"].ToString(),
                        username = rdr["username"].ToString(),
                        role = rdr["role"].ToString(),
                        password = rdr["password"].ToString(),

                    });
                    var tokenHandler = new JwtSecurityTokenHandler();
                    var key = Encoding.ASCII.GetBytes(_appSetting.Secret);
                    var tokenDescriptor = new SecurityTokenDescriptor
                    {
                        Subject = new ClaimsIdentity(new Claim[] {
                    new Claim(ClaimTypes.Name ,username),
                    new Claim(ClaimTypes.Role ,xuser[0].role!),
                    new Claim (JwtRegisteredClaimNames.Jti,Guid.NewGuid().ToString())
                    }),

                        Expires = DateTime.UtcNow.AddDays(1),
                        SigningCredentials = new SigningCredentials(new SymmetricSecurityKey(key),
                        SecurityAlgorithms.Aes128CbcHmacSha256)
                    };
                    var token = tokenHandler.CreateToken(tokenDescriptor);
                    xuser[0].token = tokenHandler.WriteToken(token);
                }
                else
                {
                    xuser.Add(new users
                    {
                        userID = null,
                        role = null,
                        name = null,
                        username = null,
                        password = null
                    });
                }
            }
            return xuser;
        }
    }
}
