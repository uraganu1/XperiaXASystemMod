.class public Lcom/sonymobile/rcs/addressbook/AuthenticationService;
.super Landroid/app/Service;
.source "AuthenticationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/rcs/addressbook/AuthenticationService$RcsContactsAccountAuthenticator;
    }
.end annotation


# static fields
.field private static logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# instance fields
.field private mAuthenticator:Lcom/sonymobile/rcs/addressbook/AuthenticationService$RcsContactsAccountAuthenticator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/sonymobile/rcs/addressbook/AuthenticationService;

    .line 61
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/rcs/addressbook/AuthenticationService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 193
    return-void
.end method

.method public static createRcsAccount(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "enableSync"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 95
    invoke-static {p0}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->createInstance(Landroid/content/Context;)V

    .line 98
    invoke-static {p0, p1}, Lcom/sonymobile/rcs/addressbook/AuthenticationService;->getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v3

    .line 99
    .local v3, "mAccount":Landroid/accounts/Account;
    if-eqz v3, :cond_2

    .line 112
    :cond_0
    if-nez p2, :cond_4

    :goto_0
    const-string/jumbo v5, "com.android.contacts"

    .line 115
    invoke-static {v3, v5, p2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 116
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v5, "account_name"

    .line 117
    invoke-virtual {v1, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "account_type"

    const-string/jumbo v6, "com.sonymobile.rcs"

    .line 118
    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "group_visible"

    .line 119
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :try_start_0
    const-string/jumbo v5, "ungrouped_visible"

    .line 121
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 130
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->createMyContact()J

    .line 131
    return-void

    .line 100
    .end local v1    # "contentValues":Landroid/content/ContentValues;
    :cond_2
    new-instance v3, Landroid/accounts/Account;

    .end local v3    # "mAccount":Landroid/accounts/Account;
    const-string/jumbo v5, "com.sonymobile.rcs"

    invoke-direct {v3, p1, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .restart local v3    # "mAccount":Landroid/accounts/Account;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 102
    .local v0, "accountManager":Landroid/accounts/AccountManager;
    invoke-virtual {v0, v3, v6, v6}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v4

    .line 103
    .local v4, "resource":Z
    if-nez v4, :cond_0

    .line 104
    sget-object v5, Lcom/sonymobile/rcs/addressbook/AuthenticationService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_3

    .line 107
    :goto_2
    return-void

    .line 105
    :cond_3
    sget-object v5, Lcom/sonymobile/rcs/addressbook/AuthenticationService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to create account for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto :goto_2

    .end local v0    # "accountManager":Landroid/accounts/AccountManager;
    .end local v4    # "resource":Z
    :cond_4
    const-string/jumbo v5, "com.android.contacts"

    const/4 v6, 0x1

    .line 113
    invoke-static {v3, v5, v6}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_0

    .line 126
    .restart local v1    # "contentValues":Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 123
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/sonymobile/rcs/addressbook/AuthenticationService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 124
    sget-object v5, Lcom/sonymobile/rcs/addressbook/AuthenticationService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Update UNGROUPED_VISIBLE error"

    invoke-virtual {v5, v6, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .local v0, "accountManager":Landroid/accounts/AccountManager;
    const-string/jumbo v5, "com.sonymobile.rcs"

    .line 72
    invoke-virtual {v0, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    .local v4, "mAccounts":[Landroid/accounts/Account;
    const/4 v3, 0x0

    .line 75
    .local v3, "mAccount":Landroid/accounts/Account;
    array-length v2, v4

    .local v2, "length":I
    const/4 v1, 0x0

    .line 76
    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 82
    .end local v3    # "mAccount":Landroid/accounts/Account;
    :goto_1
    return-object v3

    .line 77
    .restart local v3    # "mAccount":Landroid/accounts/Account;
    :cond_0
    aget-object v5, v4, v1

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_1
    aget-object v3, v4, v1

    .local v3, "mAccount":Landroid/accounts/Account;
    goto :goto_1
.end method

.method public static removeRcsAccount(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "excludeUsername"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 155
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .local v0, "accountManager":Landroid/accounts/AccountManager;
    const-string/jumbo v4, "com.sonymobile.rcs"

    .line 156
    invoke-virtual {v0, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 158
    .local v3, "mAccounts":[Landroid/accounts/Account;
    array-length v2, v3

    .local v2, "length":I
    const/4 v1, 0x0

    .line 159
    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 164
    return-void

    .line 160
    :cond_0
    aget-object v4, v3, v1

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 159
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    :cond_1
    aget-object v4, v3, v1

    invoke-virtual {v0, v4, v5, v5}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-string/jumbo v0, "android.accounts.AccountAuthenticator"

    .line 180
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    sget-object v0, Lcom/sonymobile/rcs/addressbook/AuthenticationService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    const/4 v0, 0x0

    .line 187
    return-object v0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/addressbook/AuthenticationService;->mAuthenticator:Lcom/sonymobile/rcs/addressbook/AuthenticationService$RcsContactsAccountAuthenticator;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/addressbook/AuthenticationService$RcsContactsAccountAuthenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 185
    :cond_1
    sget-object v0, Lcom/sonymobile/rcs/addressbook/AuthenticationService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bound with unknown intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 171
    new-instance v0, Lcom/sonymobile/rcs/addressbook/AuthenticationService$RcsContactsAccountAuthenticator;

    invoke-direct {v0, p0}, Lcom/sonymobile/rcs/addressbook/AuthenticationService$RcsContactsAccountAuthenticator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/addressbook/AuthenticationService;->mAuthenticator:Lcom/sonymobile/rcs/addressbook/AuthenticationService$RcsContactsAccountAuthenticator;

    .line 172
    return-void
.end method
