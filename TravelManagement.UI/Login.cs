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
    public partial class Login : Form
    {
        public Login()
        {
            InitializeComponent();
        }

        private void btn_login_Click(object sender, EventArgs e)
        {
            string username = txt_username.Text;
            string password = txt_password.Text;

            IBusinessLayer businessLayer = new BuinessLayer();
            if (businessLayer.CheckLogin(username, password));
        }

        private void txt_username_Validating(object sender, CancelEventArgs e)
        {

        }
    }
}
