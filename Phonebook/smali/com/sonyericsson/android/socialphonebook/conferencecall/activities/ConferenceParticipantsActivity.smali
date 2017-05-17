.class public Lcom/sonyericsson/android/socialphonebook/conferencecall/activities/ConferenceParticipantsActivity;
.super Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;
.source "ConferenceParticipantsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;-><init>()V

    return-void
.end method

.method public static getIntent(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "numbers"    # [Ljava/lang/String;

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonyericsson/android/socialphonebook/conferencecall/activities/ConferenceParticipantsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "conferenceParticipants"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->isAllRequiredPermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    return-void

    .line 30
    :cond_0
    const v0, 0x7f04002e

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/activities/ConferenceParticipantsActivity;->setContentView(I)V

    .line 24
    return-void
.end method
