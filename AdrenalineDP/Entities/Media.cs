using AdrenalineDP.Data.Enums;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace AdrenalineDP.Entities
{
    public class Media
    {
        public int Id { get; set; }
        [Required]
        [StringLength(50, MinimumLength = 3)]
        public string Title { get; set; }
        [Required]
        [Display(Name = "Service")]
        public int ServiceId { get; set; }
        public Services Service { get; set; }

        [Required]
        public Category Category { get; set; }
        [Required]
        public string FilePath { get; set; }
        [Required]
        [DataType(DataType.Date)]
        public DateTime Date { get; set; }
    }
}
