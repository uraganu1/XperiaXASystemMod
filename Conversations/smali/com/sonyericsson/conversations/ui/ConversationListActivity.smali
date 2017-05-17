.class public Lcom/sonyericsson/conversations/ui/ConversationListActivity;
.super Landroid/app/Activity;
.source "ConversationListActivity.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListenerProvider;


# instance fields
.field mEnableForceMessageType:Z

.field private mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private createUIController(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onCreate(Landroid/os/Bundle;)V

    .line 100
    return-void
.end method

.method private redirectIfLaunchedFromHistory()V
    .locals 4

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 78
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 79
    return-void

    .line 81
    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 83
    const-string/jumbo v2, "android.intent.action.SEND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 84
    const-string/jumbo v2, "android.intent.action.SENDTO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 82
    if-eqz v2, :cond_2

    .line 85
    :cond_1
    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    :cond_2
    return-void
.end method

.method private redirectIfNoPermissions()Z
    .locals 3

    .prologue
    .line 90
    invoke-static {p0}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->hasMandatoryPermissions(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const/4 v1, 0x0

    return v1

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 94
    const-class v2, Lcom/sonyericsson/conversations/permission/PermissionControllerActivity;

    .line 93
    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 95
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->startActivity(Landroid/content/Intent;)V

    .line 96
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->finish()V

    .line 97
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public getConversationEventListener()Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListener;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    return-object v0
.end method

.method public getUiController()Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isSearchBoxVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    if-nez v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->finish()V

    .line 263
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onActivityResult(IILandroid/content/Intent;)V

    .line 266
    sparse-switch p1, :sswitch_data_0

    .line 286
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 259
    :cond_1
    :goto_0
    return-void

    .line 268
    :sswitch_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRcseConfigured()Z

    move-result v0

    if-nez v0, :cond_1

    .line 269
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/settings/SettingsManager;->isDefaultSmsPackage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 270
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->finish()V

    goto :goto_0

    .line 274
    :sswitch_1
    const/4 v0, -0x1

    if-eq v0, p2, :cond_2

    if-eqz p3, :cond_2

    .line 275
    const-string/jumbo v0, "com.sonyericsson.conversations.action.WELCOME_SCREEN_BACK_PRESSED"

    .line 276
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 274
    if-eqz v0, :cond_2

    .line 278
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->finish()V

    goto :goto_0

    .line 279
    :cond_2
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getConversationItemManager()Lcom/sonyericsson/conversations/conversation/ConversationItemApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationItemApi;->haveConversations()Z

    move-result v0

    if-nez v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onWriteNewMessage()V

    goto :goto_0

    .line 266
    :sswitch_data_0
    .sparse-switch
        0x1337 -> :sswitch_1
        0xbada -> :sswitch_0
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    return-void

    .line 185
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 180
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 122
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->collapseRecipientsList()V

    .line 120
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->redirectIfLaunchedFromHistory()V

    .line 56
    invoke-static {}, Lcom/sonymobile/multiuser/MultiUserUtils;->isUserAllowedToUseMessaging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-static {p0}, Lcom/sonymobile/multiuser/MultiUserUtils;->disableApp(Landroid/content/Context;)V

    .line 58
    new-instance v0, Lcom/sonymobile/multiuser/GuestUserDialog;

    invoke-direct {v0}, Lcom/sonymobile/multiuser/GuestUserDialog;-><init>()V

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "ownerOnly"

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/multiuser/GuestUserDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 59
    return-void

    .line 61
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->redirectIfNoPermissions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    return-void

    .line 64
    :cond_1
    invoke-static {}, Lcom/sonyericsson/conversations/ConversationsApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ConversationsApp;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ConversationsApp;->isAppInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 65
    invoke-static {}, Lcom/sonyericsson/conversations/ConversationsApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ConversationsApp;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ConversationsApp;->init()V

    .line 67
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->createUIController(Landroid/os/Bundle;)V

    .line 69
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEnableForceMessageType()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mEnableForceMessageType:Z

    .line 71
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 72
    const/16 v1, 0x12

    .line 71
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 52
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 129
    sget-boolean v0, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 130
    const-string/jumbo v0, "#onDestroy()"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onDestroy()V

    .line 136
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 128
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 43
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->setIntent(Landroid/content/Intent;)V

    .line 44
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->closeOptionsMenu()V

    .line 46
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onNewIntent(Landroid/content/Intent;)V

    .line 40
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 190
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 196
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 192
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onActionBarHomePressed()V

    .line 193
    const/4 v0, 0x1

    return v0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onPause()V

    .line 144
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 140
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 166
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onRestart()V

    .line 164
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onResume()V

    .line 160
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 155
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 106
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onStart()V

    .line 151
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 147
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->mUiController:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onStop()V

    .line 176
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 172
    return-void
.end method
