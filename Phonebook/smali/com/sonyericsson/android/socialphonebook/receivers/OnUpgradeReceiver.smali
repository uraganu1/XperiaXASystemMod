.class public Lcom/sonyericsson/android/socialphonebook/receivers/OnUpgradeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OnUpgradeReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 32
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 33
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/SystemResourcesHelper;->isVoiceCapable()Z

    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 34
    new-instance v0, Landroid/content/ComponentName;

    .line 35
    const-class v3, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActivity;

    .line 34
    invoke-direct {v0, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .local v0, "callLogDetailActivityComponentName":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    .line 40
    .local v1, "callLogDetalState":I
    if-eq v1, v5, :cond_0

    .line 41
    invoke-virtual {v2, v0, v5, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 46
    .end local v0    # "callLogDetailActivityComponentName":Landroid/content/ComponentName;
    .end local v1    # "callLogDetalState":I
    :cond_0
    new-instance v3, Landroid/content/ComponentName;

    .line 47
    const-class v4, Lcom/sonyericsson/android/socialphonebook/receivers/OnUpgradeReceiver;

    .line 46
    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    const/4 v4, 0x2

    .line 46
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 30
    return-void
.end method
