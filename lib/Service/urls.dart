//Auth URLS
const String BASE_URL = "https://vinna.lystigardar.is/app";
const String LOGIN_URL = "/api/user/staff/login";
const String RESET_PASS_URL = "/api/user/send-otp";
const String RESET_PASSWORD_URL = "/api/user/reset-password";
const String PROFILE_URL = "/api/user/auth";
const String UPDATE_PROFILE_URL = "/api/user/edit/";
const String UPDATE_PASSWORD_URL = "/api/user/change-password";
const String NOTIFICATION_URL = "/api/user/notification";
const String UPDATE_PROFILE_IMAGE_URL = "/api/user/profile-image";

//Config
const String LANG_URL = "/api/label/get-label-language?language=";

//Project
const String PROJECT_LISTING_URL = "/api/project/getAll";
const String PROJECT_LISTING_SMALL_URL = "/api/project/getAll?type=2";
const String CAT_LISTING_SMALL_URL = "/api/category?category_type=1&type=2";
const String PROJECT_DETAIL_URL = "/api/project/get/";

//Work Log
const String WORK_LOG_URL = "/api/work-log/app/get?page=";
const String WORK_LOG_DETAIL_URL = "/api/work-log";
const String TIME_SHEET_URL = "/api/user/timesheet?";
const String CALENDER_URL = "/api/user/calendar?";
const String ADD_WORK_LOG_URL = "/api/work-log/app";
const String UPDATE_WORK_LOG_URL = "/api/work-log/app/update";

//Leave
const String LEAVE_URL = "/api/leave";

//Tools
const String TOOL_URL = "/api/tool/app";
const String TOOL_DETAIL_URL = "/api/tool/";
const String SMALL_TOOL_URL = "/api/tool/?type=2";
const String ADD_TOOL_URL = "/api/tool/add";

//Billing
const String SELLER_URL = "/api/seller?type=2";
const String BILLING_URL = "/api/billable_good";
