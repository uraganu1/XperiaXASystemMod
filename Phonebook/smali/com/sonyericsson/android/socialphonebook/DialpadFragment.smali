.class public Lcom/sonyericsson/android/socialphonebook/DialpadFragment;
.super Landroid/app/Fragment;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler$WiFiCallingListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$OnTextChangeListener;
.implements Lcom/sonyericsson/android/socialphonebook/activities/listeners/OnNewIntentListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/sonyericsson/android/socialphonebook/util/SimStateChangedListener;
.implements Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog$SelectSimListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/DialpadFragment$FloatingActionButtonAnimationCallback;,
        Lcom/sonyericsson/android/socialphonebook/DialpadFragment$CallStateListener;,
        Lcom/sonyericsson/android/socialphonebook/DialpadFragment$OnCallFinishedListener;,
        Lcom/sonyericsson/android/socialphonebook/DialpadFragment$DialpadContainer;,
        Lcom/sonyericsson/android/socialphonebook/DialpadFragment$1;,
        Lcom/sonyericsson/android/socialphonebook/DialpadFragment$2;,
        Lcom/sonyericsson/android/socialphonebook/DialpadFragment$3;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_android_socialphonebook_vilte_EntityVisibilitySwitchesValues:[I = null

.field private static final EMPTY_NUMBER:Ljava/lang/String; = ""

.field private static final EXTRA_SEND_EMPTY_FLASH:Ljava/lang/String; = "com.android.phone.extra.SEND_EMPTY_FLASH"

.field private static final FAB_SCALE_IN_OUT_DURATION:I = 0x12c

.field private static final KEY_DIGITS_FILLED_BY_INTENT:Ljava/lang/String; = "key_digits_filled_by_intent"

.field private static final KEY_IS_VIDEO_BUTTON_SHOWN:Ljava/lang/String; = "isVideoButtonShown"

.field private static final LOADER_LAST_DIALED_NUMBER:I = 0x1

.field private static final LOADER_SPEED_DIAL:I = 0x2

.field private static final PHONE_ACCOUNT_HANDLE_COMPONENT_NAME:Landroid/content/ComponentName;

.field private static final PSTN_CALL_SERVICE_CLASS_NAME:Ljava/lang/String; = "com.android.services.telephony.TelephonyConnectionService"

.field private static final REQUEST_CODE_SIM_PICKER_DIALOG:I = 0x0

.field private static final SPEED_DIAL_VOICEMAIL_POSITION:Ljava/lang/String; = "1"

.field private static final SUB_ACTIVITY_CALL_SCREEN:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final TELEPHONY_PACKAGE_NAME:Ljava/lang/String; = "com.android.phone"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mActivityResumed:Z

.field private mCallButton:Lcom/sonymobile/fab/FloatingActionButton;

.field private mCallButtonContainer:Landroid/view/ViewGroup;

.field private mCallButtonRegularCall:Lcom/sonymobile/fab/FloatingActionButton;

.field private mCallButtonVideoCall:Lcom/sonymobile/fab/FloatingActionButton;

.field private mDialpadFragmentView:Landroid/view/View;

.field private mDialpadKeyEvent:Landroid/view/KeyEvent;

.field private mDigitsFilledByExternalIntent:Z

.field private mDualSimStateChecker:Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;

.field private mEnableTogglingOfSmartSearch:Z

.field private mEntityVisibility:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

.field private mFloatingActionButtonAnimationCallback:Lcom/sonyericsson/android/socialphonebook/DialpadFragment$FloatingActionButtonAnimationCallback;

.field private mHandler:Landroid/os/Handler;

.field private mIsCallIntentSent:Z

.field private mIsCallingAllowed:Z

.field private mIsDualPane:Z

.field private mIsMultiSimEnabled:Z

.field private mIsPortraitMode:Z

.field private mIsSmsAllowed:Z

.field private mIsSmsCapable:Z

.field private mIsSpeedDialEnabled:Z

.field private mIsVideoButtonShown:Z

.field private final mLastDialedNumberListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mLastNumberDialed:Ljava/lang/String;

.field private mMenuPlugin:Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;

.field private mOnCallFinishedListener:Lcom/sonyericsson/android/socialphonebook/DialpadFragment$OnCallFinishedListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

.field private mResolveIntent:Z

.field private mShouldShowVideoButton:Z

.field private mSmartSearchFragment:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

.field private mSpeedDialMaxCount:I

.field private final mSpeedDialNumberListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mSpeedDialNumbers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mToolbar:Landroid/widget/Toolbar;

.field private mTwelveKeyFragment:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

.field private mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

.field private mWiFiCallingHandler:Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;

.field private mWifiCallingNotification:Landroid/app/Notification;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivityResumed:Z

    return v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;)Lcom/sonymobile/fab/FloatingActionButton;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mCallButton:Lcom/sonymobile/fab/FloatingActionButton;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;)Lcom/sonymobile/fab/FloatingActionButton;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mCallButtonRegularCall:Lcom/sonymobile/fab/FloatingActionButton;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;)Lcom/sonymobile/fab/FloatingActionButton;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mCallButtonVideoCall:Lcom/sonymobile/fab/FloatingActionButton;

    return-object v0
.end method

.method static synthetic -get6(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsVideoButtonShown:Z

    return v0
.end method

.method static synthetic -get7(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;)Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    return-object v0
.end method

.method static synthetic -get8(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mSpeedDialNumbers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get9(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;)Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mTwelveKeyFragment:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    return-object v0
.end method

.method private static synthetic -getcom_sonyericsson_android_socialphonebook_vilte_EntityVisibilitySwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->-com_sonyericsson_android_socialphonebook_vilte_EntityVisibilitySwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->-com_sonyericsson_android_socialphonebook_vilte_EntityVisibilitySwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->values()[Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->DISABLED:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->HIDDEN:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->LIMITED:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->NORMAL:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->-com_sonyericsson_android_socialphonebook_vilte_EntityVisibilitySwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->isUsable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->initCallButton()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->initFabCallButton()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->toggleDialpadState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 113
    const-class v0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->TAG:Ljava/lang/String;

    .line 120
    new-instance v0, Landroid/content/ComponentName;

    .line 121
    const-string/jumbo v1, "com.android.phone"

    const-string/jumbo v2, "com.android.services.telephony.TelephonyConnectionService"

    .line 120
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->PHONE_ACCOUNT_HANDLE_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 109
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 153
    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsVideoButtonShown:Z

    .line 156
    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mShouldShowVideoButton:Z

    .line 181
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mWifiCallingNotification:Landroid/app/Notification;

    .line 184
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mWiFiCallingHandler:Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;

    .line 186
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    .line 194
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mHandler:Landroid/os/Handler;

    .line 205
    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsCallIntentSent:Z

    .line 207
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mDialpadKeyEvent:Landroid/view/KeyEvent;

    .line 271
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$FloatingActionButtonAnimationCallback;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$FloatingActionButtonAnimationCallback;-><init>(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;Lcom/sonyericsson/android/socialphonebook/DialpadFragment$FloatingActionButtonAnimationCallback;)V

    .line 270
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mFloatingActionButtonAnimationCallback:Lcom/sonyericsson/android/socialphonebook/DialpadFragment$FloatingActionButtonAnimationCallback;

    .line 548
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$1;-><init>(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 563
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$2;-><init>(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;)V

    .line 562
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mSpeedDialNumberListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 598
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$3;-><init>(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;)V

    .line 597
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mLastDialedNumberListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 109
    return-void
.end method

.method private callNumberForResult(Ljava/lang/String;ZLjava/lang/String;I)Z
    .locals 10
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "isContact"    # Z
    .param p3, "callOriginInCallLog"    # Ljava/lang/String;
    .param p4, "slotId"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 739
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsCallIntentSent:Z

    if-eqz v0, :cond_0

    .line 740
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Call intent is sent."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    return v8

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isCallingInPinnedModeAndNotify(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 743
    return v8

    .line 746
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 747
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Illegal arguments."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    return v8

    .line 750
    :cond_2
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->getInstance()Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    move-result-object v0

    .line 751
    const v1, 0x7f0901cd

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 752
    const v2, 0x7f0901dd

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 753
    const-wide/16 v4, 0x0

    move-object v3, p3

    .line 750
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 754
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getCallIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v6

    .line 756
    .local v6, "callIntent":Landroid/content/Intent;
    const-string/jumbo v0, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    .line 757
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p4}, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->getPhoneAccountHandle(Landroid/content/Context;I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    .line 756
    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 758
    invoke-virtual {p0, v6, v9}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 760
    iput-boolean v9, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsCallIntentSent:Z

    .line 762
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    if-eqz v0, :cond_3

    .line 764
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 763
    invoke-static {p1, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 765
    .local v7, "formattedNumber":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;->connect()V

    .line 766
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    new-array v1, v9, [Ljava/lang/String;

    aput-object v7, v1, v8

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;->requestCapabilitiesRefresh([Ljava/lang/String;)V

    .line 767
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mRcsConnector.requestCapabilitiesRefresh(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 768
    const-string/jumbo v2, "\") called"

    .line 767
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    .end local v7    # "formattedNumber":Ljava/lang/String;
    :cond_3
    return v9
.end method

.method private callVoicemailForResult(I)V
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 775
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->callVoicemailForResult(ILjava/lang/String;)V

    .line 774
    return-void
.end method

.method private callVoicemailForResult(ILjava/lang/String;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 779
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsCallingAllowed:Z

    if-eqz v1, :cond_0

    .line 780
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isCallingInPinnedModeAndNotify(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 778
    :cond_0
    :goto_0
    return-void

    .line 781
    :cond_1
    invoke-static {p2}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getVoicemailCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 782
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    .line 783
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2, p1}, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->getPhoneAccountHandle(Landroid/content/Context;I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    .line 782
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 784
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private clearListener(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 533
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mCallButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 534
    .local v0, "callButton":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 535
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 532
    :cond_0
    return-void
.end method

.method private clearVideoButtonsListeners()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 540
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mCallButtonRegularCall:Lcom/sonymobile/fab/FloatingActionButton;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mCallButtonRegularCall:Lcom/sonymobile/fab/FloatingActionButton;

    invoke-virtual {v0, v1}, Lcom/sonymobile/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mCallButtonVideoCall:Lcom/sonymobile/fab/FloatingActionButton;

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mCallButtonVideoCall:Lcom/sonymobile/fab/FloatingActionButton;

    invoke-virtual {v0, v1}, Lcom/sonymobile/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 539
    :cond_1
    return-void
.end method

.method private getOperatorName(I)Ljava/lang/String;
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    .line 1029
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v5, p1}, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->getPhoneAccountHandle(Landroid/content/Context;I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    .line 1030
    .local v1, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    .line 1031
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v6

    .line 1030
    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v3

    .line 1033
    .local v3, "subId":I
    const-string/jumbo v0, ""

    .line 1035
    .local v0, "displayName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 1037
    .local v2, "sub":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_0

    .line 1038
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1041
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1042
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    .line 1043
    const-string/jumbo v6, "phone"

    .line 1042
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 1044
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    .line 1045
    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v0

    .line 1046
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1047
    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v0

    .line 1051
    .end local v4    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    return-object v0
.end method

.method private handleSpeedDialAction(Ljava/lang/String;I)V
    .locals 4
    .param p1, "speedDialNumber"    # Ljava/lang/String;
    .param p2, "sub"    # I

    .prologue
    .line 720
    const-string/jumbo v2, "1"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 721
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->callVoicemailForResult(I)V

    .line 722
    return-void

    .line 725
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mSpeedDialNumbers:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 726
    .local v0, "number":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 727
    const v2, 0x7f0901e9

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3, v2, p2}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->callNumberForResult(Ljava/lang/String;ZLjava/lang/String;I)Z

    .line 718
    :goto_0
    return-void

    .line 729
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 730
    const-class v3, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialActivity;

    .line 729
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 731
    .local v1, "speedDialIntent":Landroid/content/Intent;
    const-string/jumbo v2, "speedDialNumber"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 733
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private initButton(Landroid/view/View;II)V
    .locals 4
    .param p1, "buttonContainer"    # Landroid/view/View;
    .param p2, "resId"    # I
    .param p3, "slotId"    # I

    .prologue
    .line 1012
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1013
    .local v0, "callButton":Landroid/view/View;
    const v2, 0x7f0e012e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1014
    if-nez p3, :cond_2

    .line 1015
    const v2, 0x7f020022

    .line 1013
    :goto_0
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1017
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->getOperatorName(I)Ljava/lang/String;

    move-result-object v1

    .line 1018
    .local v1, "displayName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1019
    const v2, 0x7f0e012f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/dialpad/DualSimTextView;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/socialphonebook/dialpad/DualSimTextView;->setText(Ljava/lang/String;)V

    .line 1023
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1024
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1011
    :cond_1
    return-void

    .line 1015
    .end local v1    # "displayName":Ljava/lang/String;
    :cond_2
    const v2, 0x7f020023

    goto :goto_0
.end method

.method private initCallButton()V
    .locals 1

    .prologue
    .line 1055
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 1058
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mDialpadFragmentView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1059
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 1060
    return-void

    .line 1062
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->hideAllCallingButtons()V

    .line 1063
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsMultiSimEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->phoneIsIdle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1064
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mDualSimStateChecker:Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;->bothSimsAreEnabled()Z

    move-result v0

    .line 1063
    if-eqz v0, :cond_2

    .line 1065
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->initDualSimCallButtons()V

    .line 1071
    :goto_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 1054
    return-void

    .line 1066
    :cond_2
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsVideoButtonShown:Z

    if-eqz v0, :cond_3

    .line 1067
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->initVideoCallButtonItems()V

    goto :goto_0

    .line 1069
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->initFabCallButton()V

    goto :goto_0
.end method

.method private initDualSimCallButtons()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1155
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1156
    return-void

    .line 1158
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mDialpadFragmentView:Landroid/view/View;

    const v2, 0x7f0e0120

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1159
    .local v0, "dualCallView":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1160
    const v1, 0x7f0e0130

    invoke-direct {p0, v0, v1, v3}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->initButton(Landroid/view/View;II)V

    .line 1161
    const v1, 0x7f0e0131

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->initButton(Landroid/view/View;II)V

    .line 1154
    return-void
.end method

.method private initFabCallButton()V
    .locals 4

    .prologue
    .line 1075
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1076
    return-void

    .line 1078
    :cond_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 1079
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mDialpadFragmentView:Landroid/view/View;

    const v2, 0x7f0e011f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1080
    .local v0, "fabCallView":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1081
    check-cast v0, Lcom/sonymobile/fab/FloatingActionButton;

    .end local v0    # "fabCallView":Landroid/view/View;
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mCallButton:Lcom/sonymobile/fab/FloatingActionButton;

    .line 1082
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->setCallButtonIcon()V

    .line 1083
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mCallButton:Lcom/sonymobile/fab/FloatingActionButton;

    invoke-virtual {v1, p0}, Lcom/sonymobile/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1084
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mCallButton:Lcom/sonymobile/fab/FloatingActionButton;

    .line 1085
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901ac

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1084
    invoke-virtual {v1, v2}, Lcom/sonymobile/fab/FloatingActionButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1086
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 1074
    return-void
.end method

.method private isCalledFromHistory()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 797
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 798
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isEditTextEmpty()Z
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mTwelveKeyFragment:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->isEditTextEmpty()Z

    move-result v0

    return v0
.end method

.method private isSpeedDialNumber(Ljava/lang/String;)Z
    .locals 5
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 839
    const-string/jumbo v2, "0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 840
    return v3

    .line 842
    :cond_0
    const/4 v1, 0x0

    .line 844
    .local v1, "parsedNumber":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 849
    if-lt v1, v4, :cond_1

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mSpeedDialMaxCount:I

    if-le v1, v2, :cond_2

    .line 850
    :cond_1
    return v3

    .line 845
    :catch_0
    move-exception v0

    .line 846
    .local v0, "e":Ljava/lang/NumberFormatException;
    return v3

    .line 852
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    return v4
.end method

.method private static isSpeedDialSettingEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 827
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isSpeedDialEnabled()Z

    move-result v0

    return v0
.end method

.method private isUsable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 946
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->isVoiceMailNumberOrUri(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 947
    invoke-static {p2}, Lcom/sonyericsson/android/socialphonebook/util/StringUtil;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    .line 946
    if-eqz v0, :cond_1

    .line 948
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 950
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private newFlashIntent(I)Landroid/content/Intent;
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 820
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getCallIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 821
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2, p1}, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->getPhoneAccountHandle(Landroid/content/Context;I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 822
    const-string/jumbo v1, "com.android.phone.extra.SEND_EMPTY_FLASH"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 823
    return-object v0
.end method

.method private onCallFinished()V
    .locals 1

    .prologue
    .line 930
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsCallIntentSent:Z

    .line 934
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mDigitsFilledByExternalIntent:Z

    if-eqz v0, :cond_0

    .line 935
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 936
    return-void

    .line 939
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mTwelveKeyFragment:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->clearEditText()V

    .line 940
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mOnCallFinishedListener:Lcom/sonyericsson/android/socialphonebook/DialpadFragment$OnCallFinishedListener;

    if-eqz v0, :cond_1

    .line 941
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mOnCallFinishedListener:Lcom/sonyericsson/android/socialphonebook/DialpadFragment$OnCallFinishedListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$OnCallFinishedListener;->onCallFinished()V

    .line 928
    :cond_1
    return-void
.end method

.method private phoneIsCdma(I)Z
    .locals 2
    .param p1, "sub"    # I

    .prologue
    .line 816
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->getPhoneType(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private phoneIsOffhook(I)Z
    .locals 2
    .param p1, "sub"    # I

    .prologue
    .line 807
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->getCallState(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private placeCall()V
    .locals 2

    .prologue
    .line 678
    const/4 v0, -0x1

    .line 679
    .local v0, "sub":I
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsMultiSimEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mDualSimStateChecker:Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;

    invoke-interface {v1}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;->bothSimsAreEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 682
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->placeCallBySub(I)V

    .line 677
    return-void

    .line 680
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mDualSimStateChecker:Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;

    invoke-interface {v1}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;->getOnlyEnabledSim()I

    move-result v0

    goto :goto_0
.end method

.method private placeCallBySub(I)V
    .locals 7
    .param p1, "sub"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 686
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->getEditText()Ljava/lang/String;

    move-result-object v1

    .line 687
    .local v1, "number":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-ne p1, v6, :cond_2

    .line 689
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->handleMmiEntry(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 690
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    .line 691
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0e00ee

    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    .line 690
    invoke-static {v3, v1, v2, p1}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->handleAdnEntry(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;I)Z

    move-result v2

    .line 689
    if-eqz v2, :cond_2

    .line 692
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mTwelveKeyFragment:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->clearEditText()V

    .line 693
    return-void

    .line 697
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->isEditTextEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 698
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->phoneIsCdma(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->phoneIsOffhook(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 702
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->newFlashIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 703
    .local v0, "cdmaIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v6}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 685
    .end local v0    # "cdmaIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 706
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mTwelveKeyFragment:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->setEditText(Ljava/lang/String;)Z

    goto :goto_0

    .line 709
    :cond_4
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsSpeedDialEnabled:Z

    if-eqz v2, :cond_5

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->isSpeedDialNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->phoneIsOffhook(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 713
    :cond_5
    const v2, 0x7f0901e8

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 712
    invoke-direct {p0, v1, v5, v2, p1}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->callNumberForResult(Ljava/lang/String;ZLjava/lang/String;I)Z

    goto :goto_0

    .line 710
    :cond_6
    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->handleSpeedDialAction(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private registerPhoneStateListener()V
    .locals 3

    .prologue
    .line 1185
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsMultiSimEnabled:Z

    if-nez v1, :cond_0

    .line 1186
    return-void

    .line 1188
    :cond_0
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$CallStateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$CallStateListener;-><init>(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;Lcom/sonyericsson/android/socialphonebook/DialpadFragment$CallStateListener;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1190
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    .line 1191
    const-string/jumbo v2, "phone"

    .line 1190
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1192
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1184
    return-void
.end method

.method private registerSimChangedReceiver()V
    .locals 1

    .prologue
    .line 1165
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsMultiSimEnabled:Z

    if-eqz v0, :cond_0

    .line 1166
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mDualSimStateChecker:Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;->registerListener(Lcom/sonyericsson/android/socialphonebook/util/SimStateChangedListener;)V

    .line 1164
    :cond_0
    return-void
.end method

.method private resolveNumberFromIntent()Z
    .locals 15

    .prologue
    .line 856
    const/4 v11, 0x0

    .line 858
    .local v11, "ignoreState":Z
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 859
    .local v12, "intent":Landroid/content/Intent;
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "==> resolveIntent(): intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 863
    .local v7, "action":Ljava/lang/String;
    const-string/jumbo v0, "android.intent.action.DIAL"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "android.intent.action.VIEW"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 864
    :cond_0
    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 865
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 866
    return v11

    .line 869
    :cond_1
    invoke-virtual {v12}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v14

    .line 870
    .local v14, "type":Ljava/lang/String;
    const-string/jumbo v0, "tel"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 872
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v9

    .line 876
    .local v9, "data":Ljava/lang/String;
    const-string/jumbo v0, "internal_intent"

    const/4 v2, 0x0

    .line 875
    invoke-virtual {v12, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mDigitsFilledByExternalIntent:Z

    .line 881
    const-string/jumbo v6, "*31"

    .line 882
    .local v6, "JAPAN_CLIR_PREFIX":Ljava/lang/String;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "*31"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 884
    :cond_2
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "tel"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 888
    .local v13, "strNumber":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_7

    .line 889
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mTwelveKeyFragment:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->setEditText(Ljava/lang/String;)Z

    .line 922
    .end local v6    # "JAPAN_CLIR_PREFIX":Ljava/lang/String;
    .end local v9    # "data":Ljava/lang/String;
    .end local v13    # "strNumber":Ljava/lang/String;
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mTwelveKeyFragment:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->focusEditText()V

    .line 925
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v14    # "type":Ljava/lang/String;
    :cond_5
    return v11

    .line 875
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v9    # "data":Ljava/lang/String;
    .restart local v14    # "type":Ljava/lang/String;
    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    .line 891
    .restart local v6    # "JAPAN_CLIR_PREFIX":Ljava/lang/String;
    .restart local v13    # "strNumber":Ljava/lang/String;
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mTwelveKeyFragment:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    invoke-virtual {v0, v13}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->setEditText(Ljava/lang/String;)Z

    goto :goto_1

    .line 894
    .end local v13    # "strNumber":Ljava/lang/String;
    :cond_8
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mTwelveKeyFragment:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    invoke-virtual {v0, v9}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->setEditText(Ljava/lang/String;)Z

    goto :goto_1

    .line 896
    .end local v6    # "JAPAN_CLIR_PREFIX":Ljava/lang/String;
    .end local v9    # "data":Ljava/lang/String;
    :cond_9
    const-string/jumbo v0, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 897
    const-string/jumbo v0, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 896
    if-eqz v0, :cond_4

    .line 898
    :cond_a
    const/4 v8, 0x0

    .line 901
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 902
    const-string/jumbo v3, "data1"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 903
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 901
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 904
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_b

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 907
    const-string/jumbo v0, "internal_intent"

    const/4 v2, 0x0

    .line 906
    invoke-virtual {v12, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mDigitsFilledByExternalIntent:Z

    .line 910
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mTwelveKeyFragment:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->setEditText(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 915
    :cond_b
    if-eqz v8, :cond_4

    .line 916
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 917
    .end local v8    # "c":Landroid/database/Cursor;
    :goto_3
    const/4 v8, 0x0

    .local v8, "c":Landroid/database/Cursor;
    goto :goto_1

    .line 906
    .local v8, "c":Landroid/database/Cursor;
    :cond_c
    const/4 v0, 0x1

    goto :goto_2

    .line 912
    .end local v8    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 913
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "query phone number failed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 915
    if-eqz v8, :cond_4

    .line 916
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 914
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 915
    if-eqz v8, :cond_d

    .line 916
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 917
    const/4 v8, 0x0

    .line 914
    :cond_d
    throw v0
.end method

.method private saveSmartSearchStatus(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .prologue
    .line 1638
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->setSmartSearchEnabled(Landroid/content/Context;Z)V

    .line 1637
    return-void
.end method

.method private sendWifiCallingNotification()V
    .locals 4

    .prologue
    .line 664
    const-class v2, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->hashCode()I

    move-result v0

    .line 665
    .local v0, "notificationID":I
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    .line 666
    const-string/jumbo v3, "notification"

    .line 665
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 673
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mWifiCallingNotification:Landroid/app/Notification;

    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 674
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 662
    return-void
.end method

.method private setCallButtonIcon()V
    .locals 3

    .prologue
    const v2, 0x7f0e0081

    .line 649
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mWiFiCallingHandler:Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;

    if-eqz v1, :cond_1

    .line 650
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mWiFiCallingHandler:Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;->isWiFiCallingEnabled()Z

    move-result v1

    .line 649
    if-eqz v1, :cond_1

    .line 651
    const v0, 0x7f02002f

    .line 652
    .local v0, "iconResourceId":I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mCallButton:Lcom/sonymobile/fab/FloatingActionButton;

    if-eqz v1, :cond_0

    .line 653
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mCallButton:Lcom/sonymobile/fab/FloatingActionButton;

    invoke-virtual {v1, v2}, Lcom/sonymobile/fab/FloatingActionButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 654
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mCallButton:Lcom/sonymobile/fab/FloatingActionButton;

    invoke-virtual {v1, v2}, Lcom/sonymobile/fab/FloatingActionButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 646
    :cond_0
    return-void

    .line 651
    .end local v0    # "iconResourceId":I
    :cond_1
    const v0, 0x7f02002d

    .restart local v0    # "iconResourceId":I
    goto :goto_0
.end method

.method private setDialpadToolbar()V
    .locals 3

    .prologue
    .line 1642
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setActionBar(Landroid/widget/Toolbar;)V

    .line 1643
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1644
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1645
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 1641
    return-void
.end method

.method private setVideoCallButtonIcon()V
    .locals 3

    .prologue
    const v2, 0x7f0e0081

    .line 1117
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 1118
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mCallButtonVideoCall:Lcom/sonymobile/fab/FloatingActionButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mEntityVisibility:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    if-nez v0, :cond_1

    .line 1119
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 1120
    return-void

    .line 1122
    :cond_1
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->-getcom_sonyericsson_android_socialphonebook_vilte_EntityVisibilitySwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mEntityVisibility:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1134
    :goto_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 1116
    return-void

    .line 1124
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mCallButtonVideoCall:Lcom/sonymobile/fab/FloatingActionButton;

    invoke-virtual {v0, v2}, Lcom/sonymobile/fab/FloatingActionButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1125
    const v1, 0x7f020033

    .line 1124
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1128
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mCallButtonVideoCall:Lcom/sonymobile/fab/FloatingActionButton;

    invoke-virtual {v0, v2}, Lcom/sonymobile/fab/FloatingActionButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1129
    const v1, 0x7f020034

    .line 1128
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1122
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setupWifiCallingNotification()V
    .locals 4

    .prologue
    .line 959
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 960
    const v3, 0x7f09012b

    .line 959
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 962
    .local v1, "notificationText":Ljava/lang/String;
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f020087

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 963
    const/4 v3, 0x1

    .line 962
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 965
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mWifiCallingNotification:Landroid/app/Notification;

    .line 958
    return-void
.end method

.method private toggleDialpadState()V
    .locals 2

    .prologue
    .line 633
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mTwelveKeyFragment:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->isDialpadMinimized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 634
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mTwelveKeyFragment:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->maximizeDialpad()V

    .line 635
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mCallButton:Lcom/sonymobile/fab/FloatingActionButton;

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mCallButton:Lcom/sonymobile/fab/FloatingActionButton;

    const v1, 0x7f0e010b

    invoke-virtual {v0, v1}, Lcom/sonymobile/fab/FloatingActionButton;->setNextFocusUpId(I)V

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 639
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mTwelveKeyFragment:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->minimizeDialpad()V

    .line 640
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mCallButton:Lcom/sonymobile/fab/FloatingActionButton;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mCallButton:Lcom/sonymobile/fab/FloatingActionButton;

    const v1, 0x7f0e00ee

    invoke-virtual {v0, v1}, Lcom/sonymobile/fab/FloatingActionButton;->setNextFocusUpId(I)V

    goto :goto_0
.end method

.method private toggleSmartSearch(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .prologue
    .line 1604
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->saveSmartSearchStatus(Z)V

    .line 1605
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mTwelveKeyFragment:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->updateSmartSearchLabelVisibility(Z)V

    .line 1606
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mSmartSearchFragment:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->refreshEmptyLabelText()V

    .line 1607
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1603
    return-void
.end method

.method private unregisterPhoneStateListener()V
    .locals 3

    .prologue
    .line 1196
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsMultiSimEnabled:Z

    if-nez v1, :cond_0

    .line 1197
    return-void

    .line 1199
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    .line 1200
    const-string/jumbo v2, "phone"

    .line 1199
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1201
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1203
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1195
    return-void
.end method

.method private unregisterSimChangedReceiver()V
    .locals 1

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mDualSimStateChecker:Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;->unregisterListener(Lcom/sonyericsson/android/socialphonebook/util/SimStateChangedListener;)V

    .line 1170
    return-void
.end method


# virtual methods
.method public clearDialpad()V
    .locals 1

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mTwelveKeyFragment:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    if-eqz v0, :cond_0

    .line 1430
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mTwelveKeyFragment:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->clearEditText()V

    .line 1432
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->showFabCallButton()V

    .line 1428
    return-void
.end method

.method public getEditText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mTwelveKeyFragment:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->getEditText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideAllCallingButtons()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1141
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 1142
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mDialpadFragmentView:Landroid/view/View;

    const v1, 0x7f0e0120

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1143
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mDialpadFragmentView:Landroid/view/View;

    const v1, 0x7f0e011f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1145
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsDualPane:Z

    if-nez v0, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mDialpadFragmentView:Landroid/view/View;

    const v1, 0x7f0e0121

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1148
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 1140
    return-void
.end method

.method public initVideoCallButtonItems()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1095
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 1096
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mDialpadFragmentView:Landroid/view/View;

    const v2, 0x7f0e0121

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1099
    .local v0, "callButtonItems":Landroid/view/View;
    const v1, 0x7f0e004c

    .line 1098
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/fab/FloatingActionButton;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mCallButtonRegularCall:Lcom/sonymobile/fab/FloatingActionButton;

    .line 1100
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mCallButtonRegularCall:Lcom/sonymobile/fab/FloatingActionButton;

    const v2, 0x7f0e0081

    invoke-virtual {v1, v2}, Lcom/sonymobile/fab/FloatingActionButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f02002d

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1101
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mCallButtonRegularCall:Lcom/sonymobile/fab/FloatingActionButton;

    invoke-virtual {v1, p0}, Lcom/sonymobile/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1104
    const v1, 0x7f0e004d

    .line 1103
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/fab/FloatingActionButton;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mCallButtonVideoCall:Lcom/sonymobile/fab/FloatingActionButton;

    .line 1105
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->setVideoCallButtonIcon()V

    .line 1106
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mCallButtonVideoCall:Lcom/sonymobile/fab/FloatingActionButton;

    invoke-virtual {v1, p0}, Lcom/sonymobile/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1108
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1109
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mCallButtonRegularCall:Lcom/sonymobile/fab/FloatingActionButton;

    invoke-virtual {v1, v3}, Lcom/sonymobile/fab/FloatingActionButton;->setVisibility(I)V

    .line 1110
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mCallButtonVideoCall:Lcom/sonymobile/fab/FloatingActionButton;

    invoke-virtual {v1, v3}, Lcom/sonymobile/fab/FloatingActionButton;->setVisibility(I)V

    .line 1112
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsVideoButtonShown:Z

    .line 1113
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 1094
    return-void
.end method

.method public isTriggeredBySmartSearchSelection()Z
    .locals 1

    .prologue
    .line 1660
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mTwelveKeyFragment:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->isTriggeredBySmartSearchSelection()Z

    move-result v0

    return v0
.end method

.method public isVideoButtonShown()Z
    .locals 1

    .prologue
    .line 1649
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsVideoButtonShown:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 372
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 373
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 374
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->isCalledFromHistory()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mResolveIntent:Z

    .line 376
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mWiFiCallingHandler:Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;

    .line 377
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mWiFiCallingHandler:Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;->subscribe(Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler$WiFiCallingListener;)V

    .line 379
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e011d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mCallButtonContainer:Landroid/view/ViewGroup;

    .line 380
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->isOutgoingCallsAllowed(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsCallingAllowed:Z

    .line 382
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->isSpeedDialSettingEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsSpeedDialEnabled:Z

    .line 384
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsSpeedDialEnabled:Z

    if-eqz v0, :cond_1

    .line 385
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mSpeedDialNumbers:Ljava/util/Map;

    .line 386
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mSpeedDialMaxCount:I

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsDualPane:Z

    .line 390
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->isPortraitMode(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsPortraitMode:Z

    .line 391
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mDualSimStateChecker:Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;->isMultiSimEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsMultiSimEnabled:Z

    .line 393
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;

    if-eqz v0, :cond_2

    .line 394
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->getMenuPlugin()Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mMenuPlugin:Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;

    .line 396
    :cond_2
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 371
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1410
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1411
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1412
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->onCallFinished()V

    .line 1409
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1462
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 1463
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 1464
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    .line 1465
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v0

    .line 1466
    .local v0, "configuration":Lcom/sonyericsson/android/socialphonebook/Configuration;
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isSpeedDialEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsSpeedDialEnabled:Z

    .line 1467
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getEnableTogglingOfSmartSearch()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mEnableTogglingOfSmartSearch:Z

    .line 1468
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 1461
    return-void
.end method

.method public onCallingFromListRequested(Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "isContact"    # Z
    .param p3, "isVideoCallVisible"    # Z

    .prologue
    const/4 v1, -0x1

    .line 970
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->isVoiceMailNumberOrUri(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 971
    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->callVoicemailForResult(ILjava/lang/String;)V

    .line 969
    :goto_0
    return-void

    .line 972
    :cond_0
    if-eqz p3, :cond_1

    .line 973
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mTwelveKeyFragment:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->setEditText(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 976
    :cond_1
    const v0, 0x7f0901e7

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 975
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->callNumberForResult(Ljava/lang/String;ZLjava/lang/String;I)Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 983
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 982
    :cond_0
    :goto_0
    return-void

    .line 985
    :sswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mTwelveKeyFragment:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->isDialpadMinimized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 986
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->toggleDialpadState()V

    goto :goto_0

    .line 991
    :sswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->placeCallBySub(I)V

    goto :goto_0

    .line 994
    :sswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->placeCallBySub(I)V

    goto :goto_0

    .line 998
    :sswitch_3
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->placeCall()V

    goto :goto_0

    .line 1001
    :sswitch_4
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->getEditText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getVideoCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 983
    :sswitch_data_0
    .sparse-switch
        0x7f0e004c -> :sswitch_3
        0x7f0e004d -> :sswitch_4
        0x7f0e00ee -> :sswitch_0
        0x7f0e011f -> :sswitch_3
        0x7f0e0130 -> :sswitch_1
        0x7f0e0131 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 275
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 276
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 277
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mDualSimStateChecker:Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;

    .line 279
    if-eqz p1, :cond_0

    .line 280
    const-string/jumbo v0, "key_digits_filled_by_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mDigitsFilledByExternalIntent:Z

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/vilte/VilteFactory;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    .line 283
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->isSmsAllowed(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsSmsAllowed:Z

    .line 284
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->setHasOptionsMenu(Z)V

    .line 285
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isVideoCallButtonAlwaysVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mShouldShowVideoButton:Z

    .line 287
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$4;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$4;-><init>(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/rcs/RcsFactory;->getInstance(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector$RcsCallback;)Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    .line 274
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 1456
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1457
    const v0, 0x7f110003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1455
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v4, 0x7f0e011e

    const v3, 0x7f0e011c

    .line 306
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->TAG:Ljava/lang/String;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 308
    .local v0, "fm":Landroid/app/FragmentManager;
    const/4 v1, 0x0

    .line 310
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    if-eqz p3, :cond_0

    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mShouldShowVideoButton:Z

    if-eqz v2, :cond_0

    .line 311
    const-string/jumbo v2, "isVideoButtonShown"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsVideoButtonShown:Z

    .line 314
    :cond_0
    invoke-virtual {v0, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mTwelveKeyFragment:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    .line 316
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mTwelveKeyFragment:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    if-nez v2, :cond_1

    .line 317
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    invoke-direct {v2}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mTwelveKeyFragment:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    .line 318
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->beginFragmentTransaction(Landroid/app/FragmentManager;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 319
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mTwelveKeyFragment:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    invoke-virtual {v1, v4, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 322
    .end local v1    # "transaction":Landroid/app/FragmentTransaction;
    :cond_1
    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mSmartSearchFragment:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    .line 324
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mSmartSearchFragment:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    if-nez v2, :cond_3

    .line 325
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    invoke-direct {v2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mSmartSearchFragment:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    .line 326
    if-nez v1, :cond_2

    .line 327
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->beginFragmentTransaction(Landroid/app/FragmentManager;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 329
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mSmartSearchFragment:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    invoke-virtual {v1, v3, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 332
    :cond_3
    if-eqz v1, :cond_4

    .line 333
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 334
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 337
    :cond_4
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->isSmartSearchLanguageSupported()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mEnableTogglingOfSmartSearch:Z

    if-eqz v2, :cond_6

    .line 341
    :cond_5
    :goto_0
    const v2, 0x7f04005d

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mDialpadFragmentView:Landroid/view/View;

    .line 343
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->TAG:Ljava/lang/String;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 344
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mDialpadFragmentView:Landroid/view/View;

    return-object v2

    .line 338
    :cond_6
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->saveSmartSearchStatus(Z)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 510
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsMultiSimEnabled:Z

    if-eqz v0, :cond_0

    .line 511
    const v0, 0x7f0e0130

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->clearListener(I)V

    .line 512
    const v0, 0x7f0e0131

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->clearListener(I)V

    .line 514
    :cond_0
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mCallButtonContainer:Landroid/view/ViewGroup;

    .line 517
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mWiFiCallingHandler:Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;->unsubscribe()V

    .line 518
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mWiFiCallingHandler:Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;

    .line 520
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;->disconnect()V

    .line 526
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    .line 529
    :cond_1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 509
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 504
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 505
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    .line 503
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1
    .param p1, "hidden"    # Z

    .prologue
    .line 401
    if-eqz p1, :cond_0

    .line 405
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mTwelveKeyFragment:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->resetDialpad()V

    .line 411
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    .line 412
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->initCallButton()V

    .line 400
    return-void

    .line 409
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->setDialpadToolbar()V

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1418
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mSmartSearchFragment:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1417
    :cond_0
    :goto_0
    return-void

    .line 1419
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mTwelveKeyFragment:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->isDialpadMinimized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1420
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mTwelveKeyFragment:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->minimizeDialpad()V

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1239
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1268
    :cond_0
    return v6

    .line 1241
    :pswitch_0
    const/16 v2, 0x42

    if-eq p2, v2, :cond_1

    const/4 v2, 0x5

    if-ne p2, v2, :cond_4

    .line 1249
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 1250
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mDialpadKeyEvent:Landroid/view/KeyEvent;

    .line 1256
    :cond_2
    :goto_0
    return v7

    .line 1251
    :cond_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v7, :cond_2

    .line 1252
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mDialpadKeyEvent:Landroid/view/KeyEvent;

    if-eqz v2, :cond_2

    .line 1253
    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mDialpadKeyEvent:Landroid/view/KeyEvent;

    .line 1254
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->placeCall()V

    goto :goto_0

    .line 1257
    :cond_4
    const/16 v2, 0x8

    if-ne p2, v2, :cond_0

    .line 1258
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 1259
    .local v0, "timeDiff":J
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 1261
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "call to Voicemail number"

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->callVoicemailForResult(I)V

    .line 1263
    return v7

    .line 1239
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e00ee
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, -0x1

    .line 1357
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1358
    .local v0, "id":I
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->isEditTextEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1359
    const/4 v1, 0x0

    .line 1360
    .local v1, "speedDialNumber":Ljava/lang/String;
    sparse-switch v0, :sswitch_data_0

    .line 1395
    .end local v1    # "speedDialNumber":Ljava/lang/String;
    :goto_0
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsSpeedDialEnabled:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 1396
    invoke-direct {p0, v1, v3}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->handleSpeedDialAction(Ljava/lang/String;I)V

    .line 1397
    const/4 v2, 0x1

    return v2

    .line 1364
    .restart local v1    # "speedDialNumber":Ljava/lang/String;
    :sswitch_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->getChameleonDataManager()Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonDataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonDataManager;->getVoicemailNumber()Ljava/lang/String;

    move-result-object v2

    .line 1363
    invoke-direct {p0, v3, v2}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->callVoicemailForResult(ILjava/lang/String;)V

    goto :goto_0

    .line 1368
    :sswitch_1
    const-string/jumbo v1, "2"

    .local v1, "speedDialNumber":Ljava/lang/String;
    goto :goto_0

    .line 1371
    .local v1, "speedDialNumber":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v1, "3"

    .local v1, "speedDialNumber":Ljava/lang/String;
    goto :goto_0

    .line 1374
    .local v1, "speedDialNumber":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v1, "4"

    .local v1, "speedDialNumber":Ljava/lang/String;
    goto :goto_0

    .line 1377
    .local v1, "speedDialNumber":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v1, "5"

    .local v1, "speedDialNumber":Ljava/lang/String;
    goto :goto_0

    .line 1380
    .local v1, "speedDialNumber":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v1, "6"

    .local v1, "speedDialNumber":Ljava/lang/String;
    goto :goto_0

    .line 1383
    .local v1, "speedDialNumber":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v1, "7"

    .local v1, "speedDialNumber":Ljava/lang/String;
    goto :goto_0

    .line 1386
    .local v1, "speedDialNumber":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v1, "8"

    .local v1, "speedDialNumber":Ljava/lang/String;
    goto :goto_0

    .line 1389
    .local v1, "speedDialNumber":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v1, "9"

    .local v1, "speedDialNumber":Ljava/lang/String;
    goto :goto_0

    .line 1400
    .end local v1    # "speedDialNumber":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 1360
    :sswitch_data_0
    .sparse-switch
        0x7f0e00ed -> :sswitch_0
        0x7f0e00f2 -> :sswitch_1
        0x7f0e00f3 -> :sswitch_4
        0x7f0e00f7 -> :sswitch_2
        0x7f0e00fb -> :sswitch_3
        0x7f0e00ff -> :sswitch_7
        0x7f0e0103 -> :sswitch_5
        0x7f0e0107 -> :sswitch_6
        0x7f0e010f -> :sswitch_8
    .end sparse-switch
.end method

.method public onNewIntent()V
    .locals 1

    .prologue
    .line 1405
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mResolveIntent:Z

    .line 1404
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1425
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1568
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 1569
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 1570
    return v2

    .line 1572
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mMenuPlugin:Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mMenuPlugin:Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;

    invoke-interface {v0, p1}, Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1573
    return v2

    .line 1575
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1598
    return v3

    .line 1577
    :sswitch_0
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getCallSettingsIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    .line 1600
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 1580
    :sswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->getEditText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->launchAddToContacts(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 1583
    :sswitch_2
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->getEditText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->initiateSms(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1586
    :sswitch_3
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->getEditText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;->getVideoCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1589
    :sswitch_4
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->toggleSmartSearch(Z)V

    goto :goto_0

    .line 1592
    :sswitch_5
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->toggleSmartSearch(Z)V

    goto :goto_0

    .line 1595
    :sswitch_6
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1575
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0239 -> :sswitch_0
        0x7f0e0249 -> :sswitch_1
        0x7f0e024a -> :sswitch_2
        0x7f0e024b -> :sswitch_3
        0x7f0e024c -> :sswitch_6
        0x7f0e024f -> :sswitch_4
        0x7f0e0250 -> :sswitch_5
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 463
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 465
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mTwelveKeyFragment:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 466
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mTwelveKeyFragment:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mTwelveKeyFragment:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 468
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mTwelveKeyFragment:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->setOnTextChangeListener(Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$OnTextChangeListener;)V

    .line 470
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mCallButton:Lcom/sonymobile/fab/FloatingActionButton;

    if-eqz v1, :cond_0

    .line 471
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mCallButton:Lcom/sonymobile/fab/FloatingActionButton;

    invoke-virtual {v1, v2}, Lcom/sonymobile/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 474
    :cond_0
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsVideoButtonShown:Z

    if-eqz v1, :cond_1

    .line 475
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->clearVideoButtonsListeners()V

    .line 478
    :cond_1
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    .line 479
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivityResumed:Z

    .line 481
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mSmartSearchFragment:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 482
    .local v0, "smartSearchList":Landroid/widget/ListView;
    if-eqz v0, :cond_2

    .line 483
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 485
    :cond_2
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsDualPane:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsPortraitMode:Z

    if-eqz v1, :cond_4

    .line 486
    :cond_3
    if-eqz v0, :cond_4

    .line 487
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 491
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->unregisterPhoneStateListener()V

    .line 462
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v4, 0x7f0e0249

    const v6, 0x7f0e0239

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 1473
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 1474
    return-void

    .line 1477
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 1478
    const/4 v1, 0x0

    .line 1480
    .local v1, "menuItem":Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mTwelveKeyFragment:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->isDialpadNotEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1482
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1483
    .local v1, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1486
    const v2, 0x7f0e024a

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1487
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsSmsCapable:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsSmsAllowed:Z

    :goto_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1490
    const v2, 0x7f0e024b

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1492
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mEntityVisibility:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    if-eqz v2, :cond_2

    .line 1493
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->-getcom_sonyericsson_android_socialphonebook_vilte_EntityVisibilitySwitchesValues()[I

    move-result-object v2

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mEntityVisibility:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 1509
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/vilte/UnsupportedEntityException;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mEntityVisibility:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/socialphonebook/vilte/UnsupportedEntityException;-><init>(Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;)V

    throw v2

    :cond_1
    move v2, v3

    .line 1487
    goto :goto_0

    .line 1495
    :pswitch_0
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsVideoButtonShown:Z

    if-nez v2, :cond_2

    .line 1496
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1497
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1513
    :cond_2
    :goto_1
    const v2, 0x7f0e024f

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1514
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1516
    const v2, 0x7f0e0250

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1517
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1519
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1520
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1522
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsSpeedDialEnabled:Z

    if-eqz v2, :cond_3

    .line 1523
    const v2, 0x7f0e024c

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1524
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1558
    :cond_3
    :goto_2
    const v2, 0x7f0e023b

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1559
    .local v0, "helpItem":Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f090057

    invoke-static {v2, v0, v3}, Lcom/android/contacts/util/HelpUtils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;I)Z

    .line 1561
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mMenuPlugin:Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;

    if-eqz v2, :cond_4

    .line 1562
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mMenuPlugin:Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;

    invoke-interface {v2, p1}, Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 1472
    :cond_4
    return-void

    .line 1504
    .end local v0    # "helpItem":Landroid/view/MenuItem;
    :pswitch_1
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1505
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1529
    .local v1, "menuItem":Landroid/view/MenuItem;
    :cond_5
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1530
    .local v1, "menuItem":Landroid/view/MenuItem;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-nez v2, :cond_6

    .line 1531
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1534
    :cond_6
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsSpeedDialEnabled:Z

    if-eqz v2, :cond_7

    .line 1535
    const v2, 0x7f0e024c

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1536
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1539
    :cond_7
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mEnableTogglingOfSmartSearch:Z

    if-eqz v2, :cond_8

    .line 1540
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->isSmartSearchEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1541
    const v2, 0x7f0e024f

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1545
    :goto_3
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1548
    :cond_8
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1549
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1551
    const v2, 0x7f0e024a

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1552
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1554
    const v2, 0x7f0e024b

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1555
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 1543
    :cond_9
    const v2, 0x7f0e0250

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    goto :goto_3

    .line 1493
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 417
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 418
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 420
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsSmsCapable:Z

    .line 421
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mResolveIntent:Z

    if-eqz v1, :cond_0

    .line 422
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mResolveIntent:Z

    .line 423
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->resolveNumberFromIntent()Z

    .line 426
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mTwelveKeyFragment:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    invoke-virtual {v1, p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 427
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mTwelveKeyFragment:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    invoke-virtual {v1, p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mTwelveKeyFragment:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    invoke-virtual {v1, p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 429
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mTwelveKeyFragment:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    invoke-virtual {v1, p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->setOnTextChangeListener(Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$OnTextChangeListener;)V

    .line 431
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mWiFiCallingHandler:Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;->isWiFiCallingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->getUserVisibleHint()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 432
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->sendWifiCallingNotification()V

    .line 435
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->initCallButton()V

    .line 437
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsSpeedDialEnabled:Z

    if-eqz v1, :cond_2

    .line 438
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mSpeedDialNumberListener:Landroid/app/LoaderManager$LoaderCallbacks;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v4, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 440
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    .line 441
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mLastDialedNumberListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 440
    invoke-virtual {v1, v5, v4, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 443
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mSmartSearchFragment:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mTwelveKeyFragment:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->getEditText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->refresh(Ljava/lang/String;)V

    .line 445
    iput-boolean v5, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivityResumed:Z

    .line 447
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mSmartSearchFragment:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 448
    .local v0, "smartSearchList":Landroid/widget/ListView;
    if-eqz v0, :cond_3

    .line 449
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 451
    :cond_3
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsDualPane:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsPortraitMode:Z

    if-eqz v1, :cond_5

    .line 452
    :cond_4
    if-eqz v0, :cond_5

    .line 453
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 457
    :cond_5
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->registerPhoneStateListener()V

    .line 458
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 497
    const-string/jumbo v0, "key_digits_filled_by_intent"

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mDigitsFilledByExternalIntent:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 498
    const-string/jumbo v0, "isVideoButtonShown"

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsVideoButtonShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 499
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 496
    return-void
.end method

.method public onSimSelected(ILjava/lang/String;)V
    .locals 3
    .param p1, "subId"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 1668
    :try_start_0
    const-string/jumbo v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->handlePinMmiForSubscriber(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1664
    :goto_0
    return-void

    .line 1670
    :catch_0
    move-exception v0

    .line 1671
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSimStateChanged()V
    .locals 2

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$5;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$5;-><init>(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1175
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 358
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 359
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->registerSimChangedReceiver()V

    .line 360
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 361
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->unregisterSimChangedReceiver()V

    .line 367
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 365
    return-void
.end method

.method public onTextChanged(Ljava/lang/String;Landroid/widget/EditText;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textField"    # Landroid/widget/EditText;

    .prologue
    const/4 v2, 0x0

    .line 1273
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mDigitsFilledByExternalIntent:Z

    if-nez v1, :cond_1

    .line 1274
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsMultiSimEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mDualSimStateChecker:Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;

    invoke-interface {v1}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;->bothSimsAreEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1275
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->isMmiEntry(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1277
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;->newInstance(Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;

    move-result-object v0

    .line 1278
    .local v0, "dialog":Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;
    invoke-virtual {v0, p0, v2}, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1279
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1282
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 1283
    return-void

    .line 1286
    .end local v0    # "dialog":Lcom/sonyericsson/android/socialphonebook/ui/SimPickerDialog;
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p1, p2}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1287
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 1288
    return-void

    .line 1292
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/sonyericsson/android/socialphonebook/SpecialCharSequenceMgr;->handleSktDebugScreenLaunchCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1293
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->placeCall()V

    .line 1294
    return-void

    .line 1297
    :cond_2
    invoke-virtual {p2}, Landroid/widget/EditText;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 1298
    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mDigitsFilledByExternalIntent:Z

    .line 1303
    :cond_3
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivityResumed:Z

    if-eqz v1, :cond_4

    .line 1304
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mSmartSearchFragment:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->refresh(Ljava/lang/String;)V

    .line 1272
    :cond_4
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 349
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 350
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e012b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mToolbar:Landroid/widget/Toolbar;

    .line 351
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mToolbar:Landroid/widget/Toolbar;

    .line 352
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 351
    invoke-static {v1}, Lcom/android/contacts/util/ThemeUtils;->getActionBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 353
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->setDialpadToolbar()V

    .line 348
    return-void
.end method

.method public onWiFiCallingStatusChanged()V
    .locals 1

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mWifiCallingNotification:Landroid/app/Notification;

    if-nez v0, :cond_0

    .line 1227
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->setupWifiCallingNotification()V

    .line 1229
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 1230
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->setCallButtonIcon()V

    .line 1231
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mWiFiCallingHandler:Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;->isWiFiCallingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1232
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->sendWifiCallingNotification()V

    .line 1223
    :cond_1
    return-void
.end method

.method public setCallButtonVisible(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mCallButton:Lcom/sonymobile/fab/FloatingActionButton;

    if-eqz v0, :cond_0

    .line 1450
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mCallButton:Lcom/sonymobile/fab/FloatingActionButton;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sonymobile/fab/FloatingActionButton;->setVisibility(I)V

    .line 1448
    :cond_0
    return-void

    .line 1450
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setOnCallFinishedListener(Lcom/sonyericsson/android/socialphonebook/DialpadFragment$OnCallFinishedListener;)V
    .locals 0
    .param p1, "onCallFinishedListener"    # Lcom/sonyericsson/android/socialphonebook/DialpadFragment$OnCallFinishedListener;

    .prologue
    .line 1611
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mOnCallFinishedListener:Lcom/sonyericsson/android/socialphonebook/DialpadFragment$OnCallFinishedListener;

    .line 1610
    return-void
.end method

.method public showFabCallButton()V
    .locals 1

    .prologue
    .line 1439
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsMultiSimEnabled:Z

    if-eqz v0, :cond_0

    .line 1440
    return-void

    .line 1442
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->hideAllCallingButtons()V

    .line 1443
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->initFabCallButton()V

    .line 1445
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsVideoButtonShown:Z

    .line 1438
    return-void
.end method

.method public updateVideoCallButtonVisibility(Z)V
    .locals 5
    .param p1, "isContactNumber"    # Z

    .prologue
    const/16 v4, 0x12c

    const/4 v3, 0x0

    .line 1316
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsCallingAllowed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    .line 1317
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->DIALPAD_FRAGMENT:Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->getEditText()Ljava/lang/String;

    move-result-object v2

    .line 1316
    invoke-interface {v0, v1, v2, p1}, Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;->getVideoCallEntityVisibility(Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;Ljava/lang/String;Z)Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mEntityVisibility:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    .line 1320
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mShouldShowVideoButton:Z

    if-eqz v0, :cond_1

    .line 1321
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->-getcom_sonyericsson_android_socialphonebook_vilte_EntityVisibilitySwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mEntityVisibility:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1350
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/vilte/UnsupportedEntityException;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mEntityVisibility:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/vilte/UnsupportedEntityException;-><init>(Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;)V

    throw v0

    .line 1318
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->DISABLED:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    goto :goto_0

    .line 1324
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->setVideoCallButtonIcon()V

    .line 1325
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsVideoButtonShown:Z

    if-nez v0, :cond_1

    .line 1326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsVideoButtonShown:Z

    .line 1327
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mCallButton:Lcom/sonymobile/fab/FloatingActionButton;

    if-eqz v0, :cond_1

    .line 1328
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mCallButton:Lcom/sonymobile/fab/FloatingActionButton;

    .line 1329
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mFloatingActionButtonAnimationCallback:Lcom/sonyericsson/android/socialphonebook/DialpadFragment$FloatingActionButtonAnimationCallback;

    .line 1328
    invoke-static {v0, v4, v1}, Lcom/android/contacts/util/AnimUtils;->scaleOut(Landroid/view/View;ILcom/android/contacts/util/AnimUtils$AnimationCallback;)V

    .line 1315
    :cond_1
    :goto_1
    return-void

    .line 1336
    :pswitch_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsVideoButtonShown:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mResolveIntent:Z

    if-nez v0, :cond_1

    .line 1337
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mIsVideoButtonShown:Z

    .line 1338
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mCallButtonRegularCall:Lcom/sonymobile/fab/FloatingActionButton;

    if-eqz v0, :cond_2

    .line 1339
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mCallButtonRegularCall:Lcom/sonymobile/fab/FloatingActionButton;

    invoke-static {v0, v4, v3}, Lcom/android/contacts/util/AnimUtils;->scaleOut(Landroid/view/View;ILcom/android/contacts/util/AnimUtils$AnimationCallback;)V

    .line 1342
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mCallButtonVideoCall:Lcom/sonymobile/fab/FloatingActionButton;

    if-eqz v0, :cond_1

    .line 1343
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mCallButtonVideoCall:Lcom/sonymobile/fab/FloatingActionButton;

    .line 1344
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->mFloatingActionButtonAnimationCallback:Lcom/sonyericsson/android/socialphonebook/DialpadFragment$FloatingActionButtonAnimationCallback;

    .line 1343
    invoke-static {v0, v4, v1}, Lcom/android/contacts/util/AnimUtils;->scaleOut(Landroid/view/View;ILcom/android/contacts/util/AnimUtils$AnimationCallback;)V

    goto :goto_1

    .line 1321
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
