using Bmis.Models;
using Bmis.Services;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.SignalR;

namespace Bmis.Controllers
{
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class ClearanceController : Controller
    {
        ClearanceServices xservices;
        IHubContext<Hub> _hub;

        public ClearanceController(ClearanceServices xservices, IHubContext<Hub> hubContext)
        {
            this.xservices = xservices;
            _hub = hubContext;
        }

        [HttpGet]
        [Authorize]
        public async Task<List<clearance>> Clearance()
        {
            var ret = await xservices.Clearance();
            return ret;
        }

        [HttpGet]
        public async Task<List<clearance>> SearchClearance(string search)
        {
            var ret = await xservices.SearchClearance(search);
            return ret;
        }

        [HttpPost]
        public async Task<int> AddClearance([FromBody] clearance xjob)
        {
            var ret = await xservices.AddClearance(xjob);
            return ret;
        }

        [HttpPut]
        public async Task<int> UpdateClearance([FromBody] clearance xjob)
        {
            var ret = await xservices.UpdateClearance(xjob);
            return ret;
        }

        [HttpGet]
        public async Task<List<clearance>> RequestClearance(string resID)
        {
            var ret = await xservices.RequestClearance(resID);
            return ret;
        }
    }
}
