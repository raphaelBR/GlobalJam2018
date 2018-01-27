/// @description  iap_status_name(iap_status)
/// @function  iap_status_name
/// @param iap_status

status = argument[0]

if status == iap_status_uninitialised
    {
    return "UNINITIALISED"
    }
if status == iap_status_available
    {
    return "AVAILABLE"
    }
if status == iap_status_loading
    {
    return "LOADING"
    }
if status == iap_status_processing
    {
    return "PROCESSING"
    }
if status == iap_status_restoring
    {
    return "RESTORING"
    }
if status == iap_status_unavailable
    {
    return "UNAVAILABLE"
    }
