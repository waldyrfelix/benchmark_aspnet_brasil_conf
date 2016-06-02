using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;

namespace aspnetcore_benchmark.Controllers
{

    public class Result {
      public string Line1 { get; set; }
      public int Line2 { get; set; }
      public decimal Line3 { get; set; }
    }

    [Route("api/benchmark")]
    public class BenchController : Controller
    {
        [HttpGet("list")]
        public IEnumerable<Result> List()
        {
            var list = new List<Result>();

            for (int i = 0; i < 30; i++)
            {
                list.Add(new Result
                {
                    Line1 = "texto " + i,
                    Line2 = i,
                    Line3 = 45m + i
                });
            }

            return list;
        }

        [HttpGet("file")]
        public IEnumerable<Result> File()
        {
            var lines = System.IO.File.ReadAllLines("file.txt");
            var list = new List<Result>();

            foreach (var line in lines)
            {
                list.Add(new Result
                {
                    Line1 = line,
                    Line2 = 100,
                    Line3 = 100m
                });
            }

            return list;
        }
    }
}
