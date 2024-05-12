using Bmis.Class;
using Bmis.Models;
using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;
using MySql.Data.MySqlClient;
using System.Data;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;
using System.Security.Cryptography;
using System.Text;

namespace Bmis.Services
{
    public class ResidentServices
    {
        private readonly AppDb _constring;
        public IConfiguration Configuration;
        private readonly AppSettings _appSetting;

        public ResidentServices(AppDb constring, IConfiguration configuration, IOptions<AppSettings> appSettings)
        {
            _constring = constring;
            Configuration = configuration;
            _appSetting = appSettings.Value;
        }
        public async Task<List<residents>> Residents()
        {
            List<residents> xres = new List<residents>();
            using (var con = new MySqlConnection(_constring.GetConnection()))
            {
                try
                {
                    await con.OpenAsync().ConfigureAwait(false);
                    var com = new MySqlCommand("Viewresidents", con)
                    {
                        CommandType = CommandType.StoredProcedure,
                    };
                    var rdr = await com.ExecuteReaderAsync().ConfigureAwait(false);
                    while (await rdr.ReadAsync().ConfigureAwait(false))
                    {
                        xres.Add(new residents
                        {
                            resID = rdr["resID"].ToString(),
                            houseID = rdr["houseID"]?.ToString(),
                            fname = rdr["fname"].ToString(),
                            mname = rdr["mname"].ToString(),
                            lname = rdr["lname"].ToString(),
                            ext = rdr["ext"].ToString(),
                            purok = rdr["purok"].ToString(),
                            gender = rdr["gender"].ToString(),
                            bdate = Convert.ToDateTime(rdr["bdate"]),
                            status = rdr["status"].ToString(),
                            contact = rdr["contact"].ToString(),
                            fullname = rdr["fullname"].ToString(),
                            head = rdr["head"].ToString(),
                            age = rdr["age"].ToString(),
                            email = rdr["email"].ToString()

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
            return xres;
        }

        public async Task<List<residents>> CheckEmail(string email)
        {
            List<residents> xres = new List<residents>();
            using (var con = new MySqlConnection(_constring.GetConnection()))
            {
                try
                {
                    await con.OpenAsync().ConfigureAwait(false);
                    var com = new MySqlCommand("CheckEmail", con)
                    {
                        CommandType = CommandType.StoredProcedure,
                    };
                    com.Parameters.Clear();
                    com.Parameters.AddWithValue("_email", email);
                    var rdr = await com.ExecuteReaderAsync().ConfigureAwait(false);
                    while (await rdr.ReadAsync().ConfigureAwait(false))
                    {
                        xres.Add(new residents
                        {
                            resID = rdr["resID"].ToString(),
                            houseID = rdr["houseID"]?.ToString(),
                            fname = rdr["fname"].ToString(),
                            mname = rdr["mname"].ToString(),
                            lname = rdr["lname"].ToString(),
                            ext = rdr["ext"].ToString(),
                            purok = rdr["purok"].ToString(),
                            gender = rdr["gender"].ToString(),
                            bdate = Convert.ToDateTime(rdr["bdate"]),
                            status = rdr["status"].ToString(),
                            email = rdr["email"].ToString(),
                            contact = rdr["contact"].ToString()
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
            return xres;
        }

        public async Task<List<residents>> CheckUser(string username)
        {
            List<residents> xres = new List<residents>();
            using (var con = new MySqlConnection(_constring.GetConnection()))
            {
                try
                {
                    await con.OpenAsync().ConfigureAwait(false);
                    var com = new MySqlCommand("CheckUser", con)
                    {
                        CommandType = CommandType.StoredProcedure,
                    };
                    com.Parameters.Clear();
                    com.Parameters.AddWithValue("_username", username);
                    var rdr = await com.ExecuteReaderAsync().ConfigureAwait(false);
                    while (await rdr.ReadAsync().ConfigureAwait(false))
                    {
                        xres.Add(new residents
                        {
                            resID = rdr["resID"].ToString(),
                            houseID = rdr["houseID"]?.ToString(),
                            fname = rdr["fname"].ToString(),
                            mname = rdr["mname"].ToString(),
                            lname = rdr["lname"].ToString(),
                            ext = rdr["ext"].ToString(),
                            purok = rdr["purok"].ToString(),
                            gender = rdr["gender"].ToString(),
                            bdate = Convert.ToDateTime(rdr["bdate"]),
                            status = rdr["status"].ToString(),
                            email = rdr["email"].ToString()

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
            return xres;
        }

        public async Task<List<residents>> Profile(string resID)
        {
            List<residents> xres = new List<residents>();
            using (var con = new MySqlConnection(_constring.GetConnection()))
            {
                try
                {
                    await con.OpenAsync().ConfigureAwait(false);
                    var com = new MySqlCommand("Profile", con)
                    {
                        CommandType = CommandType.StoredProcedure,
                    };
                    com.Parameters.Clear();
                    com.Parameters.AddWithValue("_resID", resID);
                    var rdr = await com.ExecuteReaderAsync().ConfigureAwait(false);
                    while (await rdr.ReadAsync().ConfigureAwait(false))
                    {
                        xres.Add(new residents
                        {
                            resID = rdr["resID"].ToString(),
                            fname = rdr["fname"].ToString(),
                            mname = rdr["mname"].ToString(),
                            lname = rdr["lname"].ToString(),
                            ext = rdr["ext"].ToString(),
                            purok = rdr["purok"].ToString(),
                            gender = rdr["gender"].ToString(),
                            bdate = Convert.ToDateTime(rdr["bdate"]),
                            status = rdr["status"].ToString(),
                            contact = rdr["contact"].ToString(),
                            username = rdr["username"].ToString(),
                            password = rdr["password"].ToString(),
                            email = rdr["email"].ToString(),
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
            return xres;
        }

        public async Task<List<residents>> Login(string user, string pwd)
        {
            List<residents> xres = new();
            using (var con = new MySqlConnection(_constring.GetConnection()))
            {
                await con.OpenAsync().ConfigureAwait(false);
                var com = new MySqlCommand("ResidentLogin", con)
                {
                    CommandType = CommandType.StoredProcedure,
                };
                com.Parameters.Clear();
                com.Parameters.AddWithValue("_username", user);

                // Hash the entered password for comparison
                var hashedPassword = HashPassword(pwd);
                com.Parameters.AddWithValue("_password", hashedPassword);

                var rdr = await com.ExecuteReaderAsync().ConfigureAwait(false);
                while (await rdr.ReadAsync().ConfigureAwait(false))
                {
                    xres.Add(new residents
                    {
                        resID = rdr["resID"].ToString(),
                        fname = rdr["fname"].ToString(),
                        mname = rdr["mname"].ToString(),
                        lname = rdr["lname"].ToString(),
                        ext = rdr["ext"].ToString(),
                        purok = rdr["purok"].ToString(),
                        gender = rdr["gender"].ToString(),
                        bdate = Convert.ToDateTime(rdr["bdate"]),
                        status = rdr["status"].ToString(),
                        contact = rdr["contact"].ToString(),
                        username = rdr["username"].ToString(),
                        password = rdr["password"].ToString(),
                        email = rdr["email"].ToString(),
                    });
                }
                if (xres.Count > 0)
                {
                    var tokenHandler = new JwtSecurityTokenHandler();
                    var key = Encoding.ASCII.GetBytes(_appSetting.Secret);
                    var tokenDescriptor = new SecurityTokenDescriptor
                    {
                        Subject = new ClaimsIdentity(new Claim[]
                        {
                    new Claim(ClaimTypes.Name, user),
                    new Claim(JwtRegisteredClaimNames.Jti, Guid.NewGuid().ToString())
                        }),
                        Expires = DateTime.UtcNow.AddDays(1),
                        SigningCredentials = new SigningCredentials(
                            new SymmetricSecurityKey(key), SecurityAlgorithms.Aes128CbcHmacSha256)
                    };
                    var token = tokenHandler.CreateToken(tokenDescriptor);
                    xres[0].token = tokenHandler.WriteToken(token);
                }
                return xres;
            }
        }

        public async Task<int> AddResident(residents xres)
        {
            using (var con = new MySqlConnection(_constring.GetConnection()))
            {
                try
                {
                    await con.OpenAsync().ConfigureAwait(false);
                    var com = new MySqlCommand("AddResident", con)
                    {
                        CommandType = CommandType.StoredProcedure,
                    };
                    com.Parameters.AddWithValue("_resID", xres.resID);
                    com.Parameters.AddWithValue("_houseID", xres.houseID);
                    com.Parameters.AddWithValue("_fname", xres.fname);
                    com.Parameters.AddWithValue("_mname", xres.mname);
                    com.Parameters.AddWithValue("_lname", xres.lname);
                    com.Parameters.AddWithValue("_ext", xres.ext);
                    com.Parameters.AddWithValue("_gender", xres.gender);
                    com.Parameters.AddWithValue("_bdate", xres.bdate);
                    com.Parameters.AddWithValue("_status", xres.status);
                    com.Parameters.AddWithValue("_contact", xres.contact);
                    com.Parameters.AddWithValue("_purok", xres.purok);
                    com.Parameters.AddWithValue("_username", xres.username);

                    // Hash the password before saving
                    var hashedPassword = HashPassword(xres.password);
                    com.Parameters.AddWithValue("_password", hashedPassword);

                    com.Parameters.AddWithValue("_email", xres.email);
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

        private string HashPassword(string password)
        {
            using (var sha256 = SHA256.Create())
            {
                var hashedBytes = sha256.ComputeHash(Encoding.UTF8.GetBytes(password));
                var builder = new StringBuilder();
                for (int i = 0; i < hashedBytes.Length; i++)
                {
                    builder.Append(hashedBytes[i].ToString("x2"));
                }
                return builder.ToString();
            }
        }

        public async Task<int> UpdateResident(residents xres)
        {
            using (var con = new MySqlConnection(_constring.GetConnection()))
            {
                try
                {
                    await con.OpenAsync().ConfigureAwait(false);
                    var com = new MySqlCommand("UpdateResident", con)
                    {
                        CommandType = CommandType.StoredProcedure,
                    };
                    com.Parameters.AddWithValue("_houseID", xres.houseID);
                    com.Parameters.AddWithValue("_resID", xres.resID);
                    com.Parameters.AddWithValue("_fname", xres.fname);
                    com.Parameters.AddWithValue("_mname", xres.mname);
                    com.Parameters.AddWithValue("_lname", xres.lname);
                    com.Parameters.AddWithValue("_ext", xres.ext);
                    com.Parameters.AddWithValue("_gender", xres.gender);
                    com.Parameters.AddWithValue("_bdate", xres.bdate);
                    com.Parameters.AddWithValue("_status", xres.status);
                    com.Parameters.AddWithValue("_contact", xres.contact);
                    com.Parameters.AddWithValue("_purok", xres.purok);
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

        public async Task<int> UpdatePassword(residents xres)
        {
            using (var con = new MySqlConnection(_constring.GetConnection()))
            {
                try
                {
                    await con.OpenAsync().ConfigureAwait(false);
                    var com = new MySqlCommand("UpdatePassword", con)
                    {
                        CommandType = CommandType.StoredProcedure,
                    };
                    com.Parameters.AddWithValue("_resID", xres.resID);
                    var hashedPassword = HashPassword(xres.password);
                    com.Parameters.AddWithValue("_password", hashedPassword);
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

        public async Task<int> ForgotPassword(residents xres)
        {
            using (var con = new MySqlConnection(_constring.GetConnection()))
            {
                try
                {
                    await con.OpenAsync().ConfigureAwait(false);
                    var com = new MySqlCommand("ForgotPassword", con)
                    {
                        CommandType = CommandType.StoredProcedure,
                    };
                    com.Parameters.AddWithValue("_resID", xres.resID);
                    var hashedPassword = HashPassword(xres.password);
                    com.Parameters.AddWithValue("_password", hashedPassword);
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


        public async Task<int> CountResidents()
        {
            using (var con = new MySqlConnection(_constring.GetConnection()))
            {
                await con.OpenAsync().ConfigureAwait(false);
                var com = new MySqlCommand("CountResidents", con)
                {
                    CommandType = CommandType.StoredProcedure,
                };
                return Convert.ToInt32(await com.ExecuteScalarAsync().ConfigureAwait(false));
            }
        }

        public async Task<int> CountMale()
        {
            using (var con = new MySqlConnection(_constring.GetConnection()))
            {
                await con.OpenAsync().ConfigureAwait(false);
                var com = new MySqlCommand("CountMale", con)
                {
                    CommandType = CommandType.StoredProcedure,
                };
                return Convert.ToInt32(await com.ExecuteScalarAsync().ConfigureAwait(false));
            }
        }

        public async Task<int> CountFemale()
        {
            using (var con = new MySqlConnection(_constring.GetConnection()))
            {
                await con.OpenAsync().ConfigureAwait(false);
                var com = new MySqlCommand("CountFemale", con)
                {
                    CommandType = CommandType.StoredProcedure,
                };
                return Convert.ToInt32(await com.ExecuteScalarAsync().ConfigureAwait(false));
            }
        }

        public async Task<List<residents>> SearchResident(string search)
        {
            List<residents> xres = new List<residents>();
            using (var con = new MySqlConnection(_constring.GetConnection()))
            {
                try
                {
                    await con.OpenAsync().ConfigureAwait(false);
                    var com = new MySqlCommand("SearchResident", con)
                    {
                        CommandType = CommandType.StoredProcedure,
                    };
                    com.Parameters.Clear();
                    com.Parameters.AddWithValue("search", search);
                    com.Parameters.AddWithValue("@searchWildcard", $"{search}%");
                    var rdr = await com.ExecuteReaderAsync().ConfigureAwait(false);
                    while (await rdr.ReadAsync().ConfigureAwait(false))
                    {
                        xres.Add(new residents
                        {
                            resID = rdr["resID"].ToString(),
                            houseID = rdr["houseID"].ToString(),
                            fname = rdr["fname"].ToString(),
                            mname = rdr["mname"].ToString(),
                            lname = rdr["lname"].ToString(),
                            ext = rdr["ext"].ToString(),
                            purok = rdr["purok"].ToString(),
                            gender = rdr["gender"].ToString(),
                            bdate = Convert.ToDateTime(rdr["bdate"]),
                            status = rdr["status"].ToString(),
                            contact = rdr["contact"].ToString(),
                            fullname = rdr["fullname"].ToString(),
                            head = rdr["head"].ToString(),
                            age = rdr["age"].ToString()
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
            return xres;
        }
    }

	}

