.class public Lcom/sonyericsson/conversations/provisioning/NoMmsWelcomeScreenActivity;
.super Landroid/app/Activity;
.source "NoMmsWelcomeScreenActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 62
    const v0, 0xbada

    if-ne p1, v0, :cond_1

    .line 63
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/settings/SettingsManager;->isDefaultSmsPackage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/provisioning/NoMmsWelcomeScreenActivity;->finish()V

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstance"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v2, 0x7f030021

    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/provisioning/NoMmsWelcomeScreenActivity;->setContentView(I)V

    .line 31
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isTablet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 33
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/provisioning/NoMmsWelcomeScreenActivity;->setRequestedOrientation(I)V

    .line 36
    :cond_0
    const v2, 0x7f0d0056

    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/provisioning/NoMmsWelcomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 37
    .local v1, "welcomeScreenButton":Landroid/widget/Button;
    new-instance v2, Lcom/sonyericsson/conversations/provisioning/NoMmsWelcomeScreenActivity$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/provisioning/NoMmsWelcomeScreenActivity$1;-><init>(Lcom/sonyericsson/conversations/provisioning/NoMmsWelcomeScreenActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRcseConfigured()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/settings/SettingsManager;->isDefaultSmsPackage()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 27
    :cond_1
    :goto_0
    return-void

    .line 48
    :cond_2
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v2

    .line 49
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/provisioning/NoMmsWelcomeScreenActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 48
    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getChangeDefaultSmsPackageIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 50
    .local v0, "intent":Landroid/content/Intent;
    const v2, 0xbada

    invoke-virtual {p0, v0, v2}, Lcom/sonyericsson/conversations/provisioning/NoMmsWelcomeScreenActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 56
    const v0, 0xbada

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/provisioning/NoMmsWelcomeScreenActivity;->finishActivity(I)V

    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 55
    return-void
.end method
