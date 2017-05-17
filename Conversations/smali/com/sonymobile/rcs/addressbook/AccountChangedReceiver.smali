.class public Lcom/sonymobile/rcs/addressbook/AccountChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccountChangedReceiver.java"


# instance fields
.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/addressbook/AccountChangedReceiver;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    return-void
.end method

.method public static setAccountResetByEndUser(Z)V
    .locals 2
    .param p0, "value"    # Z

    .prologue
    .line 91
    invoke-static {}, Lcom/sonymobile/rcs/platform/registry/RegistryFactory;->getFactory()Lcom/sonymobile/rcs/platform/registry/RegistryFactory;

    move-result-object v0

    const-string/jumbo v1, "RcsAccountManualyDeleted"

    invoke-virtual {v0, v1, p0}, Lcom/sonymobile/rcs/platform/registry/RegistryFactory;->writeBoolean(Ljava/lang/String;Z)V

    .line 92
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-static {p1}, Lcom/sonymobile/rcs/platform/AndroidFactory;->setApplicationContext(Landroid/content/Context;)V

    .line 61
    invoke-static {p1}, Lcom/sonymobile/rcs/service/LauncherUtils;->getAccountUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "account_username":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/sonymobile/rcs/addressbook/AuthenticationService;->getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    .line 65
    .local v1, "mAccount":Landroid/accounts/Account;
    if-eqz v1, :cond_1

    .line 71
    invoke-static {v2}, Lcom/sonymobile/rcs/addressbook/AccountChangedReceiver;->setAccountResetByEndUser(Z)V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/rcs/addressbook/AccountChangedReceiver;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/sonymobile/rcs/addressbook/AccountChangedReceiver;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "RCS account has been deleted"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method
