using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TravelManagement.Model;
namespace TravelManagement.BusinessLayer
{
    public interface IBusinessLayer
    {
        User GetUserByName(string name);
    }
}
