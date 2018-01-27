/// @description os_version_name(os version)
/// @function os_version_name
/// @param os version

version = abs(floor(argument[0]))
name = ""
major = 0
minor = 0
build = 0


if version < 65536
        {
    if version == 3
        {
        return "Cupcake (1.5)"
        }
    else if version == 4
        {
        return "Donut (1.6)"
        }
    else if version == 5
        {
        return "Eclair (2.0)"
        }
    else if version == 6
        {
        return "Eclair (2.0.1)"
        }
    else if version == 7
        {
        return "Eclair (2.1)"
        }
    else if version == 8
        {
        return "Froyo (2.2.x)"
        }
    else if version == 9
        {
        return "Gingerbread (2.3 - 2.3.2)"
        }
    else if version == 10
        {
        return "Gingerbread (2.3.3 - 2.3.7)"
        }
    else if version == 11
        {
        return "Honeycomb (3.0)"
        }
    else if version == 12
        {
        return "Honeycomb (3.1)"
        }
    else if version == 13
        {
        return "Honeycomb (3.2.x)"
        }
    else if version == 14
        {
        return "Ice Cream Sandwich (4.0.1 - 4.0.2)"
        }
    else if version == 15
        {
        return "Ice Cream Sandwich (4.0.3 - 4.0.4)"
        }
    else if version == 16
        {
        return "Jelly Bean (4.1.x)"
        }
    else if version == 17
        {
        return "Jelly Bean (4.2.x)"
        }
    else if version == 18
        {
        return "Jelly Bean (4.3.x)"
        }
    else if version == 19
        {
        return "KitKat (4.4.x)"
        }
    else
        {
        return "Unknown"
        }
    }
else if version < 16777216
    {
    major = floor(version / 65536)
    minor = version - (major * 65536)
    return string(major) + "." + string(minor)
    }
else
    {
    major = floor(version / 16777216)
    minor = version - (major * 16777216)
    build = version - (major * 16777216) - (minor * 4096)
    return string(major) + "." + string(minor) + "." + string(build)
    }
