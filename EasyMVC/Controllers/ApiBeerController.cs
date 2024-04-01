using EasyMVC.Models;
using EasyMVC.Models.ViewModels;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace EasyMVC.Controllers
{
	[Route("api/[controller]")]
	[ApiController]
	public class ApiBeerController(PubContext context) : ControllerBase
	{
		private readonly PubContext _context = context;

		public async Task<List<BeerBrandViewModel>> GetBeers() => await _context.Beers.Include(x => x.Brand)
			.Select(x => new BeerBrandViewModel
			{
				Name = x.Name,
				Brand = x.Brand.Name
			})
			.ToListAsync();
	}
}
