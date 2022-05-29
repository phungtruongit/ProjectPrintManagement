﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using PrintManagement.Infrastructure;
using System;
using System.Collections.Generic;

namespace PrintManagement.Infrastructure.Configurations
{
    public partial class FinancialConfigConfiguration : IEntityTypeConfiguration<FinancialConfig>
    {
        public void Configure(EntityTypeBuilder<FinancialConfig> entity)
        {
            entity.HasKey(e => e.Oid);

            entity.ToTable("FinancialConfig");

            entity.Property(e => e.Oid).HasDefaultValueSql("(newsequentialid())");

            entity.Property(e => e.CurrencyCode).HasMaxLength(255);

            OnConfigurePartial(entity);
        }

        partial void OnConfigurePartial(EntityTypeBuilder<FinancialConfig> entity);
    }
}