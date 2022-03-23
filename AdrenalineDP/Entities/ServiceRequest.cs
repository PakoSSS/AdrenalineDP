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
        [Display(Name = "User")]
        public string UserId { get; set; }
        public Users User { get; set; }
        [Required]
        [Display(Name = "Service")]
        public int ServiceId { get; set; }
        public Services Service { get; set; }


        [Required]
        [DataType(DataType.Date)]
        public DateTime ReserveDate { get; set; }
        [Required]
        [StringLength(50, MinimumLength = 4)]
        public string Message { get; set; }
        [Required]
        [DataType(DataType.Date)]
        public DateTime RegisterDate { get; set; }
    }
}
