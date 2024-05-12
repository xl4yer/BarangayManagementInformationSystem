using Bmis.Models;
using Bmis.Services;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace Bmis.Controllers
{
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class ResidentController : Controller
    {
        ResidentServices xservices;

        public ResidentController(ResidentServices xservices)
        {
            this.xservices = xservices;
        }

        [HttpGet]
        [Authorize(Policy = "Admin")]
        public async Task<List<residents>> Residents()
        {
            var ret = await xservices.Residents();
            return ret;
        }

        public async Task<List<residents>> Residents2()
        {
            var ret = await xservices.Residents();
            return ret;
        }

        [HttpGet]
        [AllowAnonymous]
        public async Task<List<residents>> Login(string user, string pwd)
        {
            var ret = await xservices.Login(user, pwd);
            return ret;
        }

        [HttpGet]
        [AllowAnonymous]
        public async Task<List<residents>> Profile(string resID)
        {
            var ret = await xservices.Profile(resID);
            return ret;
        }

        [HttpPost]
        public async Task<int> AddResident([FromBody] residents xres)
        {
            var ret = await xservices.AddResident(xres);
            return ret;
        }

        [HttpPut]
        public async Task<int> UpdateResident([FromBody] residents xres)
        {
            var ret = await xservices.UpdateResident(xres);
            return ret;
        }
        [HttpPut]
        public async Task<int> UpdatePassword([FromBody] residents xres)
        {
            var ret = await xservices.UpdatePassword(xres);
            return ret;
        }

        [HttpPut]
        public async Task<int> ForgotPassword([FromBody] residents xres)
        {
            var ret = await xservices.ForgotPassword(xres);
            return ret;
        }

        [HttpGet]
        public async Task<List<residents>> SearchResident(string search)
        {
            var ret = await xservices.SearchResident(search);
            return ret;
        }

        [HttpGet]
        public async Task<List<residents>> CheckEmail(string email)
        {
            var ret = await xservices.CheckEmail(email);
            return ret;
        }

        public async Task<List<residents>> CheckUser(string username)
        {
            var ret = await xservices.CheckUser(username);
            return ret;
        }

        [HttpGet]
        public async Task<int> CountResidents()
        {
            return await xservices.CountResidents();
        }

        [HttpGet]
        public async Task<int> CountMale()
        {
            return await xservices.CountMale();
        }

        [HttpGet]
        public async Task<int> CountFemale()
        {
            return await xservices.CountFemale();
        }
    }
}

