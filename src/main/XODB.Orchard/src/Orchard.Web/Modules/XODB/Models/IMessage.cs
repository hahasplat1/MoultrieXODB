﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace XODB.Models
{
    public interface IMessage
    {
        string Recipients { get; set; }
        string Subject { get; set; }
        string Body { get; set; }
    }
}