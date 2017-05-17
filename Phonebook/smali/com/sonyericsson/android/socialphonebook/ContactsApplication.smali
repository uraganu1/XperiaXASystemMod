.class public final Lcom/sonyericsson/android/socialphonebook/ContactsApplication;
.super Landroid/app/Application;
.source "ContactsApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/ContactsApplication$VerizonCloudAppStateObserver;
    }
.end annotation


# static fields
.field private static final ENABLE_FRAGMENT_LOG:Z

.field private static final ENABLE_LOADER_LOG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sInjectedServices:Lcom/android/contacts/common/testing/InjectedServices;

.field private static sIsGawServiceStarted:Z


# instance fields
.field private mCurrentConfiguration:Landroid/content/res/Configuration;

.field private mUseStaticContactPhoto:Z

.field private mVerizonCloudAppStateObserver:Lcom/sonyericsson/android/socialphonebook/ContactsApplication$VerizonCloudAppStateObserver;


# direct methods
.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/ContactsApplication;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsApplication;->updateVerizonCloudStatus()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/sonyericsson/android/socialphonebook/ContactsApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ContactsApplication;->TAG:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sonyericsson/android/socialphonebook/ContactsApplication;->sIsGawServiceStarted:Z

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static injectServices(Lcom/android/contacts/common/testing/InjectedServices;)V
    .locals 0
    .param p0, "services"    # Lcom/android/contacts/common/testing/InjectedServices;
    .annotation build Lcom/sonyericsson/android/socialphonebook/legacy/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 79
    sput-object p0, Lcom/sonyericsson/android/socialphonebook/ContactsApplication;->sInjectedServices:Lcom/android/contacts/common/testing/InjectedServices;

    .line 78
    return-void
.end method

.method private registerVerizonCloudStatusObserver()V
    .locals 4

    .prologue
    .line 189
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ContactsApplication$VerizonCloudAppStateObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/socialphonebook/ContactsApplication$VerizonCloudAppStateObserver;-><init>(Lcom/sonyericsson/android/socialphonebook/ContactsApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsApplication;->mVerizonCloudAppStateObserver:Lcom/sonyericsson/android/socialphonebook/ContactsApplication$VerizonCloudAppStateObserver;

    .line 190
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.fusionone.android.sync.provider.chsettings/settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 191
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsApplication;->mVerizonCloudAppStateObserver:Lcom/sonyericsson/android/socialphonebook/ContactsApplication$VerizonCloudAppStateObserver;

    const/4 v3, 0x0

    .line 190
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 188
    return-void
.end method

.method public static startGawServiceIfNeeded(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 225
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ContactsApplication;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 226
    sget-boolean v0, Lcom/sonyericsson/android/socialphonebook/ContactsApplication;->sIsGawServiceStarted:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "android.permission.READ_CONTACTS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ContactsApplication;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 229
    return-void

    .line 231
    :cond_1
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isGawEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/gaw/GawService;->createQueryGawContactsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 233
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sonyericsson/android/socialphonebook/ContactsApplication;->sIsGawServiceStarted:Z

    .line 235
    :cond_2
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ContactsApplication;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method private updateVerizonCloudStatus()V
    .locals 2

    .prologue
    .line 198
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/VerizonCloudUtils$CloudStatusUpdateAsyncTask;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/VerizonCloudUtils$CloudStatusUpdateAsyncTask;-><init>(Landroid/content/ContentResolver;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/VerizonCloudUtils$CloudStatusUpdateAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 197
    return-void
.end method


# virtual methods
.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    .prologue
    .line 84
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ContactsApplication;->sInjectedServices:Lcom/android/contacts/common/testing/InjectedServices;

    if-eqz v1, :cond_0

    .line 85
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ContactsApplication;->sInjectedServices:Lcom/android/contacts/common/testing/InjectedServices;

    invoke-virtual {v1}, Lcom/android/contacts/common/testing/InjectedServices;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 86
    .local v0, "resolver":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 87
    return-object v0

    .line 90
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    return-object v1
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 95
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ContactsApplication;->sInjectedServices:Lcom/android/contacts/common/testing/InjectedServices;

    if-eqz v1, :cond_0

    .line 96
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ContactsApplication;->sInjectedServices:Lcom/android/contacts/common/testing/InjectedServices;

    invoke-virtual {v1}, Lcom/android/contacts/common/testing/InjectedServices;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 97
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 98
    return-object v0

    .line 102
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    return-object v1
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 107
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ContactsApplication;->sInjectedServices:Lcom/android/contacts/common/testing/InjectedServices;

    if-eqz v1, :cond_0

    .line 108
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ContactsApplication;->sInjectedServices:Lcom/android/contacts/common/testing/InjectedServices;

    invoke-virtual {v1, p1}, Lcom/android/contacts/common/testing/InjectedServices;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 109
    .local v0, "service":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 110
    return-object v0

    .line 114
    .end local v0    # "service":Ljava/lang/Object;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 165
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isSkinningContactPictureEnabled()Z

    move-result v3

    .line 168
    .local v3, "useStaticContactPhoto":Z
    iget-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/ContactsApplication;->mUseStaticContactPhoto:Z

    if-nez v4, :cond_1

    .line 169
    move v1, v3

    .line 170
    :goto_0
    new-instance v2, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;

    invoke-direct {v2}, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;-><init>()V

    .line 175
    .local v2, "skinHelper":Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;
    :try_start_0
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ContactsApplication;->mCurrentConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v4

    .line 174
    invoke-virtual {v2, p0, v4}, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->isSkinConfigurationChanged(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 176
    invoke-static {}, Lcom/android/contacts/photomanager/ContactPhotoManager;->clearInstance()V

    .line 177
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ContactsApplication;->mCurrentConfiguration:Landroid/content/res/Configuration;

    .line 178
    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsApplication;->mUseStaticContactPhoto:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :cond_0
    :goto_1
    return-void

    .line 168
    .end local v2    # "skinHelper":Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;
    :cond_1
    const/4 v1, 0x1

    .local v1, "shouldClearDefaultContactResoruces":Z
    goto :goto_0

    .line 180
    .end local v1    # "shouldClearDefaultContactResoruces":Z
    .restart local v2    # "skinHelper":Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/ContactsApplication;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "RemoteException during checking if theme has been chagned"

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 118
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ContactsApplication;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 119
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 120
    const-string/jumbo v0, "ContactsPerf"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const-string/jumbo v0, "ContactsPerf"

    const-string/jumbo v1, "ContactsApplication.onCreate start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isSkinningContactPictureEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsApplication;->mUseStaticContactPhoto:Z

    .line 124
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsApplication;->mCurrentConfiguration:Landroid/content/res/Configuration;

    .line 129
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/upgrade/Upgrade;->upgrade(Landroid/content/Context;)V

    .line 132
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 137
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 137
    if-eqz v0, :cond_2

    .line 139
    :cond_1
    invoke-static {}, Landroid/os/StrictMode;->enableDefaults()V

    .line 143
    :cond_2
    const-string/jumbo v0, "verizon"

    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getBrandName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsApplication;->updateVerizonCloudStatus()V

    .line 146
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsApplication;->registerVerizonCloudStatusObserver()V

    .line 152
    :cond_3
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/vilte/VilteFactory;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;->onApplicationCreate()V

    .line 155
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->getInstance()Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->init(Landroid/content/Context;)V

    .line 158
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsApplication;->startGawServiceIfNeeded(Landroid/content/Context;)V

    .line 159
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ContactsApplication;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 117
    return-void
.end method
