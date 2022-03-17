using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AdrenalineDP.Entities
{
    public enum RoleType { Admin,User}
    public class Users:IdentityUser
    {
        public string Full_Name { get; set; }
        public RoleType Role { get; set; }
        public virtual ICollection<ServiceRequest> Requests { get; set; }

    }
}
