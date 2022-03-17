using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace AdrenalineDP.Entities
{
    public class Instructors
    {
        public int Id { get; set; }
        [Required]
        public string FirstName { get; set; }
        [Required]
        public string LastName { get; set; }
        [Required]
        [StringLength(50,MinimumLength = 10)]
        public string Description { get; set; }
        [Required]       
        public string ImageURL { get; set; }
        [Required]
        public DateTime RegisterDate { get; set; }
    }
}
