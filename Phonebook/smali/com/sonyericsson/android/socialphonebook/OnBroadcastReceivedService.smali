.class public Lcom/sonyericsson/android/socialphonebook/OnBroadcastReceivedService;
.super Landroid/app/IntentService;
.source "OnBroadcastReceivedService.java"


# static fields
.field private static final ACTIVITY_SETUP_ACTION:Ljava/lang/String; = "activity_setup_action"

.field private static final BROADCAST_LOCAL_PROFILE_CREATED:Ljava/lang/String; = "com.sonyericsson.android.socialphonebook.LOCAL_PROFILE_CREATED"

.field private static final BROADCAST_PROFILE_CREATED_TARGET_PACKAGE:Ljava/lang/String; = "com.sonyericsson.customization.presetcontacts"

.field private static final LOAD_PROFILE_ACTION:Ljava/lang/String; = "load_profile_action"

.field public static final SMS_DISABLED_COMPONENTS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field public static final VOICE_DISABLED_COMPONENTS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    const-class v0, Lcom/sonyericsson/android/socialphonebook/OnBroadcastReceivedService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/OnBroadcastReceivedService;->TAG:Ljava/lang/String;

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 33
    const-string/jumbo v1, "com.sonyericsson.android.socialphonebook.activities.PhoneActivity"

    aput-object v1, v0, v3

    .line 34
    const-string/jumbo v1, "com.sonyericsson.android.socialphonebook.DialerEntryActivity"

    aput-object v1, v0, v4

    const-string/jumbo v1, "alias.DialShortcut"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 35
    const-string/jumbo v1, "com.sonyericsson.android.socialphonebook.SdnContactsListActivity"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 32
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/OnBroadcastReceivedService;->VOICE_DISABLED_COMPONENTS:[Ljava/lang/String;

    .line 37
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "alias.MessageShortcut"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/OnBroadcastReceivedService;->SMS_DISABLED_COMPONENTS:[Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/OnBroadcastReceivedService;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method private changeComponentEnabledState(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p3, "component"    # Ljava/lang/String;
    .param p4, "state"    # I

    .prologue
    .line 133
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 135
    .local v0, "componentName":Landroid/content/ComponentName;
    const/4 v1, 0x1

    .line 134
    invoke-virtual {p2, v0, p4, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 132
    return-void
.end method

.method public static createActivitySetupIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonyericsson/android/socialphonebook/OnBroadcastReceivedService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "activity_setup_action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    return-object v0
.end method

.method public static createLoadLocalProfileIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonyericsson/android/socialphonebook/OnBroadcastReceivedService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "load_profile_action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    return-object v0
.end method

.method private disableComponent(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p3, "component"    # Ljava/lang/String;

    .prologue
    .line 120
    const/4 v0, 0x2

    .line 119
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonyericsson/android/socialphonebook/OnBroadcastReceivedService;->changeComponentEnabledState(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;I)V

    .line 118
    return-void
.end method

.method private disableComponents(Landroid/content/Context;Landroid/content/pm/PackageManager;[Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p3, "components"    # [Ljava/lang/String;

    .prologue
    .line 105
    const/4 v1, 0x0

    array-length v2, p3

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p3, v1

    .line 106
    .local v0, "component":Ljava/lang/String;
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/socialphonebook/OnBroadcastReceivedService;->disableComponent(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "component":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/OnBroadcastReceivedService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 64
    .local v2, "context":Landroid/content/Context;
    const-string/jumbo v4, "load_profile_action"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 67
    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/sonyericsson/android/socialphonebook/LocalProfile;->loadProfile(Landroid/content/Context;Z)V

    .line 72
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.sonyericsson.android.socialphonebook.LOCAL_PROFILE_CREATED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .local v1, "broadcastIntent":Landroid/content/Intent;
    const-string/jumbo v4, "com.sonyericsson.customization.presetcontacts"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const/high16 v4, 0x20000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/OnBroadcastReceivedService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 76
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/OnBroadcastReceivedService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "load_profile_action completed."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .end local v1    # "broadcastIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const-string/jumbo v4, "activity_setup_action"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 78
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 80
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/SystemResourcesHelper;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_2

    .line 81
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/OnBroadcastReceivedService;->VOICE_DISABLED_COMPONENTS:[Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/sonyericsson/android/socialphonebook/OnBroadcastReceivedService;->disableComponents(Landroid/content/Context;Landroid/content/pm/PackageManager;[Ljava/lang/String;)V

    .line 83
    :cond_2
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/SystemResourcesHelper;->isSmsCapable()Z

    move-result v4

    if-nez v4, :cond_3

    .line 84
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/OnBroadcastReceivedService;->SMS_DISABLED_COMPONENTS:[Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/sonyericsson/android/socialphonebook/OnBroadcastReceivedService;->disableComponents(Landroid/content/Context;Landroid/content/pm/PackageManager;[Ljava/lang/String;)V

    .line 90
    :cond_3
    const-class v4, Lcom/sonyericsson/android/socialphonebook/receivers/ActivitySetupReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/sonyericsson/android/socialphonebook/OnBroadcastReceivedService;->disableComponent(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    .line 91
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/OnBroadcastReceivedService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "activity_setup_action completed."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
