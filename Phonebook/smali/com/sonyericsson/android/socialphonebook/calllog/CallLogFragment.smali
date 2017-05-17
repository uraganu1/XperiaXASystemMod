.class public Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;
.super Landroid/app/ListFragment;
.source "CallLogFragment.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$OnQueryCompleteListener;
.implements Lcom/sonyericsson/android/socialphonebook/TabStateObserver;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$OnVoicemailStatusChangeListener;
.implements Lcom/sonyericsson/android/socialphonebook/OnUserLeaveAppListener;
.implements Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$OnCallLogDeleteListener;
.implements Lcom/sonyericsson/android/socialphonebook/vilte/VilteChangeListener;
.implements Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector$RcsCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$CallStateListener;,
        Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$LockscreenReceiver;,
        Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader;,
        Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$UpdateVoicemail;,
        Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$1;,
        Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$2;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_android_socialphonebook_calllog_DeleteCallDialog$DeleteModeSwitchesValues:[I = null

.field private static synthetic -com_sonyericsson_android_socialphonebook_calllog_VoiceMailMessageStatus$VoiceMailPlayerStatusSwitchesValues:[I = null

.field private static synthetic -com_sonyericsson_android_socialphonebook_ui_CallLogFilterDialogFragment$CallLogFilterTypeSwitchesValues:[I = null

.field private static final CALL_LOG_EMPTY:Ljava/lang/String; = "callLogEmptyItem"

.field private static final CONTEXT_MENU_ID_ADD_TO_CONTACTS:I = 0xc9

.field private static final CONTEXT_MENU_ID_BASE:I = 0xc8

.field private static final CONTEXT_MENU_ID_DELETE:I = 0xcd

.field private static final CONTEXT_MENU_ID_EDIT_CONFERENCE:I = 0xd0

.field private static final CONTEXT_MENU_ID_EDIT_NUMBER:I = 0xcb

.field private static final CONTEXT_MENU_ID_NEW_CONFERENCE:I = 0xcf

.field private static final CONTEXT_MENU_ID_PREPARE_CALL:I = 0xd1

.field private static final CONTEXT_MENU_ID_SEND_MESSAGE:I = 0xcc

.field private static final CONTEXT_MENU_ID_VIDEO_CALL:I = 0xce

.field private static final CONTEXT_MENU_ID_VIEW_CONTACT:I = 0xca

.field private static final LIST_STATE_KEY:Ljava/lang/String; = "listStatusItem"

.field private static final TAG:Ljava/lang/String;

.field public static final TAG_CALL_LOG_FILTER_DIALOG:Ljava/lang/String; = "tag_call_log_filter_dialog"
    .annotation build Lcom/sonyericsson/android/socialphonebook/legacy/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mActiveVoicemailItemView:Landroid/view/View;

.field private mActivity:Landroid/app/Activity;

.field private mActivityResumed:Z

.field private mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

.field private mAnsweringMachineSupported:Z

.field private mCache:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

.field private mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

.field private mCallLogEmpty:Z

.field private mCallLogInfo:Landroid/widget/TextView;

.field private mCallPlusConnector:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

.field private mConferenceHelper:Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper;

.field private mConfiguration:Lcom/sonyericsson/android/socialphonebook/Configuration;

.field private mContainsVoicemail:Z

.field private mCurrentVoicemailMessageStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

.field private mDualSimIsEnabled:Z

.field private mEmptyCallLogMessageView:Landroid/view/View;

.field private mEmptyRecentCallsHeaderMessage:Landroid/widget/TextView;

.field private mEmptyView:Landroid/view/View;

.field private mFeedbackSender:Lcom/sonyericsson/android/socialphonebook/util/FeedbackSender;

.field private mHeaderView:Landroid/view/View;

.field private mInitialMessageAlreadyShown:Z

.field private mInteractivityDisabled:Z

.field private mIsConferenceCallEnabled:Z

.field private mIsScreenLocked:Z

.field private mIsSmsCapable:Z

.field private mIsUserVisible:Z

.field private mIsVilteSupported:Z

.field private mListRecentCallsHeaderMessage:Landroid/widget/TextView;

.field private mListState:Landroid/os/Parcelable;

.field private mListView:Landroid/widget/ListView;

.field private mLockscreenReceiver:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$LockscreenReceiver;

.field private mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mOnUserLeaveAppController:Lcom/sonyericsson/android/socialphonebook/OnUserLeaveAppController;

.field private mOrangeVvmExistsAndIsConfigured:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mQueryCommandCreator:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;

.field private mRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

.field private mShouldFilterVoicemail:Z

.field private mSyncCallStatusManager:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

.field private mTabStateController:Lcom/sonyericsson/android/socialphonebook/TabStateController;

.field private mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

.field private mVoiceMailStatusTask:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader;

.field private mVoicemailFetcher:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;

.field private mVoicemailPlayer:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get10(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get11(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mOrangeVvmExistsAndIsConfigured:Z

    return v0
.end method

.method static synthetic -get12(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    return-object v0
.end method

.method static synthetic -get13(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivityResumed:Z

    return v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCache:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    return-object v0
.end method

.method static synthetic -get6(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mIsConferenceCallEnabled:Z

    return v0
.end method

.method static synthetic -get7(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mIsSmsCapable:Z

    return v0
.end method

.method static synthetic -get8(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mIsUserVisible:Z

    return v0
.end method

.method static synthetic -get9(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mIsVilteSupported:Z

    return v0
.end method

.method private static synthetic -getcom_sonyericsson_android_socialphonebook_calllog_DeleteCallDialog$DeleteModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-com_sonyericsson_android_socialphonebook_calllog_DeleteCallDialog$DeleteModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-com_sonyericsson_android_socialphonebook_calllog_DeleteCallDialog$DeleteModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;->values()[Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;->DELETE_FILTER_CALLLOG:Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;->DELETE_SINGLE_CALLOG:Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-com_sonyericsson_android_socialphonebook_calllog_DeleteCallDialog$DeleteModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom_sonyericsson_android_socialphonebook_calllog_VoiceMailMessageStatus$VoiceMailPlayerStatusSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-com_sonyericsson_android_socialphonebook_calllog_VoiceMailMessageStatus$VoiceMailPlayerStatusSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-com_sonyericsson_android_socialphonebook_calllog_VoiceMailMessageStatus$VoiceMailPlayerStatusSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;->values()[Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;->PAUSE:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;->PLAY:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;->STOP:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-com_sonyericsson_android_socialphonebook_calllog_VoiceMailMessageStatus$VoiceMailPlayerStatusSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom_sonyericsson_android_socialphonebook_ui_CallLogFilterDialogFragment$CallLogFilterTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-com_sonyericsson_android_socialphonebook_ui_CallLogFilterDialogFragment$CallLogFilterTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-com_sonyericsson_android_socialphonebook_ui_CallLogFilterDialogFragment$CallLogFilterTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->values()[Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->ALL_CALLS:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->INCOMING_CALLS:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->MISSED_CALLS:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->OUTGOING_CALLS:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->VIDEO_CALLS:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->VOICEMAIL_CALLS:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->VOICE_CALLS:Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-com_sonyericsson_android_socialphonebook_ui_CallLogFilterDialogFragment$CallLogFilterTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mContainsVoicemail:Z

    return p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mIsScreenLocked:Z

    return p1
.end method

.method static synthetic -set2(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mOrangeVvmExistsAndIsConfigured:Z

    return p1
.end method

.method static synthetic -set3(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mShouldFilterVoicemail:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Landroid/widget/ListAdapter;
    .locals 1

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;Landroid/database/Cursor;)Z
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->isConferenceCall(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->startSocialPhonebookActivity()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;Ljava/lang/String;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->shouldShowCallComposerForNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->getAllVoicemail()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->clearNotifications()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->doDisplay()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;Landroid/net/Uri;)V
    .locals 0
    .param p1, "voicemailUri"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->handleVoicemailMessage(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->restoreListState()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->saveCallLogEmptyState()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->showCallConferences(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 162
    const-class v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 158
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 209
    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogEmpty:Z

    .line 212
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mListState:Landroid/os/Parcelable;

    .line 214
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivityResumed:Z

    .line 216
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mVoiceMailStatusTask:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader;

    .line 227
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mLockscreenReceiver:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$LockscreenReceiver;

    .line 230
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mIsScreenLocked:Z

    .line 250
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCurrentVoicemailMessageStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    .line 253
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActiveVoicemailItemView:Landroid/view/View;

    .line 258
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$1;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)V

    .line 257
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mPreferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 278
    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mShouldFilterVoicemail:Z

    .line 292
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAnsweringMachineSupported:Z

    .line 294
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mInitialMessageAlreadyShown:Z

    .line 309
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mInteractivityDisabled:Z

    .line 311
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mDualSimIsEnabled:Z

    .line 313
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mIsConferenceCallEnabled:Z

    .line 358
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$2;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 158
    return-void
.end method

.method private applyVoicemailFilter()V
    .locals 2

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->isVoicemailFilterOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1386
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->resetFilter(Landroid/content/Context;)V

    .line 1390
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    if-eqz v0, :cond_0

    .line 1391
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->startAsyncRequery()V

    .line 1384
    :cond_0
    return-void

    .line 1388
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->setVoicemailFilterOnly(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private bindEmptyView()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 1428
    iget-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mInitialMessageAlreadyShown:Z

    if-nez v4, :cond_1

    .line 1429
    iget-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mDualSimIsEnabled:Z

    if-eqz v4, :cond_0

    .line 1430
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1431
    .local v3, "r":Landroid/content/res/Resources;
    const v4, 0x7f0902f6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1433
    .local v0, "displayText":Ljava/lang/String;
    const v4, 0x7f0200a6

    .line 1432
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1435
    .local v2, "newMessageIcon":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v0, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->merge(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/text/SpannableString;

    move-result-object v1

    .line 1436
    .local v1, "emptyCallLogInfoText":Landroid/text/SpannableString;
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogInfo:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1438
    .end local v0    # "displayText":Ljava/lang/String;
    .end local v1    # "emptyCallLogInfoText":Landroid/text/SpannableString;
    .end local v2    # "newMessageIcon":Landroid/graphics/drawable/Drawable;
    .end local v3    # "r":Landroid/content/res/Resources;
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogInfo:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1439
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mEmptyCallLogMessageView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1440
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mEmptyRecentCallsHeaderMessage:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1427
    :goto_0
    return-void

    .line 1442
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mEmptyRecentCallsHeaderMessage:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->getCallLogFilterName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1443
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mEmptyCallLogMessageView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1444
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mEmptyRecentCallsHeaderMessage:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1445
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogInfo:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private clearAnsweringMachineNotifications(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1263
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.server.telecom.ACTION_CLEAR_ANSWERING_MACHINE_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1264
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1262
    return-void
.end method

.method private clearMachicharaMissedCall(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1306
    const-string/jumbo v4, "docomo"

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mConfiguration:Lcom/sonyericsson/android/socialphonebook/Configuration;

    invoke-virtual {v5}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getBrandName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1308
    :try_start_0
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1309
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v4, "com.nttdocomo.android.mascot"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 1311
    new-instance v2, Landroid/content/Intent;

    .line 1312
    const-string/jumbo v4, "com.nttdocomo.android.mascot.DisablePopup.AbsentArriving"

    .line 1311
    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1313
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.nttdocomo.android.mascot"

    .line 1314
    const-string/jumbo v5, "com.nttdocomo.android.mascot.service.MascotIntentService"

    .line 1313
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1315
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1305
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 1318
    :catch_0
    move-exception v0

    .line 1319
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "mascot activity is not found."

    invoke-static {v4, v5, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1316
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v1

    .line 1317
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "mascot package is not found."

    invoke-static {v4, v5, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private clearNotifications()V
    .locals 3

    .prologue
    .line 1243
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->resetNewCallsFlag()V

    .line 1246
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailNotifier;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailNotifier;->clearNotification()V

    .line 1248
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/AnsweringMachineUtils;->isAnsweringMachineSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1251
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->clearAnsweringMachineNotifications(Landroid/content/Context;)V

    .line 1255
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    .line 1256
    const-string/jumbo v2, "telecom"

    .line 1255
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 1257
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->cancelMissedCallsNotification()V

    .line 1259
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->clearMachicharaMissedCall(Landroid/content/Context;)V

    .line 1242
    return-void
.end method

.method private clickDetail(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1680
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->generateCallLogDetailIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 1681
    .local v0, "callLogintent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 1682
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->startActivity(Landroid/content/Intent;)V

    .line 1679
    :cond_0
    return-void
.end method

.method private clickItem(I)V
    .locals 24
    .param p1, "position"    # I

    .prologue
    .line 1551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v16

    .line 1552
    .local v16, "cursor":Landroid/database/Cursor;
    if-eqz v16, :cond_6

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1553
    const-string/jumbo v2, "number"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1555
    .local v19, "number":Ljava/lang/String;
    const-string/jumbo v2, "presentation"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1554
    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 1557
    .local v20, "numberPresentation":I
    const/16 v22, 0x0

    .line 1558
    .local v22, "protocol":Ljava/lang/String;
    const-string/jumbo v2, "protocol"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v3, v2, :cond_1

    .line 1560
    invoke-static/range {v19 .. v19}, Lcom/sonyericsson/android/socialphonebook/util/StringUtil;->isUriNumber(Ljava/lang/String;)Z

    move-result v18

    .line 1561
    .local v18, "isSipNumber":Z
    if-eqz v18, :cond_0

    const-string/jumbo v22, "sip"

    .line 1567
    .end local v18    # "isSipNumber":Z
    .local v22, "protocol":Ljava/lang/String;
    :goto_0
    invoke-static/range {v19 .. v20}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->isNotCallBackNumber(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1569
    return-void

    .line 1561
    .restart local v18    # "isSipNumber":Z
    .local v22, "protocol":Ljava/lang/String;
    :cond_0
    const-string/jumbo v22, "tel"

    .local v22, "protocol":Ljava/lang/String;
    goto :goto_0

    .line 1564
    .end local v18    # "isSipNumber":Z
    .local v22, "protocol":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "protocol"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .local v22, "protocol":Ljava/lang/String;
    goto :goto_0

    .line 1572
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isCallingInPinnedModeAndNotify(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1573
    return-void

    .line 1577
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->isConferenceCall(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1578
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mConferenceHelper:Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper;->getConferenceCallConstraint()Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;

    move-result-object v15

    .line 1579
    .local v15, "constraint":Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;->NO_CONSTRAINT:Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;

    if-eq v2, v15, :cond_4

    .line 1580
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->showConferenceCallErrorDialog(Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;)Z

    .line 1581
    return-void

    .line 1584
    :cond_4
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1585
    const-string/jumbo v3, "call_items"

    .line 1584
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;

    .line 1586
    .local v10, "callItemsHelper":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;
    invoke-virtual {v10}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->getNumbers()[Ljava/lang/String;

    move-result-object v21

    .line 1587
    .local v21, "numbers":[Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getConferenceCallIntent([Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v17

    .line 1630
    .end local v10    # "callItemsHelper":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;
    .end local v15    # "constraint":Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;
    .end local v21    # "numbers":[Ljava/lang/String;
    .local v17, "intent":Landroid/content/Intent;
    :cond_5
    :goto_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mInteractivityDisabled:Z

    .line 1631
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->getInstance()Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    move-result-object v2

    .line 1632
    const v3, 0x7f0901cd

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1633
    const v4, 0x7f0901dd

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1634
    const v5, 0x7f0901e6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1635
    const-wide/16 v6, 0x0

    .line 1631
    invoke-virtual/range {v2 .. v7}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1550
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v19    # "number":Ljava/lang/String;
    .end local v20    # "numberPresentation":I
    .end local v22    # "protocol":Ljava/lang/String;
    :cond_6
    return-void

    .line 1589
    .restart local v19    # "number":Ljava/lang/String;
    .restart local v20    # "numberPresentation":I
    .restart local v22    # "protocol":Ljava/lang/String;
    :cond_7
    invoke-static/range {v19 .. v19}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->isVoiceMailUri(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1590
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getCallIntent(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v17

    .line 1593
    .restart local v17    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "voicemail_uri"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1592
    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1594
    .local v13, "callerVoicemailUriString":Ljava/lang/String;
    invoke-static {v13}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VisualVoicemailHelper;->isVisualVoicemail(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->setAllVisualVoicemailsAsRead()V

    goto :goto_1

    .line 1599
    .end local v13    # "callerVoicemailUriString":Ljava/lang/String;
    .end local v17    # "intent":Landroid/content/Intent;
    :cond_8
    const-string/jumbo v2, "name"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1600
    .local v12, "callerName":Ljava/lang/String;
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 1601
    .local v8, "bundle":Landroid/os/Bundle;
    if-eqz v8, :cond_b

    .line 1602
    const-string/jumbo v2, "call_items"

    .line 1601
    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-nez v2, :cond_b

    .line 1604
    const-string/jumbo v2, "call_items"

    .line 1603
    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;

    .line 1605
    .local v11, "callLogHelper":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;
    invoke-virtual {v11}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->getIds()[I

    move-result-object v14

    .line 1607
    .local v14, "collapsedIds":[I
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    .line 1606
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v14, v1, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->shouldInitiateVideoCall([ILjava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    move-object/from16 v0, v19

    invoke-interface {v2, v0}, Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;->getVideoCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v17

    .line 1622
    .end local v11    # "callLogHelper":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;
    .end local v14    # "collapsedIds":[I
    .restart local v17    # "intent":Landroid/content/Intent;
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mDualSimIsEnabled:Z

    if-eqz v2, :cond_5

    .line 1623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->getSubIdAtCurrentPosition(Landroid/content/Context;Landroid/database/Cursor;)I

    move-result v23

    .line 1624
    .local v23, "slotId":I
    const-string/jumbo v2, "preferred_subscription"

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1

    .line 1607
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v23    # "slotId":I
    .restart local v11    # "callLogHelper":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;
    .restart local v14    # "collapsedIds":[I
    :cond_9
    const/4 v2, 0x1

    goto :goto_2

    .line 1610
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v2, v0, v1, v3}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getCallIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v17

    .restart local v17    # "intent":Landroid/content/Intent;
    goto :goto_3

    .line 1613
    .end local v11    # "callLogHelper":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;
    .end local v14    # "collapsedIds":[I
    .end local v17    # "intent":Landroid/content/Intent;
    :cond_b
    const/4 v2, 0x1

    new-array v9, v2, [I

    .line 1614
    const-string/jumbo v2, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v9, v3

    .line 1616
    .local v9, "callIds":[I
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v9, v1, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->shouldInitiateVideoCall([ILjava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1617
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    move-object/from16 v0, v19

    invoke-interface {v2, v0}, Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;->getVideoCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v17

    .restart local v17    # "intent":Landroid/content/Intent;
    goto :goto_3

    .line 1616
    .end local v17    # "intent":Landroid/content/Intent;
    :cond_c
    const/4 v2, 0x1

    goto :goto_4

    .line 1619
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v2, v0, v1, v3}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getCallIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v17

    .restart local v17    # "intent":Landroid/content/Intent;
    goto :goto_3
.end method

.method private createVoicemailMessageStatus(Landroid/net/Uri;)V
    .locals 2
    .param p1, "voicemailUri"    # Landroid/net/Uri;

    .prologue
    .line 1813
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    invoke-direct {v0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;-><init>(Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCurrentVoicemailMessageStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    .line 1814
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCurrentVoicemailMessageStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->setVoicemailMessageStatus(Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;)V

    .line 1812
    return-void
.end method

.method private deleteCallogItem(Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo;)V
    .locals 3
    .param p1, "callLogInfo"    # Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo;

    .prologue
    .line 1864
    if-nez p1, :cond_0

    .line 1865
    return-void

    .line 1868
    :cond_0
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo;->mUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1869
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo;->mUri:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VisualVoicemailHelper;->isVisualVoicemail(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1877
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    iget-object v1, p1, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo;->mCallIds:[I

    iget-object v2, p1, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->deleteByIds([ILjava/lang/String;)I

    .line 1880
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    .line 1881
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090361

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1882
    const/4 v2, 0x0

    .line 1880
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1886
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->startAsyncRequery()V

    .line 1863
    return-void

    .line 1870
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCurrentVoicemailMessageStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    if-eqz v0, :cond_3

    .line 1871
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo;->mUri:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCurrentVoicemailMessageStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1870
    if-eqz v0, :cond_3

    .line 1873
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mVoicemailPlayer:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->stopVoicemailIfPlaying()V

    .line 1875
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    iget-object v1, p1, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo;->mUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->deleteVoicemailByUri(Landroid/net/Uri;)I

    goto :goto_0
.end method

.method private dismissFragmentDialog(Ljava/lang/String;)V
    .locals 2
    .param p1, "dialogTag"    # Ljava/lang/String;

    .prologue
    .line 1235
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 1237
    .local v0, "dialogFragment":Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 1238
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 1234
    :cond_0
    return-void
.end method

.method private doDisplay()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1516
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_1

    .line 1517
    :cond_0
    return-void

    .line 1519
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1520
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1521
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1522
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->bindEmptyView()V

    .line 1515
    :goto_0
    return-void

    .line 1524
    :cond_2
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mInitialMessageAlreadyShown:Z

    if-nez v0, :cond_3

    .line 1525
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->setInitialMessageAlreadyShown()V

    .line 1527
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mListRecentCallsHeaderMessage:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->getCallLogFilterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1528
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1529
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private generateCallLogDetailIntent(I)Landroid/content/Intent;
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1696
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    invoke-virtual {v5}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 1697
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_3

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1698
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    const-class v6, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1699
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "vnd.android.cursor.item/vnd.sonyericsson.extracted_call_information"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1700
    const-string/jumbo v5, "name"

    .line 1701
    const-string/jumbo v6, "name"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1700
    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1702
    const-string/jumbo v5, "number"

    .line 1703
    const-string/jumbo v6, "number"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1702
    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1704
    const-string/jumbo v5, "numberPresentation"

    .line 1705
    const-string/jumbo v6, "presentation"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1704
    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1706
    const-string/jumbo v5, "protocol"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v6, v5, :cond_2

    .line 1708
    const-string/jumbo v5, "voicemailuri"

    .line 1709
    const-string/jumbo v6, "voicemail_uri"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1708
    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1710
    const-string/jumbo v5, "voicemailread"

    .line 1711
    const-string/jumbo v6, "is_read"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1710
    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1712
    const-string/jumbo v5, "protocol"

    .line 1713
    const-string/jumbo v6, "tel:"

    .line 1712
    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1719
    :goto_0
    const-string/jumbo v5, "callLogFirstItem"

    if-nez p1, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1721
    const-string/jumbo v3, "_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1722
    .local v0, "callId":I
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->isConferenceCall(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1723
    const-string/jumbo v3, "callLogConferenceCallItem"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1726
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1727
    return-object v2

    .line 1716
    .end local v0    # "callId":I
    :cond_2
    const-string/jumbo v5, "protocol"

    .line 1717
    const-string/jumbo v6, "protocol"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1716
    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1729
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    .line 1730
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Intent could have not been generated for call log list item at position: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1729
    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    return-object v6
.end method

.method private getAdapter()Landroid/widget/ListAdapter;
    .locals 2

    .prologue
    .line 2062
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_0

    .line 2063
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .line 2064
    .local v0, "headerAdapter":Landroid/widget/HeaderViewListAdapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    return-object v1

    .line 2066
    .end local v0    # "headerAdapter":Landroid/widget/HeaderViewListAdapter;
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    return-object v1
.end method

.method private getAllVoicemail()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1396
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1397
    .local v2, "retArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    if-eqz v4, :cond_3

    .line 1398
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 1400
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1402
    :cond_0
    const-string/jumbo v4, "protocol"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v5, v4, :cond_2

    .line 1405
    const-string/jumbo v4, "voicemail_uri"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1404
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1406
    .local v3, "uriVoicemail":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1407
    invoke-interface {v1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 1408
    const-string/jumbo v5, "call_items"

    .line 1407
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;

    .line 1409
    .local v0, "callItemsHelper":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->getVoicemailUri()Ljava/lang/String;

    move-result-object v3

    .line 1411
    .end local v0    # "callItemsHelper":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1412
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1415
    .end local v3    # "uriVoicemail":Ljava/lang/String;
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1419
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_3
    return-object v2
.end method

.method private getCallLogFilterName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1450
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->readCallLogFilterPreference(Landroid/content/Context;)I

    move-result v2

    .line 1452
    .local v2, "state":I
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->values()[Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;

    move-result-object v4

    aget-object v3, v4, v2

    .line 1454
    .local v3, "stateEnum":Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;
    const/4 v0, 0x0

    .line 1455
    .local v0, "filterName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1457
    .local v1, "r":Landroid/content/res/Resources;
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-getcom_sonyericsson_android_socialphonebook_ui_CallLogFilterDialogFragment$CallLogFilterTypeSwitchesValues()[I

    move-result-object v4

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment$CallLogFilterType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1483
    .end local v0    # "filterName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1459
    .restart local v0    # "filterName":Ljava/lang/String;
    :pswitch_0
    const v4, 0x7f0903dd

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "filterName":Ljava/lang/String;
    goto :goto_0

    .line 1462
    .local v0, "filterName":Ljava/lang/String;
    :pswitch_1
    const v4, 0x7f0903de

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "filterName":Ljava/lang/String;
    goto :goto_0

    .line 1465
    .local v0, "filterName":Ljava/lang/String;
    :pswitch_2
    const v4, 0x7f0903df

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "filterName":Ljava/lang/String;
    goto :goto_0

    .line 1468
    .local v0, "filterName":Ljava/lang/String;
    :pswitch_3
    const v4, 0x7f0903e0

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "filterName":Ljava/lang/String;
    goto :goto_0

    .line 1471
    .local v0, "filterName":Ljava/lang/String;
    :pswitch_4
    const v4, 0x7f0903e1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "filterName":Ljava/lang/String;
    goto :goto_0

    .line 1474
    .local v0, "filterName":Ljava/lang/String;
    :pswitch_5
    const v4, 0x7f0903e2

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "filterName":Ljava/lang/String;
    goto :goto_0

    .line 1477
    .local v0, "filterName":Ljava/lang/String;
    :pswitch_6
    const v4, 0x7f0903e3

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "filterName":Ljava/lang/String;
    goto :goto_0

    .line 1457
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method private getCallLogInfoFromCursor(I)Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo;
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v7, 0x0

    .line 1835
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 1836
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-nez v6, :cond_1

    .line 1837
    :cond_0
    return-object v7

    .line 1840
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 1842
    .local v3, "extras":Landroid/os/Bundle;
    const-string/jumbo v6, "call_items"

    .line 1841
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;

    .line 1843
    .local v0, "callItemsHelper":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->getIds()[I

    move-result-object v1

    .line 1845
    .local v1, "callsIds":[I
    const/4 v5, 0x0

    .line 1846
    .local v5, "uriString":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1848
    .local v4, "protocol":Ljava/lang/String;
    const-string/jumbo v6, "protocol"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v7, v6, :cond_2

    .line 1850
    const-string/jumbo v6, "voicemail_uri"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1851
    .local v5, "uriString":Ljava/lang/String;
    const-string/jumbo v4, "tel:"

    .line 1857
    .end local v5    # "uriString":Ljava/lang/String;
    .local v4, "protocol":Ljava/lang/String;
    :goto_0
    new-instance v6, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo;

    invoke-direct {v6, v5, v4, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[I)V

    return-object v6

    .line 1854
    .local v4, "protocol":Ljava/lang/String;
    .local v5, "uriString":Ljava/lang/String;
    :cond_2
    const-string/jumbo v6, "protocol"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "protocol":Ljava/lang/String;
    goto :goto_0
.end method

.method private handleVoicemailMessage(Landroid/net/Uri;)V
    .locals 2
    .param p1, "voicemailUri"    # Landroid/net/Uri;

    .prologue
    .line 1766
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCurrentVoicemailMessageStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    if-eqz v0, :cond_0

    .line 1767
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCurrentVoicemailMessageStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1769
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->createVoicemailMessageStatus(Landroid/net/Uri;)V

    .line 1770
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->playVoicemailMessage()V

    .line 1771
    return-void

    .line 1768
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCurrentVoicemailMessageStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1775
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCurrentVoicemailMessageStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1776
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-getcom_sonyericsson_android_socialphonebook_calllog_VoiceMailMessageStatus$VoiceMailPlayerStatusSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCurrentVoicemailMessageStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;->getPlayerStatus()Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1764
    :cond_2
    :goto_0
    return-void

    .line 1778
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mVoicemailPlayer:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->pauseVoicemailIfPlaying()V

    goto :goto_0

    .line 1782
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->playVoicemailMessage()V

    goto :goto_0

    .line 1776
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initializeCustomMenuItems(Landroid/view/Menu;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v7, 0x0

    .line 856
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 857
    .local v1, "activity":Landroid/app/Activity;
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mConfiguration:Lcom/sonyericsson/android/socialphonebook/Configuration;

    invoke-virtual {v5}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isActionBarWithContactsTextEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    .line 858
    const v5, 0x7f0e0235

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 859
    .local v3, "contactsMenuItem":Landroid/view/MenuItem;
    if-eqz v3, :cond_0

    .line 860
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 861
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 862
    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 863
    const v6, 0x7f040047

    .line 862
    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 865
    .local v4, "contactsText":Landroid/view/View;
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 866
    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$3;

    invoke-direct {v6, p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$3;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 876
    .end local v3    # "contactsMenuItem":Landroid/view/MenuItem;
    .end local v4    # "contactsText":Landroid/view/View;
    :cond_0
    iget-boolean v5, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mIsConferenceCallEnabled:Z

    if-eqz v5, :cond_1

    .line 877
    const v5, 0x7f0e0234

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 879
    .local v2, "conferencesItem":Landroid/view/MenuItem;
    if-eqz v2, :cond_1

    .line 880
    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 881
    .local v0, "actionView":Landroid/view/View;
    new-instance v5, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$4;

    invoke-direct {v5, p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$4;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 855
    .end local v0    # "actionView":Landroid/view/View;
    .end local v2    # "conferencesItem":Landroid/view/MenuItem;
    :cond_1
    return-void
.end method

.method private isConferenceCall(Landroid/database/Cursor;)Z
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v5, 0x0

    .line 1664
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1665
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    return v5

    .line 1666
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 1667
    const-string/jumbo v4, "call_items"

    .line 1666
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;

    .line 1668
    .local v1, "callItemsHelper":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->getIds()[I

    move-result-object v2

    .line 1669
    .local v2, "collapsedIds":[I
    if-nez v2, :cond_1

    return v5

    .line 1671
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->containsConferenceCall([I)Z

    move-result v3

    return v3
.end method

.method private isLockScreenInRestrictedInputMode()Z
    .locals 2

    .prologue
    .line 2127
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2128
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    .line 2129
    const-string/jumbo v1, "keyguard"

    .line 2128
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    return v0

    .line 2131
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private merge(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/text/SpannableString;
    .locals 8
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v7, 0x0

    .line 1487
    const-string/jumbo v0, "%icon"

    .line 1488
    .local v0, "DEFAULT_REPLACE_STRING":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1489
    new-instance v5, Landroid/text/SpannableString;

    const-string/jumbo v6, ""

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v5

    .line 1491
    :cond_0
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1492
    .local v2, "manipulatedString":Landroid/text/SpannableString;
    if-eqz p2, :cond_1

    .line 1493
    const-string/jumbo v5, "%icon"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1494
    .local v4, "start":I
    if-ltz v4, :cond_1

    .line 1495
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 1496
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 1495
    invoke-virtual {p2, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1497
    new-instance v3, Landroid/text/style/ImageSpan;

    invoke-direct {v3, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 1498
    .local v3, "span":Landroid/text/style/ImageSpan;
    const-string/jumbo v5, "%icon"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int v1, v4, v5

    .line 1499
    .local v1, "end":I
    const/16 v5, 0x12

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1502
    .end local v1    # "end":I
    .end local v3    # "span":Landroid/text/style/ImageSpan;
    .end local v4    # "start":I
    :cond_1
    return-object v2
.end method

.method private onVoiceMailViewClicked(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 1737
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 1738
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1742
    const-string/jumbo v4, "voicemail_uri"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1746
    .local v3, "voicemailUriString":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1747
    invoke-interface {v1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 1748
    const-string/jumbo v5, "call_items"

    .line 1747
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;

    .line 1749
    .local v0, "callItemsHelper":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->getVoicemailUri()Ljava/lang/String;

    move-result-object v3

    .line 1752
    .end local v0    # "callItemsHelper":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;
    :cond_0
    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VerizonVoicemailHelper;->isVerizonVoicemail(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1753
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v4, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VerizonVoicemailHelper;->viewVerizonVoicemail(Landroid/content/Context;Ljava/lang/String;)V

    .line 1754
    return-void

    .line 1757
    :cond_1
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1758
    .local v2, "voicemailUri":Landroid/net/Uri;
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->requestVoicemailContent(Landroid/net/Uri;)V

    .line 1760
    .end local v2    # "voicemailUri":Landroid/net/Uri;
    .end local v3    # "voicemailUriString":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->notifyDataSetChanged()V

    .line 1736
    return-void
.end method

.method private playVoicemailMessage()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1818
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mVoicemailPlayer:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCurrentVoicemailMessageStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->playVoicemail(Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;)V

    .line 1819
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$UpdateVoicemail;

    invoke-direct {v0, p0, v4}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$UpdateVoicemail;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$UpdateVoicemail;)V

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCurrentVoicemailMessageStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;->getUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v4, v1, v2

    const/4 v2, 0x2

    aput-object v4, v1, v2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$UpdateVoicemail;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1817
    return-void
.end method

.method private prepareConferenceCallParticipants()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1075
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 1076
    .local v2, "cursor":Landroid/database/Cursor;
    if-nez v2, :cond_0

    .line 1077
    return v5

    .line 1081
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1082
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "call_items"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1084
    const-string/jumbo v4, "call_items"

    .line 1083
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;

    .line 1085
    .local v1, "callItemsHelper":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->getNumbers()[Ljava/lang/String;

    move-result-object v3

    .line 1090
    .end local v1    # "callItemsHelper":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;
    .local v3, "numbers":[Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v4, v3}, Lcom/sonyericsson/android/socialphonebook/conferencecall/activities/ConferenceParticipantsActivity;->getIntent(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->startActivity(Landroid/content/Intent;)V

    .line 1091
    return v6

    .line 1087
    .end local v3    # "numbers":[Ljava/lang/String;
    :cond_1
    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "number"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .restart local v3    # "numbers":[Ljava/lang/String;
    goto :goto_0
.end method

.method private registerPhoneStateListener()V
    .locals 3

    .prologue
    .line 328
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$CallStateListener;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$CallStateListener;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 330
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    .line 331
    const-string/jumbo v2, "phone"

    .line 330
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 332
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 327
    return-void
.end method

.method private requestVoicemailContent(Landroid/net/Uri;)V
    .locals 3
    .param p1, "voicemailUri"    # Landroid/net/Uri;

    .prologue
    .line 1789
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mVoicemailFetcher:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;

    if-nez v0, :cond_0

    .line 1790
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    .line 1791
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$7;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$7;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)V

    .line 1790
    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;-><init>(Landroid/app/Activity;Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$OnVoicemailFetchListener;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mVoicemailFetcher:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;

    .line 1809
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mVoicemailFetcher:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->requestVoicemail(Landroid/net/Uri;)V

    .line 1788
    return-void
.end method

.method private resetNewCallsFlag()V
    .locals 2

    .prologue
    .line 1271
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$5;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$5;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1270
    return-void
.end method

.method private restoreListState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1893
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_1

    .line 1894
    :cond_0
    return-void

    .line 1896
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "restoreListState start"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1897
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1898
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mListState:Landroid/os/Parcelable;

    .line 1892
    return-void
.end method

.method private saveCallLogEmptyState()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1535
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 1536
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    if-eqz v2, :cond_1

    .line 1537
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->getCount()I

    move-result v2

    if-gtz v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogEmpty:Z

    .line 1541
    :goto_1
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set mActivity.mCallLogEmpty="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogEmpty:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 1534
    return-void

    :cond_0
    move v0, v1

    .line 1537
    goto :goto_0

    .line 1539
    :cond_1
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogEmpty:Z

    goto :goto_1
.end method

.method private setInitialMessageAlreadyShown()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1510
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mInitialMessageAlreadyShown:Z

    .line 1511
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->setInitialMessageIsShown(Landroid/content/Context;Z)V

    .line 1512
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->bindEmptyView()V

    .line 1509
    return-void
.end method

.method private setVoicemailStatus(Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;)V
    .locals 2
    .param p1, "status"    # Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mVoicemailPlayer:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->getVoicemailMessageStatus()Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCurrentVoicemailMessageStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    .line 1326
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-getcom_sonyericsson_android_socialphonebook_calllog_VoiceMailMessageStatus$VoiceMailPlayerStatusSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1333
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActiveVoicemailItemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/ScreenUtil;->keepScreenOn(Landroid/view/View;Z)V

    .line 1324
    :goto_0
    return-void

    .line 1328
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActiveVoicemailItemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/ScreenUtil;->keepScreenOn(Landroid/view/View;Z)V

    goto :goto_0

    .line 1326
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private shouldInitiateVideoCall([ILjava/lang/String;Z)Z
    .locals 4
    .param p1, "callIds"    # [I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "isContact"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1641
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1642
    :cond_0
    return v3

    .line 1645
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->containsVideoCall([I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1646
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    .line 1647
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->CALL_LOG_LIST:Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    .line 1646
    invoke-interface {v1, v2, p2, p3}, Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;->getVideoCallEntityVisibility(Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;Ljava/lang/String;Z)Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    move-result-object v0

    .line 1648
    .local v0, "visibility":Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->NORMAL:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    if-ne v0, v1, :cond_2

    .line 1649
    const/4 v1, 0x1

    return v1

    .line 1652
    .end local v0    # "visibility":Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    :cond_2
    return v3
.end method

.method private shouldShowCallComposerForNumber(Ljava/lang/String;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallPlusConnector:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->getCachedCapability(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private showCallConferences(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1208
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->isConferenceCallDialogUsed(Landroid/content/Context;)Z

    move-result v3

    .line 1210
    .local v3, "shouldShowDialog":Z
    if-eqz v3, :cond_0

    .line 1211
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 1212
    .local v1, "fm":Landroid/app/FragmentManager;
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;->newInstance()Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;

    move-result-object v0

    .line 1213
    .local v0, "dialog":Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1214
    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1207
    .end local v0    # "dialog":Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;
    .end local v1    # "fm":Landroid/app/FragmentManager;
    :goto_0
    return-void

    .line 1217
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/sonyericsson/android/socialphonebook/conferencecall/activities/ConferenceCallsActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1218
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private showCallLogFilterDialog()V
    .locals 3

    .prologue
    .line 1376
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 1377
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/TransactionSafeResolvable;

    invoke-interface {v1}, Lcom/sonyericsson/android/socialphonebook/TransactionSafeResolvable;->isSafeToCommitTransactions()Z

    move-result v1

    .line 1376
    if-eqz v1, :cond_0

    .line 1379
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mShouldFilterVoicemail:Z

    .line 1378
    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;->newInstance(Z)Lcom/sonyericsson/android/socialphonebook/ui/CallLogFilterDialogFragment;

    move-result-object v0

    .line 1380
    .local v0, "newFragment":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "tag_call_log_filter_dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1375
    .end local v0    # "newFragment":Landroid/app/DialogFragment;
    :cond_0
    return-void
.end method

.method private showConferenceCallErrorDialog(Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;)Z
    .locals 3
    .param p1, "type"    # Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;

    .prologue
    .line 1223
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 1224
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/TransactionSafeResolvable;

    invoke-interface {v2}, Lcom/sonyericsson/android/socialphonebook/TransactionSafeResolvable;->isSafeToCommitTransactions()Z

    move-result v2

    .line 1223
    if-eqz v2, :cond_0

    .line 1225
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 1226
    .local v1, "fm":Landroid/app/FragmentManager;
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallErrorDialog;->newInstance(Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;)Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallErrorDialog;

    move-result-object v0

    .line 1227
    .local v0, "dialog":Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallErrorDialog;
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallErrorDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallErrorDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1228
    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1229
    const/4 v2, 0x1

    return v2

    .line 1231
    .end local v0    # "dialog":Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallErrorDialog;
    .end local v1    # "fm":Landroid/app/FragmentManager;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private showDeleteCallLogDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1364
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 1365
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/TransactionSafeResolvable;

    invoke-interface {v1}, Lcom/sonyericsson/android/socialphonebook/TransactionSafeResolvable;->isSafeToCommitTransactions()Z

    move-result v1

    .line 1364
    if-eqz v1, :cond_0

    .line 1367
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;->DELETE_FILTER_CALLLOG:Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;

    .line 1368
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09035e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1369
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090362

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1366
    invoke-static {v1, v2, v3, v5}, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog;->newInstance(Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo;)Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog;

    move-result-object v0

    .line 1370
    .local v0, "dialog":Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1371
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1363
    .end local v0    # "dialog":Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog;
    :cond_0
    return-void
.end method

.method private startDeleteFilterCallogThread(Ljava/lang/String;)V
    .locals 3
    .param p1, "selection"    # Ljava/lang/String;

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mVoicemailPlayer:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->stopVoicemailIfPlaying()V

    .line 1340
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$6;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1358
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    .line 1359
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09035f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1360
    const/4 v2, 0x0

    .line 1358
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1338
    return-void
.end method

.method private startSocialPhonebookActivity()V
    .locals 3

    .prologue
    .line 1064
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1065
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1066
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->startActivity(Landroid/content/Intent;)V

    .line 1063
    return-void
.end method

.method private unregisterPhoneStateListener()V
    .locals 3

    .prologue
    .line 336
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    .line 337
    const-string/jumbo v2, "phone"

    .line 336
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 338
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 340
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 335
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 616
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 617
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 619
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mListView:Landroid/widget/ListView;

    .line 620
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/sonyericsson/android/socialphonebook/TabStateController;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/TabStateController;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mTabStateController:Lcom/sonyericsson/android/socialphonebook/TabStateController;

    .line 622
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mTabStateController:Lcom/sonyericsson/android/socialphonebook/TabStateController;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->CALLLOG:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    invoke-interface {v0, p0, v1}, Lcom/sonyericsson/android/socialphonebook/TabStateController;->register(Lcom/sonyericsson/android/socialphonebook/TabStateObserver;Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;)V

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0e0062

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mEmptyView:Landroid/view/View;

    .line 626
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e0061

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogInfo:Landroid/widget/TextView;

    .line 627
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0e0064

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mEmptyCallLogMessageView:Landroid/view/View;

    .line 628
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    .line 629
    const v1, 0x7f0e0063

    .line 628
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mEmptyRecentCallsHeaderMessage:Landroid/widget/TextView;

    .line 630
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    .line 631
    const v1, 0x7f0e0065

    .line 630
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mListRecentCallsHeaderMessage:Landroid/widget/TextView;

    .line 632
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->bindEmptyView()V

    .line 633
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 615
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 514
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    .line 517
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 519
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->TAG:Ljava/lang/String;

    .line 518
    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mVoicemailPlayer:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;

    .line 520
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mVoicemailPlayer:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;

    if-nez v2, :cond_0

    .line 521
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/TransactionSafeResolvable;

    invoke-interface {v2}, Lcom/sonyericsson/android/socialphonebook/TransactionSafeResolvable;->isSafeToCommitTransactions()Z

    move-result v2

    .line 520
    if-eqz v2, :cond_0

    .line 522
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->beginFragmentTransaction(Landroid/app/FragmentManager;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 524
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;

    invoke-direct {v2}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mVoicemailPlayer:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;

    .line 525
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mVoicemailPlayer:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;

    sget-object v3, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 527
    .end local v1    # "transaction":Landroid/app/FragmentTransaction;
    :cond_0
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "VoicemailPlayer is craeted. mVoicemailPlayer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mVoicemailPlayer:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    instance-of v2, v2, Lcom/sonyericsson/android/socialphonebook/OnUserLeaveAppController;

    if-eqz v2, :cond_1

    .line 529
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/OnUserLeaveAppController;

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mOnUserLeaveAppController:Lcom/sonyericsson/android/socialphonebook/OnUserLeaveAppController;

    .line 530
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mOnUserLeaveAppController:Lcom/sonyericsson/android/socialphonebook/OnUserLeaveAppController;

    invoke-interface {v2, p0}, Lcom/sonyericsson/android/socialphonebook/OnUserLeaveAppController;->setOnUserLeaveAppObserver(Lcom/sonyericsson/android/socialphonebook/OnUserLeaveAppListener;)V

    .line 534
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-super {p0, v2}, Landroid/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 535
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 513
    return-void

    .line 532
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Activity must be instace of OnUserLeaveAppObserver"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onBackButtonPressed()V
    .locals 1

    .prologue
    .line 1989
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 1990
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mVoicemailPlayer:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->stopVoicemailIfPlaying()V

    .line 1991
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 1988
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1926
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 1929
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mInteractivityDisabled:Z

    if-eqz v2, :cond_0

    .line 1930
    return-void

    .line 1933
    :cond_0
    const v2, 0x7f0e001f

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1934
    .local v0, "position":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 1936
    .local v1, "viewId":I
    sparse-switch v1, :sswitch_data_0

    .line 1950
    :goto_0
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 1925
    return-void

    .line 1938
    :sswitch_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->clickDetail(I)V

    goto :goto_0

    .line 1941
    :sswitch_1
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->clickItem(I)V

    goto :goto_0

    .line 1944
    :sswitch_2
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mListView:Landroid/widget/ListView;

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActiveVoicemailItemView:Landroid/view/View;

    .line 1945
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->onVoiceMailViewClicked(I)V

    goto :goto_0

    .line 1936
    :sswitch_data_0
    .sparse-switch
        0x7f0e0066 -> :sswitch_1
        0x7f0e0067 -> :sswitch_0
        0x7f0e0073 -> :sswitch_2
    .end sparse-switch
.end method

.method public onConfigurationChange(Z)V
    .locals 1
    .param p1, "isVilteSupportChanged"    # Z

    .prologue
    .line 2092
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 2093
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->notifyDataSetChanged()V

    .line 2094
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 2091
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1024
    sget-object v5, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 1025
    const/4 v3, 0x1

    .line 1026
    .local v3, "ret":Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    .line 1027
    .local v4, "view":Landroid/view/View;
    if-nez v4, :cond_0

    .line 1028
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    return v5

    .line 1030
    :cond_0
    const v5, 0x7f0e001f

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1031
    .local v2, "position":I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1056
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    .line 1059
    .end local v3    # "ret":Z
    :cond_1
    :goto_0
    sget-object v5, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 1060
    return v3

    .line 1033
    .restart local v3    # "ret":Z
    :pswitch_1
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    if-eqz v5, :cond_1

    .line 1034
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    check-cast v5, Lcom/sonyericsson/android/socialphonebook/TransactionSafeResolvable;

    invoke-interface {v5}, Lcom/sonyericsson/android/socialphonebook/TransactionSafeResolvable;->isSafeToCommitTransactions()Z

    move-result v5

    .line 1033
    if-eqz v5, :cond_1

    .line 1036
    sget-object v5, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;->DELETE_SINGLE_CALLOG:Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;

    .line 1037
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090360

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1038
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090363

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1039
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->getCallLogInfoFromCursor(I)Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo;

    move-result-object v8

    .line 1035
    invoke-static {v5, v6, v7, v8}, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog;->newInstance(Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo;)Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog;

    move-result-object v1

    .line 1040
    .local v1, "dialog":Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog;
    const/4 v5, 0x0

    invoke-virtual {v1, p0, v5}, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1041
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    sget-object v6, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1048
    .end local v1    # "dialog":Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog;
    :pswitch_2
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mConferenceHelper:Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper;

    invoke-virtual {v5}, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper;->getConferenceCallConstraint()Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;

    move-result-object v0

    .line 1049
    .local v0, "constraint":Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;
    sget-object v5, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;->NO_CONSTRAINT:Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;

    if-ne v5, v0, :cond_2

    .line 1050
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->prepareConferenceCallParticipants()Z

    move-result v3

    .local v3, "ret":Z
    goto :goto_0

    .line 1052
    .local v3, "ret":Z
    :cond_2
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->showConferenceCallErrorDialog(Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;)Z

    move-result v3

    .local v3, "ret":Z
    goto :goto_0

    .line 1031
    nop

    :pswitch_data_0
    .packed-switch 0xcd
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 540
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 541
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 543
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->setHasOptionsMenu(Z)V

    .line 545
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/VilteFactory;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    .line 546
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mConferenceHelper:Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper;

    .line 547
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p0}, Lcom/sonyericsson/android/socialphonebook/rcs/RcsFactory;->getInstance(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector$RcsCallback;)Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    .line 548
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    invoke-interface {v1}, Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;->connect()V

    .line 549
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Connected RCS. mRcsConnector: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_0

    .line 553
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/AnsweringMachineUtils;->isAnsweringMachineSupported(Landroid/content/Context;)Z

    move-result v0

    .line 552
    :cond_0
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAnsweringMachineSupported:Z

    .line 554
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->isInitialMessageShown(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mInitialMessageAlreadyShown:Z

    .line 555
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/FeedbackSender;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/FeedbackSender;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mFeedbackSender:Lcom/sonyericsson/android/socialphonebook/util/FeedbackSender;

    .line 556
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FeedbackSender is created. mFeedbackSender: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mFeedbackSender:Lcom/sonyericsson/android/socialphonebook/util/FeedbackSender;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;->isMultiSimEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mDualSimIsEnabled:Z

    .line 559
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mConfiguration:Lcom/sonyericsson/android/socialphonebook/Configuration;

    .line 560
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mConfiguration:Lcom/sonyericsson/android/socialphonebook/Configuration;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isConferenceCallEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mIsConferenceCallEnabled:Z

    .line 562
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$CallPlusConnectorListener;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallPlusConnector:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    .line 563
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isEnrichedCallingSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 564
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallPlusConnector:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->connect()V

    .line 567
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 539
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 837
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 842
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$DialpadContainer;

    .line 843
    .local v0, "dialpadContainer":Lcom/sonyericsson/android/socialphonebook/DialpadFragment$DialpadContainer;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$DialpadContainer;->isDialpadShown()Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 844
    .end local v0    # "dialpadContainer":Lcom/sonyericsson/android/socialphonebook/DialpadFragment$DialpadContainer;
    :catch_0
    move-exception v1

    .line 847
    .local v1, "e":Ljava/lang/ClassCastException;
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Avtivity does not implement DialpadContainer."

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    throw v1

    .line 850
    .end local v1    # "e":Ljava/lang/ClassCastException;
    .restart local v0    # "dialpadContainer":Lcom/sonyericsson/android/socialphonebook/DialpadFragment$DialpadContainer;
    :cond_0
    const/high16 v2, 0x7f110000

    invoke-virtual {p2, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 851
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->initializeCustomMenuItems(Landroid/view/Menu;)V

    .line 852
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 836
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 575
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 576
    if-eqz p3, :cond_0

    .line 577
    const-string/jumbo v1, "listStatusItem"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mListState:Landroid/os/Parcelable;

    .line 578
    const-string/jumbo v1, "callLogEmptyItem"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogEmpty:Z

    .line 581
    :cond_0
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, p0}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$OnQueryCompleteListener;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    .line 582
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mConfiguration:Lcom/sonyericsson/android/socialphonebook/Configuration;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getBrandName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->setBrandName(Ljava/lang/String;)V

    .line 583
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mConfiguration:Lcom/sonyericsson/android/socialphonebook/Configuration;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getCollapseCallLogMatchingMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->setCallLogCollapsingMatchingMethod(Ljava/lang/String;)V

    .line 586
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCache:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    .line 588
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->getQueryCommandCreator(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mQueryCommandCreator:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;

    .line 589
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCache:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    .line 590
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mQueryCommandCreator:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;

    .line 589
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;-><init>(Landroid/app/Activity;Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    .line 591
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->setViltePlugin(Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;)V

    .line 592
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    invoke-virtual {v1, p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 593
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 594
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CallLogAdapter is initilized. mAdapter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const v1, 0x7f04001a

    invoke-virtual {p1, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mHeaderView:Landroid/view/View;

    .line 598
    const v1, 0x7f040019

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 599
    .local v0, "v":Landroid/view/View;
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 600
    return-object v0
.end method

.method public onDeleteConfirm(Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo;)V
    .locals 4
    .param p1, "deleteMode"    # Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;
    .param p2, "info"    # Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo;

    .prologue
    .line 2072
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 2073
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->-getcom_sonyericsson_android_socialphonebook_calllog_DeleteCallDialog$DeleteModeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2087
    :goto_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 2071
    return-void

    .line 2075
    :pswitch_0
    const/4 v0, 0x0

    .line 2076
    .local v0, "selection":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    if-eqz v1, :cond_0

    .line 2077
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->getFilteredSelection(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 2079
    .end local v0    # "selection":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->startDeleteFilterCallogThread(Ljava/lang/String;)V

    goto :goto_0

    .line 2082
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->deleteCallogItem(Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$CallLogInfo;)V

    goto :goto_0

    .line 2073
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 791
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 793
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 795
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mListView:Landroid/widget/ListView;

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mLockscreenReceiver:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$LockscreenReceiver;

    if-eqz v0, :cond_1

    .line 800
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mLockscreenReceiver:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$LockscreenReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 801
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mLockscreenReceiver:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$LockscreenReceiver;

    .line 804
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCache:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    if-eqz v0, :cond_2

    .line 806
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCache:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->stopRequestProcessing()V

    .line 807
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCache:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->destroy()V

    .line 810
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mSyncCallStatusManager:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    if-eqz v0, :cond_3

    .line 811
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mSyncCallStatusManager:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->unregisterContentObserver()V

    .line 812
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mSyncCallStatusManager:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->destroy()V

    .line 813
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mSyncCallStatusManager:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    .line 816
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    if-eqz v0, :cond_4

    .line 817
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->destroy()V

    .line 820
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    if-eqz v0, :cond_5

    .line 821
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->release()V

    .line 822
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    .line 825
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;->disconnect()V

    .line 827
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isEnrichedCallingSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 828
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallPlusConnector:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->disconnect()V

    .line 831
    :cond_6
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 832
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 790
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 782
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 783
    invoke-super {p0}, Landroid/app/ListFragment;->onDetach()V

    .line 784
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mOnUserLeaveAppController:Lcom/sonyericsson/android/socialphonebook/OnUserLeaveAppController;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/socialphonebook/OnUserLeaveAppController;->setOnUserLeaveAppObserver(Lcom/sonyericsson/android/socialphonebook/OnUserLeaveAppListener;)V

    .line 785
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mEmptyView:Landroid/view/View;

    .line 786
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 781
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 986
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 987
    const/4 v0, 0x1

    .line 988
    .local v0, "ret":Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1015
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 1018
    .end local v0    # "ret":Z
    :goto_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 1019
    return v0

    .line 990
    .restart local v0    # "ret":Z
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->startSocialPhonebookActivity()V

    goto :goto_0

    .line 993
    :pswitch_2
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->showDeleteCallLogDialog()V

    goto :goto_0

    .line 996
    :pswitch_3
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->showCallLogFilterDialog()V

    goto :goto_0

    .line 999
    :pswitch_4
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getCallSettingsIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1002
    :pswitch_5
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mDualSimIsEnabled:Z

    if-eqz v1, :cond_0

    .line 1003
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/AnsweringMachineSettingDialogFragment;->show(Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 1005
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/AnsweringMachineUtils;->getAnsweringMachineSettingsIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1009
    :pswitch_6
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->applyVoicemailFilter()V

    goto :goto_0

    .line 1012
    :pswitch_7
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mFeedbackSender:Lcom/sonyericsson/android/socialphonebook/util/FeedbackSender;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/util/FeedbackSender;->startFeedbackActivity()V

    goto :goto_0

    .line 988
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0235
        :pswitch_1
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 751
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 753
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mVoicemailFetcher:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;

    if-eqz v1, :cond_0

    .line 754
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mVoicemailFetcher:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->destroy()V

    .line 757
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 759
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivityResumed:Z

    .line 761
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 762
    .local v0, "sp":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mPreferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 764
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCache:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    if-eqz v1, :cond_1

    .line 765
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCache:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->setBackgroundFlag(Z)V

    .line 767
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCache:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->stopRequestProcessing()V

    .line 769
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActiveVoicemailItemView:Landroid/view/View;

    invoke-static {v1, v4}, Lcom/sonyericsson/android/socialphonebook/util/ScreenUtil;->keepScreenOn(Landroid/view/View;Z)V

    .line 771
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    invoke-interface {v1, p0}, Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;->removeListener(Lcom/sonyericsson/android/socialphonebook/vilte/VilteChangeListener;)V

    .line 773
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    if-eqz v1, :cond_2

    .line 774
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->setSyncCallStatusLoaderInterface(Lcom/sonyericsson/android/socialphonebook/addressbookplus/ISyncCallStatusLoad;)V

    .line 776
    :cond_2
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 777
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 750
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 907
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 908
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    if-nez v3, :cond_0

    .line 909
    return-void

    .line 912
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 916
    const v3, 0x7f0e0238

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 917
    .local v1, "menuItem":Landroid/view/MenuItem;
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    if-eqz v3, :cond_1

    .line 918
    iget-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mOrangeVvmExistsAndIsConfigured:Z

    if-eqz v3, :cond_8

    .line 919
    iget-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mContainsVoicemail:Z

    .line 918
    if-eqz v3, :cond_8

    .line 920
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v6}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->isVoicemailFilterOnly(Landroid/content/Context;)Z

    move-result v2

    .line 921
    :goto_0
    if-eqz v2, :cond_9

    move v3, v4

    :goto_1
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 926
    :cond_1
    const v3, 0x7f0e0237

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 927
    if-eqz v1, :cond_2

    .line 928
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_a

    move v3, v5

    :goto_2
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 931
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    if-eqz v3, :cond_e

    .line 932
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v6}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->isVoicemailFilterOnly(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 933
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v6}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->isShowAllCallsFilter(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 934
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->getCount()I

    move-result v3

    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->getVoicemailCount()I

    move-result v6

    if-ne v3, v6, :cond_c

    const/4 v0, 0x1

    .line 936
    .local v0, "isVoicemailCallLogOnly":Z
    :goto_3
    if-eqz v0, :cond_f

    .line 937
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 944
    .end local v0    # "isVoicemailCallLogOnly":Z
    :cond_2
    :goto_4
    const v3, 0x7f0e023a

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 945
    if-eqz v1, :cond_3

    .line 946
    iget-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAnsweringMachineSupported:Z

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 950
    :cond_3
    const v3, 0x7f0e0236

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 951
    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    if-eqz v3, :cond_4

    .line 952
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v5}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->isVoicemailFilterOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 953
    const v3, 0x7f090387

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 957
    :goto_5
    iget-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mContainsVoicemail:Z

    if-eqz v3, :cond_11

    iget-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mOrangeVvmExistsAndIsConfigured:Z

    :goto_6
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 960
    :cond_4
    const v3, 0x7f0e023c

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 961
    if-eqz v1, :cond_5

    .line 962
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mFeedbackSender:Lcom/sonyericsson/android/socialphonebook/util/FeedbackSender;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/util/FeedbackSender;->canSendFeedback()Z

    move-result v3

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 965
    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_6

    .line 966
    const v3, 0x7f0e0239

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 967
    if-eqz v1, :cond_6

    .line 968
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 972
    :cond_6
    iget-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mIsConferenceCallEnabled:Z

    if-eqz v3, :cond_7

    .line 973
    const v3, 0x7f0e0234

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 974
    if-eqz v1, :cond_7

    .line 975
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mConferenceHelper:Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper;->isConferenceCallPossible()Z

    move-result v3

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 979
    :cond_7
    const v3, 0x7f0e023b

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 980
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    const v4, 0x7f090056

    invoke-static {v3, v1, v4}, Lcom/android/contacts/util/HelpUtils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;I)Z

    .line 981
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 906
    return-void

    .line 918
    :cond_8
    const/4 v2, 0x0

    .local v2, "shouldHideItem":Z
    goto/16 :goto_0

    .end local v2    # "shouldHideItem":Z
    :cond_9
    move v3, v5

    .line 921
    goto/16 :goto_1

    :cond_a
    move v3, v4

    .line 928
    goto/16 :goto_2

    .line 932
    :cond_b
    const/4 v0, 0x1

    .restart local v0    # "isVoicemailCallLogOnly":Z
    goto/16 :goto_3

    .line 934
    .end local v0    # "isVoicemailCallLogOnly":Z
    :cond_c
    const/4 v0, 0x0

    .restart local v0    # "isVoicemailCallLogOnly":Z
    goto/16 :goto_3

    .line 933
    .end local v0    # "isVoicemailCallLogOnly":Z
    :cond_d
    const/4 v0, 0x0

    .restart local v0    # "isVoicemailCallLogOnly":Z
    goto/16 :goto_3

    .line 931
    .end local v0    # "isVoicemailCallLogOnly":Z
    :cond_e
    const/4 v0, 0x0

    .restart local v0    # "isVoicemailCallLogOnly":Z
    goto/16 :goto_3

    .line 939
    :cond_f
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 955
    .end local v0    # "isVoicemailCallLogOnly":Z
    :cond_10
    const v3, 0x7f090095

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_5

    :cond_11
    move v3, v4

    .line 957
    goto :goto_6
.end method

.method public onQueryComplete(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 2003
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 2004
    .local v1, "position":I
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 2005
    .local v0, "phoneNumbers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 2006
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2007
    const-string/jumbo v2, "number"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2009
    :cond_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2011
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    new-instance v3, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$8;

    invoke-direct {v3, p0, v0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$8;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;Ljava/util/Set;Landroid/database/Cursor;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2058
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 2002
    return-void
.end method

.method public onRcsRequestHandled(IZLandroid/os/Bundle;)V
    .locals 2
    .param p1, "requestType"    # I
    .param p2, "isSuccess"    # Z
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    .line 2106
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 2107
    if-eqz p2, :cond_0

    const/16 v0, 0x7d2

    if-ne p1, v0, :cond_0

    .line 2108
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$9;

    invoke-direct {v1, p0, p3}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$9;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2118
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 2105
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 668
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 669
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 671
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivityResumed:Z

    .line 674
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mLockscreenReceiver:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$LockscreenReceiver;

    if-nez v2, :cond_0

    .line 675
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$LockscreenReceiver;

    invoke-direct {v2, p0, v4}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$LockscreenReceiver;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$LockscreenReceiver;)V

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mLockscreenReceiver:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$LockscreenReceiver;

    .line 676
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.sonyericsson.lockscreen.action.ACTIVATE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 677
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 679
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 681
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mLockscreenReceiver:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$LockscreenReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 686
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCache:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    if-eqz v2, :cond_1

    .line 687
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCache:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->clearCache()V

    .line 688
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCache:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    invoke-virtual {v2, v5}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->setBackgroundFlag(Z)V

    .line 691
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    if-eqz v2, :cond_2

    .line 693
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    iput-object v4, v2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 694
    iput-boolean v5, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mInteractivityDisabled:Z

    .line 695
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->startAsyncRequery()V

    .line 698
    :cond_2
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mIsScreenLocked:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mIsUserVisible:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->isLockScreenInRestrictedInputMode()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 702
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 704
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 705
    .local v1, "sp":Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mPreferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 709
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mTabStateController:Lcom/sonyericsson/android/socialphonebook/TabStateController;

    if-eqz v2, :cond_4

    .line 710
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mTabStateController:Lcom/sonyericsson/android/socialphonebook/TabStateController;

    invoke-interface {v2}, Lcom/sonyericsson/android/socialphonebook/TabStateController;->getSelectedTab()Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->CALLLOG:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    if-eq v2, v3, :cond_4

    .line 711
    const-string/jumbo v2, "tag_call_log_filter_dialog"

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->dismissFragmentDialog(Ljava/lang/String;)V

    .line 712
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog;->TAG:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->dismissFragmentDialog(Ljava/lang/String;)V

    .line 715
    :cond_4
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    invoke-interface {v2}, Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;->isVilteSupported()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mIsVilteSupported:Z

    .line 716
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mIsSmsCapable:Z

    .line 719
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mVoicemailPlayer:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->getVoicemailMessageStatus()Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCurrentVoicemailMessageStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    .line 720
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mVoicemailPlayer:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;

    invoke-virtual {v2, p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->setVoicemailStatusChangeListener(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$OnVoicemailStatusChangeListener;)V

    .line 721
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCurrentVoicemailMessageStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    if-eqz v2, :cond_5

    .line 722
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCurrentVoicemailMessageStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;->getPlayerStatus()Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->setVoicemailStatus(Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;)V

    .line 723
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    if-eqz v2, :cond_5

    .line 724
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCurrentVoicemailMessageStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->setVoicemailMessageStatus(Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;)V

    .line 728
    :cond_5
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    invoke-interface {v2, p0}, Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;->addListener(Lcom/sonyericsson/android/socialphonebook/vilte/VilteChangeListener;)V

    .line 730
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil;->isKddiAddressBookFeatureEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 731
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mSyncCallStatusManager:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    if-nez v2, :cond_9

    .line 732
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;-><init>(Landroid/content/Context;Landroid/widget/BaseAdapter;)V

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mSyncCallStatusManager:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    .line 733
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mSyncCallStatusManager:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->registerContentObserver()V

    .line 734
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    if-eqz v2, :cond_6

    .line 735
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mSyncCallStatusManager:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->setSyncCallStatusLoaderInterface(Lcom/sonyericsson/android/socialphonebook/addressbookplus/ISyncCallStatusLoad;)V

    .line 737
    :cond_6
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mSyncCallStatusManager:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->updateSyncCallSettingsStatusFlag(Landroid/content/Context;)V

    .line 738
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mSyncCallStatusManager:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->performCachingForSyncContact(Landroid/widget/BaseAdapter;)V

    .line 746
    :cond_7
    :goto_1
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 667
    return-void

    .line 699
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_8
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->clearNotifications()V

    goto/16 :goto_0

    .line 740
    .restart local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_9
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mSyncCallStatusManager:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->updateSyncCallSettingsStatusFlag(Landroid/content/Context;)V

    .line 741
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    if-eqz v2, :cond_7

    .line 742
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mSyncCallStatusManager:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->setSyncCallStatusLoaderInterface(Lcom/sonyericsson/android/socialphonebook/addressbookplus/ISyncCallStatusLoad;)V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 503
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mListState:Landroid/os/Parcelable;

    .line 505
    const-string/jumbo v0, "listStatusItem"

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mListState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 506
    const-string/jumbo v0, "callLogEmptyItem"

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogEmpty:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 507
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSaveInstanceState mCallLogEmpty="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogEmpty:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 509
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 502
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 638
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 639
    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    .line 641
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->registerPhoneStateListener()V

    .line 644
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mVoiceMailStatusTask:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader;

    .line 645
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mVoiceMailStatusTask:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 646
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mQueryCommandCreator:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->registerExtendedCallLogObserver(Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;)V

    .line 647
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 637
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 652
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 653
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->unregisterPhoneStateListener()V

    .line 654
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mVoiceMailStatusTask:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mVoiceMailStatusTask:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 656
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mVoiceMailStatusTask:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader;->cancel(Z)Z

    .line 659
    :cond_0
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mVoiceMailStatusTask:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader;

    .line 660
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mVoicemailPlayer:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->setVoicemailStatusChangeListener(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$OnVoicemailStatusChangeListener;)V

    .line 661
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->unregisterExtendedCallLogObserver()V

    .line 662
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 663
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 651
    return-void
.end method

.method public onTabChanged(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;Z)V
    .locals 2
    .param p1, "tab"    # Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;
    .param p2, "selected"    # Z

    .prologue
    .line 1903
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 1904
    if-eqz p2, :cond_0

    .line 1905
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->clearNotifications()V

    .line 1907
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCurrentVoicemailMessageStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    if-eqz v0, :cond_1

    .line 1908
    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCurrentVoicemailMessageStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;->getPlayerStatus()Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;

    move-result-object v0

    .line 1909
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;->PLAY:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;

    .line 1908
    if-ne v0, v1, :cond_2

    .line 1910
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mVoicemailPlayer:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->pauseVoicemailIfPlaying()V

    .line 1921
    :cond_1
    :goto_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 1902
    return-void

    .line 1911
    :cond_2
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCurrentVoicemailMessageStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;->getPlayerStatus()Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;

    move-result-object v0

    .line 1912
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;->PAUSE:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;

    .line 1911
    if-ne v0, v1, :cond_1

    .line 1916
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    if-eqz v0, :cond_1

    .line 1917
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onUserLeaveAppHint()V
    .locals 1

    .prologue
    .line 1996
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 1997
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mVoicemailPlayer:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->pauseVoicemailIfPlaying()V

    .line 1998
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 1995
    return-void
.end method

.method public onVideoCallEntityChange()V
    .locals 1

    .prologue
    .line 2099
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 2100
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->notifyDataSetChanged()V

    .line 2101
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 2098
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 605
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 606
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 607
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 608
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mHeaderView:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 610
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mIsUserVisible:Z

    .line 611
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 604
    return-void
.end method

.method public onVoicemailCompleted()V
    .locals 2

    .prologue
    .line 1978
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 1979
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;->STOP:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->setVoicemailStatus(Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;)V

    .line 1980
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    if-eqz v0, :cond_0

    .line 1981
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCurrentVoicemailMessageStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->setVoicemailMessageStatus(Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;)V

    .line 1982
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->notifyDataSetChanged()V

    .line 1984
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 1977
    return-void
.end method

.method public onVoicemailPaused()V
    .locals 2

    .prologue
    .line 1967
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 1968
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;->PAUSE:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->setVoicemailStatus(Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;)V

    .line 1969
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    if-eqz v0, :cond_0

    .line 1970
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCurrentVoicemailMessageStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->setVoicemailMessageStatus(Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;)V

    .line 1971
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->notifyDataSetChanged()V

    .line 1973
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 1966
    return-void
.end method

.method public onVoicemailStarted()V
    .locals 2

    .prologue
    .line 1956
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 1957
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;->PLAY:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->setVoicemailStatus(Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;)V

    .line 1958
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    if-eqz v0, :cond_0

    .line 1959
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mCurrentVoicemailMessageStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->setVoicemailMessageStatus(Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;)V

    .line 1960
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->notifyDataSetChanged()V

    .line 1962
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 1955
    return-void
.end method

.method setMockConferenceCallhelper(Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper;)V
    .locals 0
    .param p1, "mock"    # Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper;
    .annotation build Lcom/sonyericsson/android/socialphonebook/legacy/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 2123
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mConferenceHelper:Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper;

    .line 2122
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1
    .param p1, "userVisible"    # Z

    .prologue
    .line 894
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 895
    invoke-super {p0, p1}, Landroid/app/ListFragment;->setUserVisibleHint(Z)V

    .line 896
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mIsUserVisible:Z

    if-eq v0, p1, :cond_0

    .line 897
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mIsUserVisible:Z

    .line 898
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->mActivityResumed:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->isLockScreenInRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 902
    :cond_0
    :goto_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 893
    return-void

    .line 899
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->clearNotifications()V

    goto :goto_0
.end method
