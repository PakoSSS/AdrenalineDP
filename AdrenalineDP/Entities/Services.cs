using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace AdrenalineDP.Entities
{
    public class Services
    {
        public int Id { get; set; }
        [Required]
        [StringLength(50, MinimumLength = 3)]
        public string Name { get; set; }
        [Required]
        [StringLength(200, MinimumLength = 10)]
        public string Description { get; set; }
        [Required]
        public string Location { get; set; }
        [Required]
        public string ImageURL { get; set; }
        [Required]
        public int Price { get; set; }
        [Required]
        [DataType(DataType.Date)]
        public DateTime DateJoined { get; set; }
      
        public virtual ICollection<Media> Medias { get; set; }
    }
}
