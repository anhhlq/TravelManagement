using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TravelManagement.Model;

namespace TravelManagement.DataAccessLayer
{
    public class UserRepository : GenericDataRepository<User>, IUserRepository
    {
    }
}
