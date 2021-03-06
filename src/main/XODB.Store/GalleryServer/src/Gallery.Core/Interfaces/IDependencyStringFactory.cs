﻿using System.Collections.Generic;
using Gallery.Core.Domain;

namespace Gallery.Core.Interfaces
{
    public interface IDependencyStringFactory
    {
        string CreateDependencyString(Dependency dependency);
        string CreateDependencyListAsString(IEnumerable<Dependency> dependencies);
    }
}