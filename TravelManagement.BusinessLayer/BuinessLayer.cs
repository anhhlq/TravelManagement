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
        public User GetUserByName(string userName)
        {
            return _userRepository.GetSingle(
                d => d.UserName.Equals(userName));
        }
    }
}
