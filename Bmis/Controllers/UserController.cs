using Bmis.Models;
using Bmis.Services;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace Bmis.Controllers
{
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class UserController : Controller
    {
        UserServices xservices;

        public UserController(UserServices xservices)
        {
            this.xservices = xservices;
        }

        [HttpGet]
        [AllowAnonymous]
        public async Task<List<users>> Login(string user, string pwd)
        {
            var ret = await xservices.Login(user, pwd);
            return ret;
        }

        [HttpGet]
        public async Task<List<users>> Users()
        {
            var ret = await xservices.Users();
            return ret;
        }

        [HttpGet]
        public async Task<List<users>> UsernameCheck(string username)
        {
            var ret = await xservices.UsernameCheck(username);
            return ret;
        }

        [HttpPut]
        public async Task<int> UpdateAdminPassword([FromBody] users xusers)
        {
            var ret = await xservices.UpdateAdminPassword(xusers);
            return ret;
        }


        [HttpPost]
        public async Task<int> AddUsers([FromBody] users xuser)
        {
            var ret = await xservices.AddUsers(xuser);
            return ret;
        }

        [HttpPut]
        public async Task<int> UpdateUsers([FromBody] users xuser)
        {
            var ret = await xservices.UpdateUsers(xuser);
            return ret;
        }

        [HttpPost]
        public async Task<int> DeleteUsers([FromBody] users xuser)
        {
            var ret = await xservices.DeleteUsers(xuser);
            return ret;
        }
    }
}
