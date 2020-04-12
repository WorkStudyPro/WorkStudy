using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    class JobData
    {
        public int J_ID { get; set; }
        public int M_ID { get; set; }
        public string J_Post { get; set; }
        public string J_Position { get; set; }
        public string J_Description { get; set; }
        public byte J_ReNum { get; set; }
        public string J_Time { get; set; }
        public bool J_State { get; set; }
        public short J_Salary { get; set; }

    }
}
