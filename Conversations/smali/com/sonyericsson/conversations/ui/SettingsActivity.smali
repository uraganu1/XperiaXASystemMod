.class public Lcom/sonyericsson/conversations/ui/SettingsActivity;
.super Landroid/app/Activity;
.source "SettingsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/SettingsController;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/controller/SettingsController;-><init>(Lcom/sonyericsson/conversations/ui/SettingsActivity;)V

    .line 24
    .local v0, "controller":Lcom/sonyericsson/conversations/ui/controller/SettingsController;
    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/controller/SettingsController;->onCreate(Landroid/os/Bundle;)V

    .line 21
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 29
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 34
    const/4 v0, 0x0

    return v0

    .line 31
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SettingsActivity;->finish()V

    .line 32
    const/4 v0, 0x1

    return v0

    .line 29
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
