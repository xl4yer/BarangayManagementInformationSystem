using Bmis.Models;
using Bmis.Services;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.SignalR;

namespace Bmis.Controllers
{
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class FtJobController : Controller
    {
        FtjobServices xservices;
        IHubContext<Hub> _hub;
        public FtJobController(FtjobServices xservices, IHubContext<Hub> hubContext)
        {
            this.xservices = xservices;
            _hub = hubContext;
        }

        [HttpGet]
        [Authorize]
        public async Task<List<ftjob>> FtJob()
        {
            var ret = await xservices.FtJob();
            return ret;
        }

        [HttpGet]
        public async Task<List<ftjob>> RequestftJob(string resID)
        {
            var ret = await xservices.RequestftJob(resID);
            return ret;
        }

        [HttpPost]
        public async Task<int> AddftJob([FromBody] ftjob xjob)
        {
            var ret = await xservices.AddftJob(xjob);
            return ret;
        }

        [HttpPut]
        public async Task<int> UpdateftJob([FromBody] ftjob xjob)
        {
            var ret = await xservices.UpdateftJob(xjob);
            return ret;
        }

        [HttpGet]
        public async Task<List<ftjob>> SearchftJob(string search)
        {
            var ret = await xservices.SearchftJob(search);
            return ret;
        }
    }
}
