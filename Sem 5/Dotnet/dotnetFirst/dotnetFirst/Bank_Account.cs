using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dotnetFirst
{
    internal class Bank_Account
    {
        int Account_No;
        string Email;
        string User_Name;
        string Account_Type;
        decimal Account_Balance;

        public Bank_Account()
        {
            this.Account_No = 0;
            this.Email = string.Empty;
            this.User_Name = string.Empty;
            this.Account_Type = string.Empty;
            this.Account_Balance = 0;
        }

        public void GetAccountDeatils(int acc_no, string email, string username, string acc_type, decimal Acc_balance)
        {
            this.Account_No = acc_no;
            this.Email = email;
            this.User_Name = username;
            this.Account_Type = acc_type;
            this.Account_Balance = Acc_balance;
        }

        public void DisplayAccountDetails()
        {
            Console.WriteLine("Account number : {0}", this.Account_No);
            Console.WriteLine("Email : {0}", this.Email);
            Console.WriteLine("Username : {0}", this.User_Name);
            Console.WriteLine("Account type : {0}", this.Account_Type);
            Console.WriteLine("Account balance : {0}", this.Account_Balance);
        }
    }
}
