using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace AdrenalineDP.Entities
{
    public class ServiceRequest
    {
        public int Id { get; set; }
        [Required]
        [Display(Name = "Потребител")]
        public string UserId { get; set; }
        [Display(Name = "Потребител")]
        public Users User { get; set; }
        [Required]
        [Display(Name = "Услуга")]
        public int ServiceId { get; set; }
        [Display(Name = "Услуга")]
        public Services Service { get; set; }


        [Required]
        [DataType(DataType.Date)]
        [Display(Name = "Дата на резервация")]
        public DateTime ReserveDate { get; set; }
        [Required]
        [StringLength(50, MinimumLength = 4)]
        [Display(Name = "Съобщение")]
        public string Message { get; set; }
        [Required]
        [DataType(DataType.Date)]
        [Display(Name = "Дата на регистрация")]
        public DateTime RegisterDate { get; set; }
    }
}
