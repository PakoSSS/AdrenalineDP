using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace AdrenalineDP.Entities
{
    public class Services
    {
        public int Id { get; set; }
        [Required]
        [Display(Name = "Име")]
        [StringLength(50, MinimumLength = 3)]
        public string Name { get; set; }
        [Required]
        [StringLength(200, MinimumLength = 10)]
        [Display(Name = "Описание")]
        public string Description { get; set; }
        [Required]
        [Display(Name = "Местоположение")]
        public string Location { get; set; }
        [Required]
        [Display(Name = "Снимка")]
        public string ImageURL { get; set; }
        [Required]
        [Display(Name = "Цена")]
        public int Price { get; set; }
        [Required]
        [DataType(DataType.Date)]
        [Display(Name = "Дата на вписване")]
        public DateTime DateJoined { get; set; }

        public virtual ICollection<Media> Medias { get; set; }
    }
}
