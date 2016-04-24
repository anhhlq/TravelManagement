using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TravelManagement.DataAccessLayer;
using TravelManagement.Model;

namespace TravelManagement.BusinessLayer
{
    public class BuinessLayer : IBusinessLayer
    {
        private readonly IUserRepository _userRepository;
        public BuinessLayer()
        {
            _userRepository = new UserRepository();
        }
        public BuinessLayer(IUserRepository userRepository)
        {
            _userRepository = userRepository;
        }
        public User Login(string userName, string password)
        {
            return _userRepository.GetSingle(d => d.UserName.Equals(userName) && d.Password.Equals(password));
        }

        public Boolean CheckLogin(string userName, string password)
        {
            if (Login(userName, password) != null)
                return true;
            return false;
        }

    }
}
