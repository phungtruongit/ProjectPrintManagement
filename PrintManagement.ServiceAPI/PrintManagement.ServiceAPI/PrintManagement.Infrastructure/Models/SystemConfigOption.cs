﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace PrintManagement.Infrastructure
{
    public partial class SystemConfigOption
    {
        public Guid Oid { get; set; }
        public Guid? IdEmailConfig { get; set; }
        public Guid? IdBackupConfig { get; set; }

        public virtual BackupConfig IdBackupConfigNavigation { get; set; }
        public virtual EmailConfig IdEmailConfigNavigation { get; set; }
    }
}