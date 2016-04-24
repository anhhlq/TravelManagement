namespace TravelManagement.UI
{
    partial class Login
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.lb_UserName = new System.Windows.Forms.Label();
            this.tb_UserName = new System.Windows.Forms.TextBox();
            this.lb_PassWord = new System.Windows.Forms.Label();
            this.tb_PassWord = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // lb_UserName
            // 
            this.lb_UserName.AutoSize = true;
            this.lb_UserName.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_UserName.Location = new System.Drawing.Point(175, 109);
            this.lb_UserName.Name = "lb_UserName";
            this.lb_UserName.Size = new System.Drawing.Size(116, 20);
            this.lb_UserName.TabIndex = 0;
            this.lb_UserName.Text = "Tên đăng nhập";
            // 
            // tb_UserName
            // 
            this.tb_UserName.Location = new System.Drawing.Point(302, 108);
            this.tb_UserName.Name = "tb_UserName";
            this.tb_UserName.Size = new System.Drawing.Size(211, 20);
            this.tb_UserName.TabIndex = 1;
            // 
            // lb_PassWord
            // 
            this.lb_PassWord.AutoSize = true;
            this.lb_PassWord.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_PassWord.Location = new System.Drawing.Point(175, 143);
            this.lb_PassWord.Name = "lb_PassWord";
            this.lb_PassWord.Size = new System.Drawing.Size(75, 20);
            this.lb_PassWord.TabIndex = 2;
            this.lb_PassWord.Text = "Mật khẩu";
            // 
            // tb_PassWord
            // 
            this.tb_PassWord.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_PassWord.Location = new System.Drawing.Point(302, 143);
            this.tb_PassWord.Name = "tb_PassWord";
            this.tb_PassWord.PasswordChar = '*';
            this.tb_PassWord.Size = new System.Drawing.Size(211, 24);
            this.tb_PassWord.TabIndex = 3;
            // 
            // Login
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(729, 394);
            this.Controls.Add(this.tb_PassWord);
            this.Controls.Add(this.lb_PassWord);
            this.Controls.Add(this.tb_UserName);
            this.Controls.Add(this.lb_UserName);
            this.Name = "Login";
            this.Text = "Login";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lb_UserName;
        private System.Windows.Forms.TextBox tb_UserName;
        private System.Windows.Forms.Label lb_PassWord;
        private System.Windows.Forms.TextBox tb_PassWord;
    }
}