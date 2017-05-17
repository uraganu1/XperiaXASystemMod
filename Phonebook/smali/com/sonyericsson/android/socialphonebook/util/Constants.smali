.class public Lcom/sonyericsson/android/socialphonebook/util/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/util/Constants$MSimConstants;,
        Lcom/sonyericsson/android/socialphonebook/util/Constants$Calls;,
        Lcom/sonyericsson/android/socialphonebook/util/Constants$TelephonyIntents;,
        Lcom/sonyericsson/android/socialphonebook/util/Constants$IccCardConstants;,
        Lcom/sonyericsson/android/socialphonebook/util/Constants$OneHandConstants;
    }
.end annotation


# static fields
.field public static final ACCOUNTS_TABLE_NAME:Ljava/lang/String; = "accounts"

.field public static final ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field public static final ADN1_CONTACTPHOTO_ID:J = 0x7ffffffffffffffcL

.field public static final ADN2_CONTACTPHOTO_ID:J = 0x7ffffffffffffffbL

.field public static final BUNDLE_KEY_TRACK_EVENT_ACTION:Ljava/lang/String; = "bundle_key_track_event_action"

.field public static final BUNDLE_KEY_TRACK_EVENT_LABEL:Ljava/lang/String; = "bundle_key_track_event_label"

.field public static final BUNDLE_KEY_TRACK_EVENT_TYPE:Ljava/lang/String; = "bundle_key_track_event_type"

.field public static final BUNDLE_KEY_TRACK_EVENT_VALUE:Ljava/lang/String; = "bundle_key_track_event_value"

.field public static final BUNDLE_KEY_TRACK_SCREEN:Ljava/lang/String; = "bundle_key_track_screen"

.field public static final CALL_LOG_IS_INITIAL_MESSAGE_KEY:Ljava/lang/String; = "com.sonyericsson.android.socialphonebook.isInitialEmptyCallLogMessageShown"

.field public static final CALL_LOG_PREFERENCE_KEY:Ljava/lang/String; = "call_log_filter"

.field public static final CALL_PLUS_QUICK_CONTACT_TUTORIAL:Ljava/lang/String; = "call_plus_quick_contact_tutorial"

.field public static final CONFERENCE_CALL_DIALOG_USAGE_KEY:Ljava/lang/String; = "conference_call_dialog_usage"

.field public static final DATA_TABLE_NAME:Ljava/lang/String; = "data"

.field public static final DEFAULT_CONTACT_ID:J = -0x1L

.field public static final DEFAULT_PHOTO_ID:J = 0x0L

.field public static final EXTRA_DISABLE_SIM_CONTACTS:Ljava/lang/String; = "disable_sim_account"

.field public static final EXTRA_HAS_TAB:Ljava/lang/String; = "has_tab"

.field public static final EXTRA_INTERNAL_INTENT:Ljava/lang/String; = "internal_intent"

.field public static final EXTRA_LINKED_SUGGESTIONS_ID_LIST:Ljava/lang/String; = "linked_suggestions_id_list"

.field public static final EXTRA_LINKED_SUGGESTIONS_LIST:Ljava/lang/String; = "linked_suggestions_list"

.field public static final EXTRA_PHONENUMBER:Ljava/lang/String; = "extra_phonenumber"

.field public static final EXTRA_PHONENUMBER_REQUIRED:Ljava/lang/String; = "phonenumber_required"

.field public static final EXTRA_PHOTO_BITMAP:Ljava/lang/String; = "photo_bitmap"

.field public static final EXTRA_PICK_CONTACT_ONLY_NO_ICE:Ljava/lang/String; = "contact_only_no_ice"

.field public static final EXTRA_PICK_CONTACT_ONLY_PHONE:Ljava/lang/String; = "contact_only_phone"

.field public static final EXTRA_PICK_MULTI_CONTACTS:Ljava/lang/String; = "isPickMultiContacts"

.field public static final EXTRA_PICK_MULTI_CONTACTS_WITHOUT_PROFILE:Ljava/lang/String; = "isPickMultiContactsWithoutProfile"

.field public static final EXTRA_SUGGESTIONS_CONTACT_URI:Ljava/lang/String; = "suggestions_uri"

.field public static final EXTRA_SUGGESTIONS_ID_LIST:Ljava/lang/String; = "suggestions_id_list"

.field public static final EXTRA_SUGGESTION_LENGTH_LIST:Ljava/lang/String; = "suggestion_length_list"

.field public static final FAVORITES_SHOW_OUT_OF_BOX:Ljava/lang/String; = "favorites_show_out_of_box"

.field public static final GA_COUNT_THRESHOLD:I = 0x3

.field public static final GA_EVENT_ACTION_NULL:Ljava/lang/String; = ""

.field public static final GA_EVENT_LABEL_NULL:Ljava/lang/String; = ""

.field public static final GA_EVENT_VALUE_NULL:I = 0x0

.field public static final GA_GROUPS_USAGE_COUNT_KEY:Ljava/lang/String; = "ga_groups_threshold_key"

.field public static final ICE_CAN_CALL_FROM_LOCKSCREEN:Ljava/lang/String; = "ice_can_call_from_lockscreen"

.field public static final ICE_CAN_CALL_FROM_LOCKSCREEN_NO:I = 0x0

.field public static final ICE_CAN_CALL_FROM_LOCKSCREEN_NONE:I = -0x1

.field public static final ICE_CAN_CALL_FROM_LOCKSCREEN_YES:I = 0x1

.field public static final ICE_ENTERED_FIRST_TIME_KEY:Ljava/lang/String; = "ice_entered_first_time"

.field public static final ICE_GROUP_TITLE:Ljava/lang/String; = "com.sonymobile.ice.group"

.field public static final ICE_SHOULD_SHOW_ENABLE_ICE_TOAST:Ljava/lang/String; = "should_show_enable_ice_toast"

.field public static final ICE_SHOW_ICE_IN_LOCKSCREEN:Ljava/lang/String; = "sonymobile_lockscreen_ice_enabled"

.field public static final ICE_SHOW_ICE_IN_LOCKSCREEN_NO:I = 0x0

.field public static final ICE_SHOW_ICE_IN_LOCKSCREEN_NONE:I = -0x1

.field public static final ICE_SHOW_ICE_IN_LOCKSCREEN_YES:I = 0x1

.field public static final ICE_SHOW_MEDICAL_INFO_KEY:Ljava/lang/String; = "ice_show_medical_info"

.field public static final ICE_SHOW_MEDICAL_INFO_NO:I = 0x0

.field public static final ICE_SHOW_MEDICAL_INFO_NONE:I = -0x1

.field public static final ICE_SHOW_MEDICAL_INFO_YES:I = 0x1

.field public static final JOYN_IM_MIMETYPE:Ljava/lang/String; = "vnd.android.cursor.item/com.sonymobile.rcs.capability.im-session"

.field public static final KDDI_DIALING_PREFIXES:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_PICK_FOR_SEND_GROUP_MESSAGE_OR_EMAIL:Ljava/lang/String; = "send_group_message_or_email"

.field public static final KEY_PICK_GROUP_ACCOUNT_DATA_SET:Ljava/lang/String; = "group_account_data_set"

.field public static final KEY_PICK_GROUP_ACCOUNT_NAME:Ljava/lang/String; = "group_account_name"

.field public static final KEY_PICK_GROUP_ACCOUNT_TYPE:Ljava/lang/String; = "group_account_type"

.field public static final KEY_PICK_GROUP_MEMBER_IDS:Ljava/lang/String; = "group_member_ids"

.field public static final KEY_PICK_GROUP_URI:Ljava/lang/String; = "group_uri"

.field public static final MIME_SMS_ADDRESS:Ljava/lang/String; = "vnd.android.cursor.item/sms-address"

.field public static final MIME_TYPE_VIDEO_CHAT:Ljava/lang/String; = "vnd.android.cursor.item/video-chat-address"

.field public static final NEW_SIM_CONTACT_EVENT_SENT:Ljava/lang/String; = "new_sim_contact_event_sent"

.field public static final NEW_USER_EVENT_SENT:Ljava/lang/String; = "new_user"

.field public static final PERFORMANCE_TAG:Ljava/lang/String; = "ContactsPerf"

.field public static final PREFS_KEY_SMART_SEARCH_ENABLED:Ljava/lang/String; = "smart_search_enabled"

.field public static final RAW_CONTACTS_TABLE_NAME:Ljava/lang/String; = "raw_contacts"

.field public static final RCS_ACCOUNT_TYPE:Ljava/lang/String; = "com.sonymobile.rcs"

.field public static final RCS_BRANDED_PROPERTY:Ljava/lang/String; = "ro.somc.rcs_branded"

.field public static final RCS_CAP_PRESENCE_ENBLD_PROPERTY:Ljava/lang/String; = "ro.somc.rcs_cap_presence_enbld"

.field public static final RCS_STATUS_PACKAGE:Ljava/lang/String; = "com.sonymobile.rcs"

.field public static final RCS_STATUS_PACKAGE_LEGACY:Ljava/lang/String; = "com.orangelabs.rcs"

.field public static final RCS_TAPI_PROPERTY:Ljava/lang/String; = "ro.somc.rcs_tapi"

.field public static final SCHEME_GEO:Ljava/lang/String; = "geo"

.field public static final SCHEME_HELP:Ljava/lang/String; = "help"

.field public static final SCHEME_HTTP:Ljava/lang/String; = "http"

.field public static final SCHEME_HTTPS:Ljava/lang/String; = "https"

.field public static final SCHEME_IMTO:Ljava/lang/String; = "imto"

.field public static final SCHEME_MAILTO:Ljava/lang/String; = "mailto"

.field public static final SCHEME_SIP:Ljava/lang/String; = "sip"

.field public static final SCHEME_SMS:Ljava/lang/String; = "sms"

.field public static final SCHEME_SMSTO:Ljava/lang/String; = "smsto"

.field public static final SCHEME_TEL:Ljava/lang/String; = "tel"

.field public static final SIM_CONTACTS_VISIBLE_EVENT_SENT:Ljava/lang/String; = "sim_contacts_visible_event_sent"

.field public static final SIM_CONTACT_PHOTO_ID:J = 0x7ffffffffffffffdL

.field public static final SOFTBANK_DIALING_PREFIXES:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPPORT_CONTACT_ACCOUNT_TYPE:Ljava/lang/String; = "com.sonymobile.support"

.field public static final SUPPORT_CONTACT_OPENED:Ljava/lang/String; = "support_contact_opened"

.field public static final TABLE_NAME_CALLS:Ljava/lang/String; = "calls"

.field public static final TAPI_RCS_ACCOUNT_TYPE:Ljava/lang/String; = "com.gsma.rcs"

.field public static final TAPI_RCS_PACKAGE:Ljava/lang/String; = "com.gsma.rcs"

.field public static final VOICEMAIL_URI:Ljava/lang/String; = "voicemail:x"

.field public static final VOICEMAIL_URI_WITH_NUMBER:Ljava/lang/String; = "voicemail:"

.field public static final VVM_PACKAGE_NAME:Ljava/lang/String; = "com.orange.vvm"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 391
    const-string/jumbo v0, "184"

    const-string/jumbo v1, "186"

    const-string/jumbo v2, "131"

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 390
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/Constants;->KDDI_DIALING_PREFIXES:Lcom/google/common/collect/ImmutableList;

    .line 400
    const-string/jumbo v0, "184"

    const-string/jumbo v1, "186"

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 399
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/Constants;->SOFTBANK_DIALING_PREFIXES:Lcom/google/common/collect/ImmutableList;

    .line 26
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
