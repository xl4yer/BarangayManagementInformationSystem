using Bmis.Models;
using Bmis.Services;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace Bmis.Controllers
{
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class HouseholdController : Controller
    {
        HouseholdServices xservices;

        public HouseholdController(HouseholdServices xservices)
        {
            this.xservices = xservices;
        }
        [HttpGet]
        [Authorize(Policy = "Admin")]
        public async Task<List<household>> Household()
        {
            var ret = await xservices.Household();
            return ret;
        }

        [HttpPost]
        public async Task<int> AddHousehold([FromBody] household xhousehold)
        {
            var ret = await xservices.AddHousehold(xhousehold);
            return ret;
        }

        [HttpPut]
        public async Task<int> UpdateHousehold([FromBody] household xhousehold)
        {
            var ret = await xservices.UpdateHousehold(xhousehold);
            return ret;
        }

        [HttpGet]
        public async Task<List<household>> SearchHousehold(string search)
        {
            var ret = await xservices.SearchHousehold(search);
            return ret;
        }

        [HttpGet]
        public async Task<List<household>> HouseID(string houseID)
        {
            var ret = await xservices.HousehID(houseID);
            return ret;
        }

        [HttpGet]
        public async Task<int> CountHousehold()
        {
            return await xservices.CountHousehold();
        }
    }
}
