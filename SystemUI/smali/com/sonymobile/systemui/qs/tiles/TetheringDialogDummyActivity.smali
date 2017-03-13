.class public Lcom/sonymobile/systemui/qs/tiles/TetheringDialogDummyActivity;
.super Landroid/app/Activity;
.source "TetheringDialogDummyActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x3

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 67
    if-ne p1, v4, :cond_2

    .line 68
    if-ne p2, v3, :cond_1

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sonymobile.intent.action.TETHER_CONFIRMATION_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "sendIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v2}, Lcom/sonymobile/systemui/qs/tiles/TetheringDialogDummyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 66
    .end local v0    # "sendIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    if-nez p2, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/TetheringDialogDummyActivity;->finish()V

    goto :goto_0

    .line 75
    :cond_2
    if-ne p1, v2, :cond_0

    .line 76
    const-string/jumbo v1, "TeteheringDialogDummy"

    const-string/jumbo v2, "Robin REQUEST_CODE_CONFIRM_DIALOG"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    if-ne p2, v3, :cond_3

    .line 78
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/TetheringDialogDummyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/settingslib/TetherUtil;->setWifiTethering(ZLandroid/content/Context;)Z

    .line 80
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/TetheringDialogDummyActivity;->finish()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/TetheringDialogDummyActivity;->finish()V

    .line 85
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/sonymobile/systemui/qs/tiles/TetheringDialogDummyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 48
    const v5, 0x11200bf

    .line 47
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v4, "com.sonymobile.intent.action.Telephony.MPDN_SUPPORT_CHANGED_ACTION"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, v7, v0}, Lcom/sonymobile/systemui/qs/tiles/TetheringDialogDummyActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .line 52
    .local v3, "stickyIntent":Landroid/content/Intent;
    if-eqz v3, :cond_0

    .line 53
    const-string/jumbo v4, "mpdnSupport"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 61
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v3    # "stickyIntent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.sonymobile.intent.action.TETHER_CONFIRMATION_DIALOG"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v1, "intent":Landroid/content/Intent;
    const/4 v4, 0x3

    invoke-virtual {p0, v1, v4}, Lcom/sonymobile/systemui/qs/tiles/TetheringDialogDummyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 44
    return-void

    .line 54
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    .restart local v3    # "stickyIntent":Landroid/content/Intent;
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.sonymobile.intent.action.TETHER_ALLOW_DIALOG"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .local v2, "sendIntent":Landroid/content/Intent;
    invoke-virtual {p0, v2, v6}, Lcom/sonymobile/systemui/qs/tiles/TetheringDialogDummyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 57
    return-void
.end method
