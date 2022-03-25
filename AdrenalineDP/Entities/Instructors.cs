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
        [Display(Name = "Име")]
        public string FirstName { get; set; }
        [Required]
        [Display(Name = "Фамилия")]
        public string LastName { get; set; }
        [Required]
        [StringLength(50,MinimumLength = 10)]
        [Display(Name = "Квалификация")]
        public string Description { get; set; }
        [Required]
        [Display(Name = "Снимка")]
        public string ImageURL { get; set; }
        [Required]
        [Display(Name = "Дата на вписване")]
        public DateTime RegisterDate { get; set; }
    }
}
