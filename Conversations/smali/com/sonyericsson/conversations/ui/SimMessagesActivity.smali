.class public Lcom/sonyericsson/conversations/ui/SimMessagesActivity;
.super Landroid/app/Activity;
.source "SimMessagesActivity.java"


# instance fields
.field private mSimCardSlotIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method getSimCardSlotIndex()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/sonyericsson/conversations/ui/SimMessagesActivity;->mSimCardSlotIndex:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SimMessagesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getSlotIndexFromIntent(Landroid/content/Intent;)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/conversations/ui/SimMessagesActivity;->mSimCardSlotIndex:I

    .line 48
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->isMultiSimDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iget v1, p0, Lcom/sonyericsson/conversations/ui/SimMessagesActivity;->mSimCardSlotIndex:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 50
    const v0, 0x7f0b0114

    .line 52
    .local v0, "titleResId":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/SimMessagesActivity;->setTitle(I)V

    .line 55
    .end local v0    # "titleResId":I
    :cond_0
    const v1, 0x7f030043

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/ui/SimMessagesActivity;->setContentView(I)V

    .line 45
    return-void

    .line 51
    :cond_1
    const v0, 0x7f0b0113

    .restart local v0    # "titleResId":I
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 60
    const/16 v1, 0x14

    if-eq p1, v1, :cond_0

    const/16 v1, 0x13

    if-ne p1, v1, :cond_1

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SimMessagesActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 63
    const v2, 0x7f0d00d7

    .line 62
    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    .line 64
    .local v0, "fragment":Lcom/sonyericsson/conversations/ui/SimMessageListFragment;
    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->focusMessageList()V

    .line 68
    .end local v0    # "fragment":Lcom/sonyericsson/conversations/ui/SimMessageListFragment;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 73
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getSlotIndexFromIntent(Landroid/content/Intent;)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/conversations/ui/SimMessagesActivity;->mSimCardSlotIndex:I

    .line 74
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/SimMessagesActivity;->setIntent(Landroid/content/Intent;)V

    .line 75
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SimMessagesActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 76
    const v2, 0x7f0d00d7

    .line 75
    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    .line 77
    .local v0, "fragment":Lcom/sonyericsson/conversations/ui/SimMessageListFragment;
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->init()V

    .line 72
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 84
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 89
    const/4 v0, 0x0

    return v0

    .line 86
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SimMessagesActivity;->finish()V

    .line 87
    const/4 v0, 0x1

    return v0

    .line 84
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
