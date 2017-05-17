.class public Lcom/sonyericsson/android/socialphonebook/conferencecall/activities/ConferenceCallsActivity;
.super Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;
.source "ConferenceCallsActivity.java"


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
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->isAllRequiredPermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    return-void

    .line 27
    :cond_0
    const v0, 0x7f04002a

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/activities/ConferenceCallsActivity;->setContentView(I)V

    .line 21
    return-void
.end method
