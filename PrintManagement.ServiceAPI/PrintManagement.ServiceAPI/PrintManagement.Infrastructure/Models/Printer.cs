﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace PrintManagement.Infrastructure
{
    public partial class Printer
    {
        public Printer()
        {
            PrinterUsageLogs = new HashSet<PrinterUsageLog>();
        }

        public Guid Oid { get; set; }
        public string Name { get; set; }
        public string DriverName { get; set; }
        public string ServerName { get; set; }
        public string PortName { get; set; }
        public bool? IsNetwork { get; set; }
        public string Location { get; set; }
        public bool? IsDefaultPrinter { get; set; }
        public double? DefaultCost { get; set; }
        public int? TotalJobs { get; set; }
        public int? TotalPages { get; set; }
        public string ResetBy { get; set; }
        public DateTime? ResetDate { get; set; }
        public DateTime? LastUsageDate { get; set; }
        public string Note { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? CreatedDate { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? ModifiedDate { get; set; }
        public Guid? IdDepartment { get; set; }

        public virtual Department IdDepartmentNavigation { get; set; }
        public virtual ICollection<PrinterUsageLog> PrinterUsageLogs { get; set; }
    }
}