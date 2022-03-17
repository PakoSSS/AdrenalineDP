using AdrenalineDP.Data.Enums;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace AdrenalineDP.Entities
{
   
    public class Media
    {
       
        public int Id { get; set; }
        [Required]
        [StringLength(50,MinimumLength = 3)]
        public string Title { get; set; }

        public int ServiceId { get; set; }
       public Services Services { get; set; }
        [Required]
        public Category Category { get; set; }
        [Required]
        public string FilePath { get; set; }
        [Required]
        [DataType(DataType.Date)]
        public DateTime Date { get; set; }
    }
}
