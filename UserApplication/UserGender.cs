using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UserApplication.Models
{
    public class UserGender
    {

        public enum GenderType
        {
            Male = 1,
            Female = 2,
            NonBinary = 3,
            PreferNotToSay = 4,
            Other = 5

        }

    }
}