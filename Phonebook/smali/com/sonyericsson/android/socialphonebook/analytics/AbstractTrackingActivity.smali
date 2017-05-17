.class public Lcom/sonyericsson/android/socialphonebook/analytics/AbstractTrackingActivity;
.super Lcom/android/contacts/activities/TransactionSafeActivity;
.source "AbstractTrackingActivity.java"


# instance fields
.field protected final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/contacts/activities/TransactionSafeActivity;-><init>()V

    .line 28
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/analytics/AbstractTrackingActivity;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/AbstractTrackingActivity;->TAG:Ljava/lang/String;

    .line 26
    return-void
.end method

.method private isSdnAccountAvailable(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 103
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 104
    .local v1, "accountManager":Landroid/accounts/AccountManager;
    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v0, v4, v2

    .line 105
    .local v0, "account":Landroid/accounts/Account;
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string/jumbo v7, "SDN contacts"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 106
    const/4 v2, 0x1

    return v2

    .line 104
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_1
    return v3
.end method

.method private isSimReady(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    const-string/jumbo v1, "phone"

    .line 91
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 93
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private pushSimContactsIfEnabled(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/analytics/AbstractTrackingActivity;->isSimReady(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/analytics/AbstractTrackingActivity;->isSdnAccountAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->getInstance()Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    move-result-object v0

    .line 60
    const v1, 0x7f0901c8

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 61
    const v2, 0x7f0901ce

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 62
    const v3, 0x7f0901df

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 63
    const-wide/16 v4, 0x0

    .line 59
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushOneTimeEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 57
    :cond_0
    return-void
.end method

.method private pushSpeedDialIfEnabled(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v6

    .line 75
    .local v6, "config":Lcom/sonyericsson/android/socialphonebook/Configuration;
    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getEnableSpeedDial()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->getInstance()Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    move-result-object v0

    .line 77
    const v1, 0x7f0901c8

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 78
    const v2, 0x7f0901ce

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 79
    const v3, 0x7f0901de

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 80
    const-wide/16 v4, 0x0

    .line 76
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushOneTimeEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/analytics/AbstractTrackingActivity;->TAG:Ljava/lang/String;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 33
    invoke-super {p0, p1}, Lcom/android/contacts/activities/TransactionSafeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->getInstance()Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    move-result-object v0

    .line 35
    .local v0, "wrapper":Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->subscribeGaSettingChanges()V

    .line 36
    const v2, 0x7f0901c8

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/analytics/AbstractTrackingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "newUser":Ljava/lang/String;
    const-string/jumbo v3, "new_user"

    .line 38
    const-wide/16 v4, 0x0

    move-object v2, v1

    .line 37
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushOneTimeEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 39
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/analytics/AbstractTrackingActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/socialphonebook/analytics/AbstractTrackingActivity;->pushSpeedDialIfEnabled(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/analytics/AbstractTrackingActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/socialphonebook/analytics/AbstractTrackingActivity;->pushSimContactsIfEnabled(Landroid/content/Context;)V

    .line 41
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/analytics/AbstractTrackingActivity;->TAG:Ljava/lang/String;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/AbstractTrackingActivity;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->getInstance()Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->unsubscribeGaSettingChanges()V

    .line 48
    invoke-super {p0}, Lcom/android/contacts/activities/TransactionSafeActivity;->onDestroy()V

    .line 49
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/analytics/AbstractTrackingActivity;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 45
    return-void
.end method
