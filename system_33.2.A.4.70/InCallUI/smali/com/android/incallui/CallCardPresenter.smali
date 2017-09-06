.class public Lcom/android/incallui/CallCardPresenter;
.super Lcom/android/incallui/Presenter;
.source "CallCardPresenter.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;
.implements Lcom/android/incallui/InCallPresenter$InCallEventListener;
.implements Lcom/android/incallui/CallList$CallUpdateListener;
.implements Lcom/android/incallui/SomcAmProvider$SomcAmListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallCardPresenter$EmergencyCallListener;,
        Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;,
        Lcom/android/incallui/CallCardPresenter$CallCardUi;,
        Lcom/android/incallui/CallCardPresenter$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/CallCardPresenter$CallCardUi;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
        "Lcom/android/incallui/InCallPresenter$InCallDetailsListener;",
        "Lcom/android/incallui/InCallPresenter$InCallEventListener;",
        "Lcom/android/incallui/CallList$CallUpdateListener;",
        "Lcom/android/incallui/SomcAmProvider$SomcAmListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBaseChronometerTime:J

.field private mCallTimer:Lcom/android/incallui/CallTimer;

.field private final mContactInfoUpdatedListener:Lcom/android/incallui/ContactInfoCache$ContactInfoUpdatedListener;

.field private mContext:Landroid/content/Context;

.field private final mEmergencyCallListener:Lcom/android/incallui/CallCardPresenter$EmergencyCallListener;

.field private mIsFullscreen:Z

.field private mPrimary:Lcom/android/incallui/Call;

.field private mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field private mSecondary:Lcom/android/incallui/Call;

.field private mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field private mSpinnerShowing:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/incallui/CallCardPresenter;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/CallCardPresenter;->handleContactInfoUpdated(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/incallui/CallCardPresenter;Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p3, "isPrimary"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/CallCardPresenter;->onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/incallui/CallCardPresenter;Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/CallCardPresenter;->onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const-class v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    .line 89
    invoke-static {}, Lcom/android/incalluibind/ObjectFactory;->newEmergencyCallListener()Lcom/android/incallui/CallCardPresenter$EmergencyCallListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mEmergencyCallListener:Lcom/android/incallui/CallCardPresenter$EmergencyCallListener;

    .line 97
    iput-boolean v1, p0, Lcom/android/incallui/CallCardPresenter;->mSpinnerShowing:Z

    .line 98
    iput-boolean v1, p0, Lcom/android/incallui/CallCardPresenter;->mIsFullscreen:Z

    .line 99
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/incallui/CallCardPresenter;->mBaseChronometerTime:J

    .line 1119
    new-instance v0, Lcom/android/incallui/CallCardPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallCardPresenter$1;-><init>(Lcom/android/incallui/CallCardPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mContactInfoUpdatedListener:Lcom/android/incallui/ContactInfoCache$ContactInfoUpdatedListener;

    .line 130
    new-instance v0, Lcom/android/incallui/CallTimer;

    new-instance v1, Lcom/android/incallui/CallCardPresenter$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallCardPresenter$2;-><init>(Lcom/android/incallui/CallCardPresenter;)V

    invoke-direct {v0, v1}, Lcom/android/incallui/CallTimer;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    .line 128
    return-void
.end method

.method private getAccountForCall(Lcom/android/incallui/Call;)Landroid/telecom/PhoneAccount;
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x0

    .line 812
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 813
    .local v0, "accountHandle":Landroid/telecom/PhoneAccountHandle;
    if-nez v0, :cond_0

    .line 814
    return-object v1

    .line 816
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v1

    return-object v1
.end method

.method private getCallProviderLabel(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 5
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v4, 0x0

    .line 833
    invoke-direct {p0, p1}, Lcom/android/incallui/CallCardPresenter;->getAccountForCall(Lcom/android/incallui/Call;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 834
    .local v0, "account":Landroid/telecom/PhoneAccount;
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v1

    .line 835
    .local v1, "mgr":Landroid/telecom/TelecomManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 839
    :cond_0
    return-object v4

    .line 836
    :cond_1
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 837
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getCallStateIcon()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 869
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/Call$Details;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v1

    .line 870
    .local v1, "statusHints":Landroid/telecom/StatusHints;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telecom/StatusHints;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 871
    invoke-virtual {v1}, Landroid/telecom/StatusHints;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 872
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 873
    return-object v0

    .line 877
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v4
.end method

.method private getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;
    .locals 1
    .param p1, "callList"    # Lcom/android/incallui/CallList;
    .param p2, "ignore"    # Lcom/android/incallui/Call;
    .param p3, "skipDisconnected"    # Z

    .prologue
    .line 664
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 665
    .local v0, "retval":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    if-eq v0, p2, :cond_0

    .line 666
    return-object v0

    .line 672
    :cond_0
    if-nez p3, :cond_2

    .line 673
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 674
    if-eqz v0, :cond_1

    if-eq v0, p2, :cond_1

    .line 675
    return-object v0

    .line 677
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 678
    if-eqz v0, :cond_2

    if-eq v0, p2, :cond_2

    .line 679
    return-object v0

    .line 684
    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 685
    if-eqz v0, :cond_3

    if-eq v0, p2, :cond_3

    .line 686
    return-object v0

    .line 690
    :cond_3
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getSecondBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 692
    return-object v0
.end method

.method private getConferencePhoto(Lcom/android/incallui/Call;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1000
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    .line 1001
    .local v0, "cache":Lcom/android/incallui/ContactInfoCache;
    invoke-virtual {v0}, Lcom/android/incallui/ContactInfoCache;->getConferenceDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method private getConferenceString(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 991
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/android/incallui/Call;->hasProperty(I)Z

    move-result v0

    .line 992
    .local v0, "isGenericConference":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getConferenceString: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 994
    if-eqz v0, :cond_0

    .line 995
    const v1, 0x7f0b0302

    .line 996
    .local v1, "resId":I
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 995
    .end local v1    # "resId":I
    :cond_0
    const v1, 0x7f0b02fd

    .restart local v1    # "resId":I
    goto :goto_0
.end method

.method private getConnectionLabel()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 847
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/Call$Details;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v3

    .line 848
    .local v3, "statusHints":Landroid/telecom/StatusHints;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/telecom/StatusHints;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 852
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->hasOutgoingGatewayCall()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 854
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 857
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/GatewayInfo;->getGatewayProviderPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 856
    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 858
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 849
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    invoke-virtual {v3}, Landroid/telecom/StatusHints;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 859
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 860
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "Gateway Application Not Found."

    invoke-static {p0, v4, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 861
    return-object v6

    .line 864
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-direct {p0, v4}, Lcom/android/incallui/CallCardPresenter;->getCallProviderLabel(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getGatewayNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 823
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->hasOutgoingGatewayCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/GatewayInfo;->getGatewayAddress()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardPresenter;->getNumberFromHandle(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 826
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;
    .locals 1
    .param p0, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 897
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    return-object v0

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method private static getNumberForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;
    .locals 1
    .param p0, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 909
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    return-object v0

    .line 912
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    return-object v0
.end method

.method private getNumberFromHandle(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "handle"    # Landroid/net/Uri;

    .prologue
    .line 953
    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSubscriptionNumber()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 417
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    .line 418
    .local v1, "accountHandle":Landroid/telecom/PhoneAccountHandle;
    if-eqz v1, :cond_0

    .line 419
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v2

    .line 420
    .local v2, "mgr":Landroid/telecom/TelecomManager;
    invoke-virtual {v2, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 421
    .local v0, "account":Landroid/telecom/PhoneAccount;
    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getSubscriptionAddress()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/CallCardPresenter;->getNumberFromHandle(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 425
    .end local v0    # "account":Landroid/telecom/PhoneAccount;
    .end local v2    # "mgr":Landroid/telecom/TelecomManager;
    :cond_0
    return-object v4
.end method

.method private handleContactInfoUpdated(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 1129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleContactInfoUpdated()... callId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1130
    const/4 v0, 0x0

    .line 1131
    .local v0, "call":Lcom/android/incallui/Call;
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 1132
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    .line 1137
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1138
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    move v1, v2

    :goto_1
    invoke-direct {p0, v0, v2, v1}, Lcom/android/incallui/CallCardPresenter;->startContactInfoSearch(Lcom/android/incallui/Call;ZZ)V

    .line 1128
    :cond_1
    return-void

    .line 1133
    .restart local v0    # "call":Lcom/android/incallui/Call;
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 1134
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    .local v0, "call":Lcom/android/incallui/Call;
    goto :goto_0

    .line 1138
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private hasOutgoingGatewayCall()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 886
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-nez v1, :cond_0

    .line 887
    return v0

    .line 889
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 890
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/GatewayInfo;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 889
    :cond_1
    :goto_0
    return v0

    .line 890
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isCallTimeVisibleState(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x0

    .line 566
    packed-switch p1, :pswitch_data_0

    .line 581
    :pswitch_0
    return v0

    .line 571
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 579
    :pswitch_2
    return v0

    .line 566
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isPrimaryCallActive()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 987
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private maybeSendAccessibilityEvent(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;)V
    .locals 3
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;

    .prologue
    .line 1025
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 1026
    return-void

    .line 1028
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    .line 1029
    const-string/jumbo v2, "accessibility"

    .line 1028
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1030
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1031
    return-void

    .line 1033
    :cond_1
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v1, :cond_3

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v1, :cond_3

    .line 1035
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1036
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->sendAccessibilityAnnouncement()V

    .line 1024
    :cond_2
    return-void

    .line 1034
    :cond_3
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v1, :cond_2

    goto :goto_0
.end method

.method private maybeShowManageConferenceCallButton()V
    .locals 2

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->shouldShowManageConference()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showManageConferenceCallButton(Z)V

    .line 453
    return-void
.end method

.method private maybeShowProgressSpinner(II)V
    .locals 2
    .param p1, "callState"    # I
    .param p2, "sessionModificationState"    # I

    .prologue
    .line 466
    const/4 v1, 0x1

    .line 465
    if-ne p2, v1, :cond_2

    .line 467
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 468
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/CallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 469
    .local v0, "show":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/incallui/CallCardPresenter;->mSpinnerShowing:Z

    if-eq v0, v1, :cond_0

    .line 470
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v1, v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setProgressSpinnerVisible(Z)V

    .line 471
    iput-boolean v0, p0, Lcom/android/incallui/CallCardPresenter;->mSpinnerShowing:Z

    .line 464
    :cond_0
    return-void

    .line 468
    .end local v0    # "show":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "show":Z
    goto :goto_0

    .line 465
    .end local v0    # "show":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "show":Z
    goto :goto_0
.end method

.method private maybeStartSearch(Lcom/android/incallui/Call;Z)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "isPrimary"    # Z

    .prologue
    .line 605
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/CallCardPresenter;->startContactInfoSearch(Lcom/android/incallui/Call;ZZ)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p3, "isPrimary"    # Z

    .prologue
    .line 621
    invoke-direct {p0, p2, p3}, Lcom/android/incallui/CallCardPresenter;->updateContactEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    .line 622
    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 623
    sget-object v0, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Contact found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    :cond_0
    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/incallui/CallerInfoUtils;->sendViewNotification(Landroid/content/Context;Landroid/net/Uri;)V

    .line 620
    :cond_1
    return-void
.end method

.method private onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-nez v1, :cond_0

    .line 632
    return-void

    .line 635
    :cond_0
    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 636
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 638
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    .line 637
    invoke-static {v1, v2}, Lcom/android/incallui/VideoCallPresenter;->showIncomingVideo(II)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 639
    .local v0, "showContactPhoto":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    iget-object v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-object v3, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 630
    .end local v0    # "showContactPhoto":Z
    :cond_1
    return-void

    .line 637
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "showContactPhoto":Z
    goto :goto_0
.end method

.method private setCallbackNumber()V
    .locals 9

    .prologue
    .line 490
    const/4 v0, 0x0

    .line 497
    .local v0, "callbackNumber":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v7}, Lcom/android/incallui/Call;->getHandle()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/incallui/CallCardPresenter;->getNumberFromHandle(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .line 496
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    .line 498
    .local v2, "isEmergencyCall":Z
    iget-object v7, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/incallui/Call;->hasProperty(I)Z

    move-result v4

    .line 500
    .local v4, "showCallbackNumber":Z
    if-nez v2, :cond_0

    if-eqz v4, :cond_3

    .line 501
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getSubscriptionNumber()Ljava/lang/String;

    move-result-object v0

    .line 512
    .end local v0    # "callbackNumber":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallPresenter;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v3

    .line 513
    .local v3, "mgr":Landroid/telecom/TelecomManager;
    iget-object v7, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v7}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/telecom/TelecomManager;->getLine1Number(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v5

    .line 514
    .local v5, "simNumber":Ljava/lang/String;
    if-nez v4, :cond_2

    invoke-static {v0, v5}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 515
    const-string/jumbo v7, "Numbers are the same (and callback number is not being forced to show); not showing the callback number"

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 517
    const/4 v0, 0x0

    .line 520
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v7

    check-cast v7, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    if-nez v2, :cond_4

    .end local v4    # "showCallbackNumber":Z
    :goto_1
    invoke-interface {v7, v0, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setCallbackNumber(Ljava/lang/String;Z)V

    .line 489
    return-void

    .line 503
    .end local v3    # "mgr":Landroid/telecom/TelecomManager;
    .end local v5    # "simNumber":Ljava/lang/String;
    .restart local v0    # "callbackNumber":Ljava/lang/String;
    .restart local v4    # "showCallbackNumber":Z
    :cond_3
    iget-object v7, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v7}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telecom/Call$Details;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v6

    .line 504
    .local v6, "statusHints":Landroid/telecom/StatusHints;
    if-eqz v6, :cond_1

    .line 505
    invoke-virtual {v6}, Landroid/telecom/StatusHints;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 506
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 507
    const-string/jumbo v7, "android.telecom.extra.CALL_BACK_NUMBER"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "callbackNumber":Ljava/lang/String;
    goto :goto_0

    .line 520
    .end local v0    # "callbackNumber":Ljava/lang/String;
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v6    # "statusHints":Landroid/telecom/StatusHints;
    .restart local v3    # "mgr":Landroid/telecom/TelecomManager;
    .restart local v5    # "simNumber":Ljava/lang/String;
    :cond_4
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private shouldShowEndCallButton(Lcom/android/incallui/Call;I)Z
    .locals 3
    .param p1, "primary"    # Lcom/android/incallui/Call;
    .param p2, "callState"    # I

    .prologue
    const/4 v2, 0x0

    .line 1005
    if-nez p1, :cond_0

    .line 1006
    return v2

    .line 1008
    :cond_0
    invoke-static {}, Lcom/android/incallui/SomcAmUtils;->isAmWorking()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1009
    return v2

    .line 1011
    :cond_1
    invoke-static {p2}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1012
    const/16 v0, 0x9

    if-eq p2, v0, :cond_3

    .line 1013
    :cond_2
    return v2

    .line 1012
    :cond_3
    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    .line 1021
    const/4 v0, 0x1

    return v0
.end method

.method private shouldShowManageConference()Z
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    .line 483
    const/4 v0, 0x0

    return v0

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    return v0
.end method

.method private startContactInfoSearch(Lcom/android/incallui/Call;ZZ)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "isPrimary"    # Z
    .param p3, "isIncoming"    # Z

    .prologue
    .line 615
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    .line 617
    .local v0, "cache":Lcom/android/incallui/ContactInfoCache;
    new-instance v1, Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;

    invoke-direct {v1, p0, p2}, Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;-><init>(Lcom/android/incallui/CallCardPresenter;Z)V

    invoke-virtual {v0, p1, p3, v1}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    .line 614
    return-void
.end method

.method private updateContactEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 0
    .param p1, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p2, "isPrimary"    # Z

    .prologue
    .line 645
    if-eqz p2, :cond_0

    .line 646
    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 647
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo()V

    .line 644
    :goto_0
    return-void

    .line 649
    :cond_0
    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 650
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryDisplayInfo()V

    goto :goto_0
.end method

.method private updatePrimaryCallState()V
    .locals 12

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 431
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    .line 432
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v2

    .line 433
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v3

    .line 434
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v4

    .line 435
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getLastPreciseDisconnectCause()I

    move-result v5

    .line 436
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getConnectionLabel()Ljava/lang/String;

    move-result-object v6

    .line 437
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getCallStateIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 438
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getGatewayNumber()Ljava/lang/String;

    move-result-object v8

    .line 439
    iget-object v9, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/android/incallui/Call;->hasProperty(I)Z

    move-result v9

    .line 440
    iget-object v10, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v10}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v10

    .line 430
    invoke-interface/range {v0 .. v10}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setCallState(IIILandroid/telecom/DisconnectCause;ILjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZ)V

    .line 443
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->isPrimaryCallActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->hasProperty(I)Z

    move-result v11

    .line 444
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0, v11}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showHdAudioIndicator(Z)V

    .line 446
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->setCallbackNumber()V

    .line 428
    :cond_0
    return-void

    .line 443
    :cond_1
    const/4 v11, 0x0

    .local v11, "showHdAudioIndicator":Z
    goto :goto_0
.end method

.method private updatePrimaryDisplayInfo()V
    .locals 19

    .prologue
    .line 696
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 697
    .local v1, "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    if-nez v1, :cond_0

    .line 700
    sget-object v5, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "updatePrimaryDisplayInfo called but ui is null!"

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    return-void

    .line 704
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-nez v5, :cond_1

    .line 706
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v1 .. v9}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZLandroid/net/Uri;)V

    .line 707
    return-void

    .line 713
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    .line 712
    invoke-static {v5, v6}, Lcom/android/incallui/VideoCallPresenter;->showIncomingVideo(II)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v8, 0x0

    .line 715
    .local v8, "showContactPhoto":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 716
    sget-object v5, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Update primary display info for conference call."

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/incallui/CallCardPresenter;->getConferenceString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v3

    .line 723
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/incallui/CallCardPresenter;->getConferencePhoto(Lcom/android/incallui/Call;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 719
    const/4 v2, 0x0

    .line 721
    const/4 v4, 0x0

    .line 722
    const/4 v5, 0x0

    .line 724
    const/4 v7, 0x0

    .line 726
    const/4 v9, 0x0

    .line 718
    invoke-interface/range {v1 .. v9}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZLandroid/net/Uri;)V

    .line 747
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mEmergencyCallListener:Lcom/android/incallui/CallCardPresenter$EmergencyCallListener;

    if-eqz v5, :cond_2

    .line 749
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getHandle()Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/incallui/CallCardPresenter;->getNumberFromHandle(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 748
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v18

    .line 750
    .local v18, "isEmergencyCall":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mEmergencyCallListener:Lcom/android/incallui/CallCardPresenter$EmergencyCallListener;

    check-cast v1, Lcom/android/incallui/BaseFragment;

    .end local v1    # "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    move/from16 v0, v18

    invoke-interface {v5, v1, v0}, Lcom/android/incallui/CallCardPresenter$EmergencyCallListener;->onCallUpdated(Lcom/android/incallui/BaseFragment;Z)V

    .line 695
    .end local v18    # "isEmergencyCall":Z
    :cond_2
    return-void

    .line 712
    .end local v8    # "showContactPhoto":Z
    .restart local v1    # "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    :cond_3
    const/4 v8, 0x1

    .restart local v8    # "showContactPhoto":Z
    goto :goto_0

    .line 727
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v5, :cond_6

    .line 728
    sget-object v5, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Update primary display info for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-static {v5}, Lcom/android/incallui/CallCardPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v3

    .line 731
    .local v3, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-static {v5}, Lcom/android/incallui/CallCardPresenter;->getNumberForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v2

    .line 732
    .local v2, "number":Ljava/lang/String;
    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v5, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 737
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v5, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    .line 738
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v6, v6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    .line 739
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v7, v7, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    .line 741
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v9, v9, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->displayPhotoUri:Landroid/net/Uri;

    .line 733
    invoke-interface/range {v1 .. v9}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZLandroid/net/Uri;)V

    goto :goto_1

    .line 732
    :cond_5
    const/4 v4, 0x0

    .local v4, "nameIsNumber":Z
    goto :goto_2

    .line 744
    .end local v2    # "number":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "nameIsNumber":Z
    :cond_6
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v9, v1

    invoke-interface/range {v9 .. v17}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZLandroid/net/Uri;)V

    goto/16 :goto_1
.end method

.method private updateSecondaryDisplayInfo()V
    .locals 14

    .prologue
    .line 755
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 756
    .local v0, "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    if-nez v0, :cond_0

    .line 757
    return-void

    .line 760
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-nez v1, :cond_1

    .line 763
    iget-boolean v9, p0, Lcom/android/incallui/CallCardPresenter;->mIsFullscreen:Z

    .line 762
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 763
    const/4 v8, 0x0

    .line 762
    invoke-interface/range {v0 .. v9}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondary(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;ZZ)V

    .line 764
    return-void

    .line 767
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 770
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-direct {p0, v1}, Lcom/android/incallui/CallCardPresenter;->getConferenceString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v2

    .line 773
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-direct {p0, v1}, Lcom/android/incallui/CallCardPresenter;->getCallProviderLabel(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v5

    .line 776
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/android/incallui/Call;->isVideoCall(Landroid/content/Context;)Z

    move-result v8

    .line 777
    iget-boolean v9, p0, Lcom/android/incallui/CallCardPresenter;->mIsFullscreen:Z

    .line 769
    const/4 v1, 0x1

    .line 771
    const/4 v3, 0x0

    .line 772
    const/4 v4, 0x0

    .line 774
    const/4 v6, 0x1

    .line 775
    const/4 v7, 0x0

    .line 768
    invoke-interface/range {v0 .. v9}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondary(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;ZZ)V

    .line 754
    :cond_2
    :goto_0
    return-void

    .line 778
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v1, :cond_5

    .line 779
    sget-object v1, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateSecondaryDisplayInfo() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-static {v1}, Lcom/android/incallui/CallCardPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v2

    .line 781
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 786
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    .line 787
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-direct {p0, v1}, Lcom/android/incallui/CallCardPresenter;->getCallProviderLabel(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v5

    .line 789
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v7, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    .line 790
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    iget-object v6, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/android/incallui/Call;->isVideoCall(Landroid/content/Context;)Z

    move-result v8

    .line 791
    iget-boolean v9, p0, Lcom/android/incallui/CallCardPresenter;->mIsFullscreen:Z

    .line 783
    const/4 v1, 0x1

    .line 788
    const/4 v6, 0x0

    .line 782
    invoke-interface/range {v0 .. v9}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondary(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;ZZ)V

    .line 792
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSubId()I

    move-result v1

    const/4 v4, -0x1

    if-eq v4, v1, :cond_2

    .line 793
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    .line 792
    if-eqz v1, :cond_2

    .line 794
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    if-nez v1, :cond_2

    .line 796
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSubId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 795
    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondaryCallSubIndicator(I)V

    .line 797
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondaryCallSubIndicatorVisibility(I)V

    goto :goto_0

    .line 781
    :cond_4
    const/4 v3, 0x0

    .local v3, "nameIsNumber":Z
    goto :goto_1

    .line 803
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "nameIsNumber":Z
    :cond_5
    iget-boolean v13, p0, Lcom/android/incallui/CallCardPresenter;->mIsFullscreen:Z

    .line 802
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 803
    const/4 v12, 0x0

    move-object v4, v0

    .line 802
    invoke-interface/range {v4 .. v13}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondary(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;ZZ)V

    goto/16 :goto_0
.end method


# virtual methods
.method public cancelUpgradeRequestClicked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 938
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-nez v2, :cond_0

    .line 939
    return-void

    .line 942
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    .line 943
    .local v0, "videoCall":Landroid/telecom/InCallService$VideoCall;
    if-nez v0, :cond_1

    .line 944
    return-void

    .line 946
    :cond_1
    new-instance v1, Landroid/telecom/VideoProfile;

    invoke-direct {v1, v3}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 948
    .local v1, "videoProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {v0, v1}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 949
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v2, v3}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    .line 937
    return-void
.end method

.method public endCallClicked()V
    .locals 3

    .prologue
    .line 926
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-nez v1, :cond_0

    .line 927
    return-void

    .line 930
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Disconnecting call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 931
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    .line 932
    .local v0, "callId":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/incallui/Call;->setState(I)V

    .line 933
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    .line 934
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    .line 925
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 139
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    .line 143
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mContactInfoUpdatedListener:Lcom/android/incallui/ContactInfoCache$ContactInfoUpdatedListener;

    invoke-virtual {v0, v2}, Lcom/android/incallui/ContactInfoCache;->addContactInfoUpdatedListener(Lcom/android/incallui/ContactInfoCache$ContactInfoUpdatedListener;)V

    .line 147
    if-eqz p2, :cond_0

    .line 148
    iput-object p2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    .line 149
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Lcom/android/incallui/CallList;->addCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 152
    invoke-virtual {p2}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    if-nez v0, :cond_2

    .line 153
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0, p2, v1, v0}, Lcom/android/incallui/CallCardPresenter;->startContactInfoSearch(Lcom/android/incallui/Call;ZZ)V

    .line 159
    :cond_0
    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/incallui/CallCardPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 138
    return-void

    .line 153
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 155
    :cond_2
    invoke-direct {p0, v3, v1}, Lcom/android/incallui/CallCardPresenter;->updateContactEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    goto :goto_1
.end method

.method public isFullscreen()Z
    .locals 1

    .prologue
    .line 978
    iget-boolean v0, p0, Lcom/android/incallui/CallCardPresenter;->mIsFullscreen:Z

    return v0
.end method

.method public onCallChanged(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 387
    return-void
.end method

.method public onDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "details"    # Landroid/telecom/Call$Details;

    .prologue
    const/16 v2, 0x80

    .line 378
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryCallState()V

    .line 380
    invoke-virtual {p1, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    .line 381
    invoke-virtual {p2}, Landroid/telecom/Call$Details;->getCallCapabilities()I

    move-result v1

    invoke-static {v1, v2}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    .line 380
    if-eq v0, v1, :cond_0

    .line 382
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->maybeShowManageConferenceCallButton()V

    .line 377
    :cond_0
    return-void
.end method

.method public onFullscreenModeChanged(Z)V
    .locals 4
    .param p1, "isFullscreenMode"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 963
    iput-boolean p1, p0, Lcom/android/incallui/CallCardPresenter;->mIsFullscreen:Z

    .line 964
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 965
    .local v0, "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    if-nez v0, :cond_0

    .line 966
    return-void

    .line 968
    :cond_0
    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setCallCardVisible(Z)V

    .line 969
    if-eqz p1, :cond_2

    :goto_1
    invoke-interface {v0, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondaryInfoVisible(Z)V

    .line 970
    invoke-interface {v0, p1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setFullScreenMode(Z)V

    .line 962
    return-void

    :cond_1
    move v1, v3

    .line 968
    goto :goto_0

    :cond_2
    move v2, v3

    .line 969
    goto :goto_1
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 211
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/CallCardPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 209
    return-void
.end method

.method public onSessionModificationStateChange(I)V
    .locals 2
    .param p1, "sessionModificationState"    # I

    .prologue
    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSessionModificationStateChange : sessionModificationState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    .line 403
    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/CallCardPresenter;->maybeShowProgressSpinner(II)V

    .line 410
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryCallState()V

    .line 398
    return-void
.end method

.method public onSomcAmModeChanged(ILjava/lang/String;)V
    .locals 12
    .param p1, "amMode"    # I
    .param p2, "subParameter"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x3

    .line 525
    if-ne p1, v11, :cond_0

    .line 526
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    .line 527
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 526
    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->getPotentialStateFromCallList(Lcom/android/incallui/CallList;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    .line 527
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 526
    if-ne v0, v1, :cond_0

    .line 527
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->isPrimaryCallActive()Z

    move-result v0

    .line 526
    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/CallTimer;->start(J)Z

    .line 529
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 531
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    .line 532
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v2

    .line 533
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v3

    .line 534
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v4

    .line 535
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getLastPreciseDisconnectCause()I

    move-result v5

    .line 536
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getConnectionLabel()Ljava/lang/String;

    move-result-object v6

    .line 537
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getCallStateIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 538
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getGatewayNumber()Ljava/lang/String;

    move-result-object v8

    .line 539
    iget-object v9, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/android/incallui/Call;->hasProperty(I)Z

    move-result v9

    .line 540
    iget-object v10, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v10}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v10

    .line 530
    invoke-interface/range {v0 .. v10}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setCallState(IIILandroid/telecom/DisconnectCause;ILjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZ)V

    .line 541
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-direct {p0, v1, v11}, Lcom/android/incallui/CallCardPresenter;->shouldShowEndCallButton(Lcom/android/incallui/Call;I)Z

    move-result v1

    .line 542
    const/4 v2, 0x1

    .line 541
    invoke-interface {v0, v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setEndCallButtonEnabled(ZZ)V

    .line 524
    :cond_0
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 26
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 216
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onStateChange() "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v25

    check-cast v25, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 218
    .local v25, "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    if-nez v25, :cond_0

    .line 219
    return-void

    .line 222
    :cond_0
    const/16 v20, 0x0

    .line 223
    .local v20, "primary":Lcom/android/incallui/Call;
    const/16 v22, 0x0

    .line 225
    .local v22, "secondary":Lcom/android/incallui/Call;
    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_d

    .line 226
    invoke-virtual/range {p3 .. p3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v20

    .line 241
    .end local v20    # "primary":Lcom/android/incallui/Call;
    .end local v22    # "secondary":Lcom/android/incallui/Call;
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Primary call: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Secondary call: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Lcom/android/incallui/Call;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 245
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Lcom/android/incallui/Call;->areSameNumber(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v4

    .line 244
    if-eqz v4, :cond_11

    const/16 v21, 0x0

    .line 246
    .local v21, "primaryChanged":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Lcom/android/incallui/Call;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 247
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Lcom/android/incallui/Call;->areSameNumber(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v4

    .line 246
    if-eqz v4, :cond_12

    const/16 v23, 0x0

    .line 249
    .local v23, "secondaryChanged":Z
    :goto_2
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    move-object/from16 v19, v0

    .line 251
    .local v19, "previousPrimary":Lcom/android/incallui/Call;
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    .line 256
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v4, :cond_5

    if-nez v21, :cond_2

    .line 257
    invoke-interface/range {v25 .. v25}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->isManageConferenceVisible()Z

    move-result v4

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->shouldShowManageConference()Z

    move-result v6

    if-eq v4, v6, :cond_5

    .line 259
    :cond_2
    if-eqz v19, :cond_3

    .line 260
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v4, v6, v0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 262
    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v4, v6, v0}, Lcom/android/incallui/CallList;->addCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    .line 265
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v8, 0x4

    if-ne v4, v8, :cond_13

    const/4 v4, 0x1

    .line 264
    :goto_3
    invoke-static {v6, v7, v4}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/Call;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 266
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo()V

    .line 267
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v15

    .line 268
    .local v15, "cache":Lcom/android/incallui/ContactInfoCache;
    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v4, :cond_4

    .line 269
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {v15, v4, v6}, Lcom/android/incallui/ContactInfoCache;->removeInfo(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 271
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/android/incallui/CallCardPresenter;->maybeStartSearch(Lcom/android/incallui/Call;Z)V

    .line 272
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    .line 275
    .end local v15    # "cache":Lcom/android/incallui/ContactInfoCache;
    :cond_5
    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-nez v4, :cond_6

    .line 276
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v4, v6, v0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 279
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-nez v4, :cond_14

    .line 281
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 282
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryDisplayInfo()V

    .line 292
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v4, :cond_9

    .line 293
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 294
    const/16 v18, 0x0

    .line 295
    .local v18, "isSipCall":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getSubId()I

    move-result v4

    .line 296
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v6

    .line 295
    invoke-static {v4, v6}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v17

    .line 298
    .local v17, "isEmergencyNumber":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v4

    if-nez v4, :cond_16

    .line 299
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v16

    .line 300
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v4, :cond_17

    .line 301
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v0, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    move/from16 v18, v0

    .line 306
    .local v18, "isSipCall":Z
    :goto_6
    if-nez v18, :cond_18

    if-eqz v17, :cond_8

    if-eqz v16, :cond_18

    .line 309
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 311
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveSubId()I

    move-result v4

    .line 310
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryCallSubIndicator(I)V

    .line 320
    .end local v17    # "isEmergencyNumber":Z
    .end local v18    # "isSipCall":Z
    :cond_9
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->isPrimaryCallActive()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 321
    const-string/jumbo v4, "Starting the calltime timer"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 323
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 322
    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/incallui/CallCardPresenter;->mBaseChronometerTime:J

    .line 324
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v6, v7}, Lcom/android/incallui/CallTimer;->start(J)Z

    .line 337
    :cond_a
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v4, :cond_b

    .line 338
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v6, 0x9

    if-eq v4, v6, :cond_b

    .line 339
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v6, 0xa

    if-eq v4, v6, :cond_b

    .line 340
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-static {v4, v6}, Lcom/android/incallui/SomcInCallUiUtils;->isVolteCall(Landroid/content/Context;Lcom/android/incallui/Call;)Z

    move-result v4

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showVolteIcon(Z)V

    .line 345
    :cond_b
    const/4 v5, 0x2

    .line 346
    .local v5, "callState":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v4, :cond_1c

    .line 347
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/android/incallui/CallCardPresenter;->maybeShowProgressSpinner(II)V

    .line 348
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    .line 349
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryCallState()V

    .line 365
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->maybeShowManageConferenceCallButton()V

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 369
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Lcom/android/incallui/CallCardPresenter;->shouldShowEndCallButton(Lcom/android/incallui/Call;I)Z

    move-result v6

    if-nez v6, :cond_c

    sget-object v6, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p2

    if-ne v0, v6, :cond_1d

    :cond_c
    const/4 v6, 0x1

    move v7, v6

    .line 370
    :goto_a
    const/4 v6, 0x4

    if-eq v5, v6, :cond_1e

    const/4 v6, 0x1

    .line 368
    :goto_b
    invoke-interface {v4, v7, v6}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setEndCallButtonEnabled(ZZ)V

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v6, :cond_1f

    const/4 v6, 0x1

    :goto_c
    invoke-interface {v4, v6}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setEndCallButtonClickable(Z)V

    .line 373
    invoke-direct/range {p0 .. p2}, Lcom/android/incallui/CallCardPresenter;->maybeSendAccessibilityEvent(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;)V

    .line 215
    return-void

    .line 227
    .end local v5    # "callState":I
    .end local v19    # "previousPrimary":Lcom/android/incallui/Call;
    .end local v21    # "primaryChanged":Z
    .end local v23    # "secondaryChanged":Z
    .restart local v20    # "primary":Lcom/android/incallui/Call;
    .restart local v22    # "secondary":Lcom/android/incallui/Call;
    :cond_d
    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_e

    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_10

    .line 228
    :cond_e
    invoke-virtual/range {p3 .. p3}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v20

    .line 229
    .local v20, "primary":Lcom/android/incallui/Call;
    if-nez v20, :cond_f

    .line 230
    invoke-virtual/range {p3 .. p3}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v20

    .line 235
    :cond_f
    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v4, v6}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v22

    .local v22, "secondary":Lcom/android/incallui/Call;
    goto/16 :goto_0

    .line 236
    .local v20, "primary":Lcom/android/incallui/Call;
    .local v22, "secondary":Lcom/android/incallui/Call;
    :cond_10
    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_1

    .line 237
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v4, v6}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v20

    .line 238
    .local v20, "primary":Lcom/android/incallui/Call;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v4}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v22

    .local v22, "secondary":Lcom/android/incallui/Call;
    goto/16 :goto_0

    .line 244
    .end local v20    # "primary":Lcom/android/incallui/Call;
    .end local v22    # "secondary":Lcom/android/incallui/Call;
    :cond_11
    const/16 v21, 0x1

    .restart local v21    # "primaryChanged":Z
    goto/16 :goto_1

    .line 246
    :cond_12
    const/16 v23, 0x1

    .restart local v23    # "secondaryChanged":Z
    goto/16 :goto_2

    .line 265
    .restart local v19    # "previousPrimary":Lcom/android/incallui/Call;
    :cond_13
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 283
    :cond_14
    if-eqz v23, :cond_7

    .line 285
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    .line 286
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v8, 0x4

    if-ne v4, v8, :cond_15

    const/4 v4, 0x1

    .line 285
    :goto_d
    invoke-static {v6, v7, v4}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/Call;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 287
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryDisplayInfo()V

    .line 288
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/android/incallui/CallCardPresenter;->maybeStartSearch(Lcom/android/incallui/Call;Z)V

    .line 289
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    goto/16 :goto_4

    .line 286
    :cond_15
    const/4 v4, 0x0

    goto :goto_d

    .line 298
    .restart local v17    # "isEmergencyNumber":Z
    .local v18, "isSipCall":Z
    :cond_16
    const/16 v16, 0x1

    .local v16, "hasIccCard":Z
    goto/16 :goto_5

    .line 304
    .end local v16    # "hasIccCard":Z
    :cond_17
    invoke-static {}, Lcom/android/incallui/SomcInCallUiUtils;->isSipPhone()Z

    move-result v18

    .local v18, "isSipCall":Z
    goto/16 :goto_6

    .line 307
    :cond_18
    const/16 v4, 0x8

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryCallSubIndicatorVisibility(I)V

    goto/16 :goto_7

    .line 314
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getSubId()I

    move-result v4

    .line 313
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryCallSubIndicator(I)V

    goto/16 :goto_7

    .line 326
    .end local v17    # "isEmergencyNumber":Z
    .end local v18    # "isSipCall":Z
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-nez v4, :cond_1b

    const/16 v24, 0x0

    .line 327
    .local v24, "timerCallState":I
    :goto_e
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/incallui/CallCardPresenter;->isCallTimeVisibleState(I)Z

    move-result v4

    if-nez v4, :cond_a

    .line 330
    const-string/jumbo v4, "Canceling the calltime timer"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v4}, Lcom/android/incallui/CallTimer;->cancel()V

    .line 332
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/incallui/CallCardPresenter;->mBaseChronometerTime:J

    .line 333
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v4, v6, v7}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryCallElapsedTime(ZJ)V

    goto/16 :goto_8

    .line 326
    .end local v24    # "timerCallState":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v24

    .restart local v24    # "timerCallState":I
    goto :goto_e

    .line 351
    .end local v24    # "timerCallState":I
    .restart local v5    # "callState":I
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 355
    new-instance v8, Landroid/telecom/DisconnectCause;

    const/4 v6, 0x0

    invoke-direct {v8, v6}, Landroid/telecom/DisconnectCause;-><init>(I)V

    .line 353
    const/4 v6, 0x0

    .line 354
    const/4 v7, 0x0

    .line 356
    const/4 v9, -0x1

    .line 357
    const/4 v10, 0x0

    .line 358
    const/4 v11, 0x0

    .line 359
    const/4 v12, 0x0

    .line 360
    const/4 v13, 0x0

    .line 361
    const/4 v14, 0x0

    .line 351
    invoke-interface/range {v4 .. v14}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setCallState(IIILandroid/telecom/DisconnectCause;ILjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZ)V

    .line 362
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showHdAudioIndicator(Z)V

    goto/16 :goto_9

    .line 369
    :cond_1d
    const/4 v6, 0x0

    move v7, v6

    goto/16 :goto_a

    .line 370
    :cond_1e
    const/4 v6, 0x0

    goto/16 :goto_b

    .line 371
    :cond_1f
    const/4 v6, 0x0

    goto/16 :goto_c
.end method

.method public onUiReady(Lcom/android/incallui/CallCardPresenter$CallCardUi;)V
    .locals 1
    .param p1, "ui"    # Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    .line 166
    invoke-static {}, Lcom/android/incallui/SomcAmUtils;->isAmConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-static {}, Lcom/android/incallui/SomcAmProvider;->getInstance()Lcom/android/incallui/SomcAmProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/SomcAmProvider;->addListener(Lcom/android/incallui/SomcAmProvider$SomcAmListener;)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_1

    .line 172
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo()V

    .line 176
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 177
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 178
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 179
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V

    .line 163
    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1, "ui"    # Lcom/android/incallui/Ui;

    .prologue
    .line 163
    check-cast p1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .end local p1    # "ui":Lcom/android/incallui/Ui;
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardPresenter;->onUiReady(Lcom/android/incallui/CallCardPresenter$CallCardUi;)V

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/CallCardPresenter$CallCardUi;)V
    .locals 3
    .param p1, "ui"    # Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .prologue
    const/4 v2, 0x0

    .line 184
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    .line 187
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 188
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 189
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 190
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V

    .line 191
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    .line 192
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 195
    :cond_0
    invoke-static {}, Lcom/android/incallui/SomcAmUtils;->isAmConfig()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    invoke-static {}, Lcom/android/incallui/SomcAmProvider;->getInstance()Lcom/android/incallui/SomcAmProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/SomcAmProvider;->removeListener(Lcom/android/incallui/SomcAmProvider$SomcAmListener;)V

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mContactInfoUpdatedListener:Lcom/android/incallui/ContactInfoCache$ContactInfoUpdatedListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/ContactInfoCache;->removeContactInfoUpdatedListener(Lcom/android/incallui/ContactInfoCache$ContactInfoUpdatedListener;)V

    .line 203
    iput-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    .line 204
    iput-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 205
    iput-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 183
    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1, "ui"    # Lcom/android/incallui/Ui;

    .prologue
    .line 183
    check-cast p1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .end local p1    # "ui":Lcom/android/incallui/Ui;
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardPresenter;->onUiUnready(Lcom/android/incallui/CallCardPresenter$CallCardUi;)V

    return-void
.end method

.method public onWidgetAreaUsedChanged(ZZLandroid/view/ViewGroup;)V
    .locals 11
    .param p1, "fgAreaUsed"    # Z
    .param p2, "bgAreaUsed"    # Z
    .param p3, "viewToAnimate"    # Landroid/view/ViewGroup;

    .prologue
    .line 1049
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 1050
    .local v0, "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    if-nez v0, :cond_0

    .line 1051
    return-void

    .line 1053
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setWidgetAreaUsed(ZZLandroid/view/ViewGroup;)V

    .line 1055
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v1, :cond_1

    .line 1057
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    .line 1058
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v2

    .line 1059
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v3

    .line 1060
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v4

    .line 1061
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getLastPreciseDisconnectCause()I

    move-result v5

    .line 1062
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getConnectionLabel()Ljava/lang/String;

    move-result-object v6

    .line 1063
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getCallStateIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1064
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getGatewayNumber()Ljava/lang/String;

    move-result-object v8

    .line 1065
    iget-object v9, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/android/incallui/Call;->hasProperty(I)Z

    move-result v9

    .line 1066
    iget-object v10, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v10}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v10

    .line 1056
    invoke-interface/range {v0 .. v10}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setCallState(IIILandroid/telecom/DisconnectCause;ILjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZ)V

    .line 1067
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v1, :cond_1

    .line 1068
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v2, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    .line 1069
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v3, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    const/4 v4, 0x1

    .line 1068
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1048
    :cond_1
    return-void
.end method

.method public secondaryInfoClicked()V
    .locals 2

    .prologue
    .line 916
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    .line 917
    const-string/jumbo v0, "Secondary info clicked but no secondary call."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 918
    return-void

    .line 921
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Swapping call to foreground: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 922
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    .line 915
    return-void
.end method

.method public updateCallTime()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 549
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 551
    .local v2, "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    if-nez v2, :cond_1

    .line 552
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v3}, Lcom/android/incallui/CallTimer;->cancel()V

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->isPrimaryCallActive()Z

    move-result v3

    if-nez v3, :cond_3

    .line 554
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/incallui/CallCardPresenter;->isCallTimeVisibleState(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 557
    :goto_1
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v3}, Lcom/android/incallui/CallTimer;->cancel()V

    .line 558
    iput-wide v6, p0, Lcom/android/incallui/CallCardPresenter;->mBaseChronometerTime:J

    goto :goto_0

    .line 555
    :cond_2
    const/4 v3, 0x0

    invoke-interface {v2, v3, v6, v7}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryCallElapsedTime(ZJ)V

    goto :goto_1

    .line 559
    :cond_3
    iget-wide v4, p0, Lcom/android/incallui/CallCardPresenter;->mBaseChronometerTime:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 560
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/incallui/CallCardPresenter;->mBaseChronometerTime:J

    sub-long v0, v4, v6

    .line 561
    .local v0, "duration":J
    const/4 v3, 0x1

    invoke-interface {v2, v3, v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryCallElapsedTime(ZJ)V

    goto :goto_0
.end method
