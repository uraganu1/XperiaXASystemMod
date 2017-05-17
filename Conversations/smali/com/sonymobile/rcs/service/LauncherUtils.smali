.class public Lcom/sonymobile/rcs/service/LauncherUtils;
.super Ljava/lang/Object;
.source "LauncherUtils.java"


# static fields
.field private static logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/sonymobile/rcs/service/LauncherUtils;

    .line 64
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/rcs/service/LauncherUtils;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forceLaunchRcsCoreService(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isOwnerLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    sget-object v1, Lcom/sonymobile/rcs/service/LauncherUtils;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 132
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->checkUserProfile()Z

    move-result v1

    if-nez v1, :cond_3

    .line 138
    :goto_1
    return-void

    .line 124
    :cond_0
    sget-object v1, Lcom/sonymobile/rcs/service/LauncherUtils;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 127
    :goto_2
    return-void

    .line 125
    :cond_1
    sget-object v1, Lcom/sonymobile/rcs/service/LauncherUtils;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Not force launching RCS service: Its guest/secondary user"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 130
    :cond_2
    sget-object v1, Lcom/sonymobile/rcs/service/LauncherUtils;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Force launch RCS core service"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_3
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setServiceActivationState(Z)V

    const-class v1, Lcom/sonymobile/rcs/service/RcsCoreService;

    const-string/jumbo v2, "com.sonymobile.rcs.SERVICE"

    .line 134
    invoke-static {v1, v2}, Lcom/sonymobile/rcs/utils/IntentUtil;->createExpicitIntent(Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 136
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1
.end method

.method public static getAccountUserName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 262
    invoke-static {p0}, Lcom/sonymobile/rcs/utils/JoynBrandingUtils;->isJoynBranding(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f05002d

    .line 265
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "account_username":Ljava/lang/String;
    :goto_0
    return-object v0

    .end local v0    # "account_username":Ljava/lang/String;
    :cond_0
    const v1, 0x7f05002c

    .line 263
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "account_username":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getLastUserAccount(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string/jumbo v1, "RCS"

    const/4 v2, 0x0

    .line 210
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "LastUserAccount"

    const/4 v2, 0x0

    .line 212
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getRegForbiddenCount(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v1, "RCS"

    .line 236
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "RegForbiddenCount"

    .line 238
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static launchRcsCoreService(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isOwnerLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    sget-object v1, Lcom/sonymobile/rcs/service/LauncherUtils;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_3

    .line 109
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isServiceActivated()Z

    move-result v1

    if-nez v1, :cond_4

    .line 115
    :cond_0
    :goto_1
    return-void

    .line 101
    :cond_1
    sget-object v1, Lcom/sonymobile/rcs/service/LauncherUtils;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 104
    :goto_2
    return-void

    .line 102
    :cond_2
    sget-object v1, Lcom/sonymobile/rcs/service/LauncherUtils;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Not launching RCS core service: Its guest/secondary user"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 107
    :cond_3
    sget-object v1, Lcom/sonymobile/rcs/service/LauncherUtils;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Launch RCS core service"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_4
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->checkUserProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Lcom/sonymobile/rcs/service/RcsCoreService;

    const-string/jumbo v2, "com.sonymobile.rcs.SERVICE"

    .line 111
    invoke-static {v1, v2}, Lcom/sonymobile/rcs/utils/IntentUtil;->createExpicitIntent(Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 113
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1
.end method

.method public static launchRcsService(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "boot"    # Z

    .prologue
    .line 74
    invoke-static {p0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->createInstance(Landroid/content/Context;)V

    .line 75
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isOwnerLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isTraceActivated()Z

    move-result v1

    sput-boolean v1, Lcom/sonymobile/rcs/utils/logger/Logger;->activationFlag:Z

    .line 84
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getTraceLevel()I

    move-result v1

    sput v1, Lcom/sonymobile/rcs/utils/logger/Logger;->traceLevel:I

    .line 86
    sget-object v1, Lcom/sonymobile/rcs/service/LauncherUtils;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 89
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonymobile/rcs/service/StartService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "boot"

    .line 90
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 92
    return-void

    .line 76
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    sget-object v1, Lcom/sonymobile/rcs/service/LauncherUtils;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 79
    :goto_1
    return-void

    .line 77
    :cond_1
    sget-object v1, Lcom/sonymobile/rcs/service/LauncherUtils;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Not launching RCS service: Its guest/secondary user"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 87
    :cond_2
    sget-object v1, Lcom/sonymobile/rcs/service/LauncherUtils;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Launch RCS service  (boot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static resetRcsConfig(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 160
    sget-object v0, Lcom/sonymobile/rcs/service/LauncherUtils;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    :goto_0
    invoke-static {p0}, Lcom/sonymobile/rcs/platform/AndroidFactory;->setApplicationContext(Landroid/content/Context;)V

    .line 167
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonymobile/rcs/service/RcsCoreService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 170
    invoke-static {p0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->createInstance(Landroid/content/Context;)V

    .line 171
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->resetConfigParameters()V

    .line 174
    invoke-static {p0}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->createInstance(Landroid/content/Context;)V

    .line 175
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->removeRcseRawContacts()V

    .line 176
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->deleteRCSEntries()V

    const/4 v0, 0x0

    .line 179
    invoke-static {p0, v0}, Lcom/sonymobile/rcs/addressbook/AuthenticationService;->removeRcsAccount(Landroid/content/Context;Ljava/lang/String;)V

    .line 182
    invoke-static {p0}, Lcom/sonymobile/rcs/platform/AndroidFactory;->setApplicationContext(Landroid/content/Context;)V

    .line 183
    invoke-static {v2}, Lcom/sonymobile/rcs/addressbook/AccountChangedReceiver;->setAccountResetByEndUser(Z)V

    .line 186
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setProvisioningTermsAccepted(Z)V

    .line 187
    return-void

    .line 161
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/service/LauncherUtils;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Reset RCS config"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setRegForbiddenCount(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I

    .prologue
    const-string/jumbo v2, "RCS"

    const/4 v3, 0x0

    .line 248
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 250
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "RegForbiddenCount"

    .line 251
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 252
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 253
    return-void
.end method

.method public static stopRcsCoreService(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    sget-object v1, Lcom/sonymobile/rcs/service/LauncherUtils;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    const-class v1, Lcom/sonymobile/rcs/service/RcsCoreService;

    const-string/jumbo v2, "com.sonymobile.rcs.SERVICE"

    .line 198
    invoke-static {v1, v2}, Lcom/sonymobile/rcs/utils/IntentUtil;->createExpicitIntent(Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 200
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 201
    return-void

    .line 196
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    sget-object v1, Lcom/sonymobile/rcs/service/LauncherUtils;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Stop RCS core service"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static stopRcsService(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    sget-object v0, Lcom/sonymobile/rcs/service/LauncherUtils;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonymobile/rcs/service/StartService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 150
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 151
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonymobile/rcs/service/RcsCoreService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 152
    return-void

    .line 147
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/service/LauncherUtils;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "Stop RCS service"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method
