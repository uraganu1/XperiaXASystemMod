.class public Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialActivity;
.super Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;
.source "SpeedDialActivity.java"


# static fields
.field public static final INTENT_EXTRA_SPEED_DIAL_NUMBER:Ljava/lang/String; = "speedDialNumber"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->isAllRequiredPermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    return-void

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 33
    const v0, 0x7f0400d8

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialActivity;->setContentView(I)V

    .line 26
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 38
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 44
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 41
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialActivity;->finish()V

    .line 42
    const/4 v0, 0x1

    return v0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
