.class public Lcom/sonyericsson/conversations/ConversationsApp;
.super Landroid/app/Application;
.source "ConversationsApp.java"


# static fields
.field private static mLowMemoryManager:Lcom/sonyericsson/conversations/memory/LowMemoryManager;

.field private static sContext:Landroid/content/Context;

.field private static sMainLooperHandler:Landroid/os/Handler;


# instance fields
.field private mAppInitialized:Z

.field private mGaGtmSubscriber:Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;

.field private mSkinSeq:I


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ConversationsApp;)Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ConversationsApp;->mGaGtmSubscriber:Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/conversations/ConversationsApp;->mSkinSeq:I

    .line 62
    return-void
.end method

.method private enableComponents()V
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lcom/sonyericsson/conversations/ConversationsApp$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ConversationsApp$2;-><init>(Lcom/sonyericsson/conversations/ConversationsApp;)V

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ConversationsApp$2;->start()V

    .line 157
    return-void
.end method

.method private enableStrictMode(Z)V
    .locals 1
    .param p1, "setEnable"    # Z

    .prologue
    .line 206
    if-eqz p1, :cond_0

    .line 207
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectCustomSlowCalls()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 210
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectActivityLeaks()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 205
    :cond_0
    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/sonyericsson/conversations/ConversationsApp;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getLowMemoryManager()Lcom/sonyericsson/conversations/memory/LowMemoryManager;
    .locals 1

    .prologue
    .line 224
    sget-object v0, Lcom/sonyericsson/conversations/ConversationsApp;->mLowMemoryManager:Lcom/sonyericsson/conversations/memory/LowMemoryManager;

    return-object v0
.end method

.method public static getMainLooperHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 271
    sget-object v0, Lcom/sonyericsson/conversations/ConversationsApp;->sMainLooperHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getSkinSequence(Landroid/content/res/Configuration;)I
    .locals 5
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 249
    const/4 v2, -0x1

    .line 252
    .local v2, "skinSeq":I
    :try_start_0
    const-class v3, Landroid/content/res/Configuration;

    const-string/jumbo v4, "skinPackageSeq"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 253
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 254
    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 258
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return v2

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    const-string/jumbo v3, "Could not access skinPackageSeq"

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onSkinChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ConversationsApp;->getSkinSequence(Landroid/content/res/Configuration;)I

    move-result v0

    .line 263
    .local v0, "seq":I
    iget v1, p0, Lcom/sonyericsson/conversations/ConversationsApp;->mSkinSeq:I

    if-eq v1, v0, :cond_0

    .line 264
    iput v0, p0, Lcom/sonyericsson/conversations/ConversationsApp;->mSkinSeq:I

    .line 265
    invoke-static {}, Lcom/sonyericsson/conversations/util/ImageHandler;->clearCache()V

    .line 266
    invoke-static {}, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->resetActionBarBackground()V

    .line 261
    :cond_0
    return-void
.end method


# virtual methods
.method protected exitApis()V
    .locals 0

    .prologue
    .line 199
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->exitApis()V

    .line 198
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 140
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->init(Landroid/content/Context;)V

    .line 141
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ConversationsApp;->initApis()V

    .line 142
    invoke-static {}, Lcom/sonyericsson/conversations/util/ContactLookup;->getInstance()Lcom/sonyericsson/conversations/util/ContactLookup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/sonyericsson/conversations/util/ContactLookup;->init(Landroid/content/Context;Z)V

    .line 145
    new-instance v0, Lcom/sonyericsson/conversations/upgrade/UpgradeManager;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/upgrade/UpgradeManager;-><init>(Lcom/sonyericsson/conversations/ConversationsApp;)V

    .line 147
    .local v0, "upgradeManager":Lcom/sonyericsson/conversations/upgrade/UpgradeManager;
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/settings/SettingsManager;->getOnUpgradeListener()Lcom/sonyericsson/conversations/upgrade/OnUpgradeListener;

    move-result-object v1

    .line 146
    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/upgrade/UpgradeManager;->addOnUpgradeListener(Lcom/sonyericsson/conversations/upgrade/OnUpgradeListener;)V

    .line 148
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/upgrade/UpgradeManager;->upgradeAppDataIfNeeded()V

    .line 151
    sget-object v1, Lcom/sonyericsson/conversations/ConversationsApp;->sContext:Landroid/content/Context;

    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getContactManager()Lcom/sonyericsson/conversations/contact/ContactManager;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/util/ImageHandler;->init(Landroid/content/Context;Lcom/sonyericsson/conversations/contact/ContactManager;)V

    .line 152
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->updateBadgeIcon()V

    .line 153
    invoke-static {}, Lcom/sonyericsson/conversations/notifications/XmsDbReadStatusChangeListener;->getInstance()Lcom/sonyericsson/conversations/notifications/XmsDbReadStatusChangeListener;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sonyericsson/conversations/notifications/XmsDbReadStatusChangeListener;->init(Landroid/content/Context;)V

    .line 154
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ConversationsApp;->mAppInitialized:Z

    .line 139
    return-void
.end method

.method protected initApis()V
    .locals 0

    .prologue
    .line 180
    invoke-static {p0}, Lcom/sonyericsson/conversations/ApiHolder;->initApis(Landroid/app/Application;)V

    .line 178
    return-void
.end method

.method public isAppInitialized()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ConversationsApp;->mAppInitialized:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 218
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 219
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/layout/LayoutManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 220
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ConversationsApp;->onSkinChanged(Landroid/content/res/Configuration;)V

    .line 217
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 94
    invoke-static {p0}, Lcom/sonyericsson/conversations/util/LeakCanaryInstaller;->installLeakCanary(Landroid/app/Application;)V

    .line 97
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ConversationsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/sonyericsson/conversations/ConversationsApp;->sContext:Landroid/content/Context;

    .line 98
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/sonyericsson/conversations/ConversationsApp;->sMainLooperHandler:Landroid/os/Handler;

    .line 100
    new-instance v1, Lcom/sonyericsson/conversations/memory/LowMemoryManager;

    invoke-direct {v1}, Lcom/sonyericsson/conversations/memory/LowMemoryManager;-><init>()V

    sput-object v1, Lcom/sonyericsson/conversations/ConversationsApp;->mLowMemoryManager:Lcom/sonyericsson/conversations/memory/LowMemoryManager;

    .line 103
    invoke-static {p0}, Lcom/sonyericsson/conversations/settings/Settings;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/conversations/settings/Settings;

    .line 104
    invoke-static {}, Lcom/sonyericsson/conversations/model/ModelCache;->getInstance()Lcom/sonyericsson/conversations/model/ModelCache;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sonyericsson/conversations/model/ModelCache;->init(Landroid/content/Context;)V

    .line 105
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->init(Landroid/content/Context;)V

    .line 106
    invoke-static {p0}, Lcom/sonyericsson/conversations/ui/UiConfig;->init(Landroid/content/Context;)V

    .line 107
    sget-object v1, Lcom/sonyericsson/conversations/ConversationsApp;->sContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "country":Ljava/lang/String;
    invoke-static {v0}, Lcom/sonyericsson/conversations/util/AddressUtil;->setSimCountry(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/sonyericsson/provider/CapabilityUtil;->getInstance()Lcom/sonyericsson/provider/CapabilityUtil;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sonyericsson/provider/CapabilityUtil;->init(Landroid/content/Context;)V

    .line 111
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/mms/util/DownloadManager;->init(Landroid/content/Context;)V

    .line 112
    invoke-static {p0}, Lcom/android/mms/util/RateController;->init(Landroid/content/Context;)V

    .line 114
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/mms/layout/LayoutManager;->init(Landroid/content/Context;)V

    .line 115
    invoke-static {p0}, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->init(Landroid/content/Context;)V

    .line 118
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v2, "eng"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ConversationsApp;->enableStrictMode(Z)V

    .line 120
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ConversationsApp;->enableComponents()V

    .line 122
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ConversationsApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ConversationsApp;->getSkinSequence(Landroid/content/res/Configuration;)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/conversations/ConversationsApp;->mSkinSeq:I

    .line 124
    sget-object v1, Lcom/sonyericsson/conversations/ConversationsApp;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->hasMandatoryPermissions(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ConversationsApp;->init()V

    .line 127
    :cond_0
    new-instance v1, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;

    invoke-direct {v1, p0}, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ConversationsApp;->mGaGtmSubscriber:Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;

    .line 128
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sonyericsson/conversations/ConversationsApp$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ConversationsApp$1;-><init>(Lcom/sonyericsson/conversations/ConversationsApp;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 92
    return-void
.end method

.method public onTerminate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 185
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 186
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ConversationsApp;->exitApis()V

    .line 187
    invoke-static {}, Lcom/sonyericsson/conversations/util/ContactLookup;->getInstance()Lcom/sonyericsson/conversations/util/ContactLookup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/util/ContactLookup;->cleanup()V

    .line 188
    invoke-static {}, Lcom/sonyericsson/conversations/model/ModelCache;->getInstance()Lcom/sonyericsson/conversations/model/ModelCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/model/ModelCache;->cleanup(Landroid/content/Context;)V

    .line 189
    invoke-static {}, Lcom/sonyericsson/conversations/util/ImageHandler;->cleanup()V

    .line 190
    sget-object v0, Lcom/sonyericsson/conversations/ConversationsApp;->mLowMemoryManager:Lcom/sonyericsson/conversations/memory/LowMemoryManager;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/memory/LowMemoryManager;->unregisterListeners()V

    .line 191
    invoke-static {}, Lcom/sonyericsson/conversations/notifications/XmsDbReadStatusChangeListener;->getInstance()Lcom/sonyericsson/conversations/notifications/XmsDbReadStatusChangeListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/notifications/XmsDbReadStatusChangeListener;->cleanUp(Landroid/content/Context;)V

    .line 192
    sput-object v1, Lcom/sonyericsson/conversations/ConversationsApp;->sContext:Landroid/content/Context;

    .line 193
    iget-object v0, p0, Lcom/sonyericsson/conversations/ConversationsApp;->mGaGtmSubscriber:Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/conversations/ConversationsApp;->mGaGtmSubscriber:Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;

    invoke-virtual {v0}, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->unsubscribeGaSettingChanges()V

    .line 184
    :cond_0
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 229
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 230
    sget-boolean v0, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Trim memory level = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 233
    :cond_0
    sget-object v0, Lcom/sonyericsson/conversations/ConversationsApp;->mLowMemoryManager:Lcom/sonyericsson/conversations/memory/LowMemoryManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/memory/LowMemoryManager;->notifyOnTrimMemoryListeners(I)V

    .line 228
    return-void
.end method
