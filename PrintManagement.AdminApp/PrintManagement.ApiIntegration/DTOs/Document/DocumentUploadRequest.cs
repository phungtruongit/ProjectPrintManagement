﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace PrintManagement.ApiIntegration
{
    public partial class DocumentUploadRequest
    {
        public string Name { get; set; }
        public int? TotalPages { get; set; }
        public int? TotalSheets { get; set; }
        public long? SizeKb { get; set; }
        public int? PaperHeightMilimet { get; set; }
        public int? PaperWidthMilimet { get; set; }
        public string MimeType { get; set; }
        public bool? IsUsageAllowed { get; set; }
        public string Note { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? CreatedDate { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? ModifiedDate { get; set; }
        public Guid? IdUser { get; set; }
    }
}