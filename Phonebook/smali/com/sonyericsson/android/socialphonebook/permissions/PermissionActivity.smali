.class public Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;
.super Landroid/app/Activity;
.source "PermissionActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-static {p0}, Lcom/android/contacts/common/activity/RequestPermissionsActivity;->startPermissionActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    return-void

    .line 16
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 34
    invoke-static {p0}, Lcom/android/contacts/common/activity/RequestPermissionsActivity;->startPermissionActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    return-void

    .line 32
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 26
    invoke-static {p0}, Lcom/android/contacts/common/activity/RequestPermissionsActivity;->startPermissionActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    return-void

    .line 24
    :cond_0
    return-void
.end method
