using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using TravelManagement.BusinessLayer;
using TravelManagement.Model;

namespace TravelManagement.UI
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            IBusinessLayer businessLayer = new BuinessLayer();

        }
    }
}
