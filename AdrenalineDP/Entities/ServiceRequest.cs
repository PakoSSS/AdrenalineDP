using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace AdrenalineDP.Entities
{
     
    public class ServiceRequest
    {
        public int Id { get; set; }

        public string UserId { get; set; }
        public Users Users { get; set; }

        public int ServiceId { get; set; }
        public Services Service { get; set; }


        [Required]
        [DataType(DataType.Date)]
        public DateTime ReserveDate { get; set; }
        [Required]
        [StringLength(50,MinimumLength = 4)]
        public string Message { get; set; }
        [Required]
        [DataType(DataType.Date)]
        public DateTime RegisterDate { get; set; }


    }
}
