using AdrenalineDP.Entities;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;

namespace AdrenalineDP.Data
{
    public class ApplicationDbContext : IdentityDbContext<Users>
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }
        public DbSet<Instructors> Instructors { get; set; }
        public DbSet<Media> Media { get; set; }
        public DbSet<ServiceRequest> ServiceRequests { get; set; }
        public DbSet<Services> Services { get; set; }
        
    }
}
