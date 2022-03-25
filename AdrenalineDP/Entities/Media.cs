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
        [Display(Name = "Заглавие")]
        public string Title { get; set; }
        [Required]
        [Display(Name = "Услуга")]
        public int ServiceId { get; set; }
        [Display(Name = "Услуга")]
        public Services Service { get; set; }

        [Required]
        [Display(Name = "Категория")]
        public Category Category { get; set; }
        [Required]
        [Display(Name = "Път на файла")]
        public string FilePath { get; set; }
        [Required]
        [DataType(DataType.Date)]
        [Display(Name = "Дата")]
        public DateTime Date { get; set; }
    }
}
