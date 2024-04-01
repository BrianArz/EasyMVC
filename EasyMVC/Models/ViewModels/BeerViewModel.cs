using System.ComponentModel.DataAnnotations;

namespace EasyMVC.Models.ViewModels
{
	public class BeerViewModel
	{
		[Required]
		[Display(Name = "名前")]
		public string Name { get; set; } = null!;

		[Required]
		[Display(Name = "ブランド")]
		public int BrandId { get; set; }
	}
}
