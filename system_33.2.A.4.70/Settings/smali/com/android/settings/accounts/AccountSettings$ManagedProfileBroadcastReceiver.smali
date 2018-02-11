.class Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManagedProfileBroadcastReceiver"
.end annotation


# instance fields
.field private listeningToManagedProfileEvents:Z

.field final synthetic this$0:Lcom/android/settings/accounts/AccountSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/accounts/AccountSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/accounts/AccountSettings;

    .prologue
    .line 532
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/accounts/AccountSettings;Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/accounts/AccountSettings;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;-><init>(Lcom/android/settings/accounts/AccountSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 537
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 538
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 537
    if-eqz v0, :cond_1

    .line 539
    :cond_0
    const-string/jumbo v0, "AccountSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received broadcast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v0}, Lcom/android/settings/accounts/AccountSettings;->-wrap2(Lcom/android/settings/accounts/AccountSettings;)V

    .line 542
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v0}, Lcom/android/settings/accounts/AccountSettings;->-wrap0(Lcom/android/settings/accounts/AccountSettings;)V

    .line 544
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AccountSettings;->updateUi()V

    .line 545
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v0}, Lcom/android/settings/accounts/AccountSettings;->-wrap1(Lcom/android/settings/accounts/AccountSettings;)V

    .line 548
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 549
    return-void

    .line 551
    :cond_1
    const-string/jumbo v0, "AccountSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot handle received broadcast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 555
    iget-boolean v1, p0, Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->listeningToManagedProfileEvents:Z

    if-nez v1, :cond_0

    .line 556
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 557
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 558
    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 559
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 560
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->listeningToManagedProfileEvents:Z

    .line 554
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 565
    iget-boolean v0, p0, Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->listeningToManagedProfileEvents:Z

    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 567
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->listeningToManagedProfileEvents:Z

    .line 564
    :cond_0
    return-void
.end method
