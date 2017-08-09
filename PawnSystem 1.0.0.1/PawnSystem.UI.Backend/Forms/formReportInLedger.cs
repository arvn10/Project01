﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using PawnSystem.BLL.Model;
using PawnSystem.BLL.Service;

namespace PawnSystem.UI.Backend.Forms
{
    public partial class formReportInLedger : Form
    {
        private ReportService reportService;
        
        public formReportInLedger()
        {
            reportService = new ReportService();
            InitializeComponent();
        }

        private void buttonGenerate_Click(object sender, EventArgs e)
        {
            List<InLedgerModel> source = reportService.GenerateInLedger(dateFrom.Value, dateTo.Value).ToList();

            if(source.Count > 0)
            {
                inLedgerReport.SetDataSource(source);
                inLedgerReportViewer.ReportSource = inLedgerReport;
                inLedgerReportViewer.Refresh();
            }
            else
            {
                MessageBox.Show("No Records Found", "Pawnshop Management System", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }


        }

        private void formReportInLedger_Load(object sender, EventArgs e)
        {
            dateFrom.Value = dateTo.Value.AddDays(-1);
        }
    }
}
