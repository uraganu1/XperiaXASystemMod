.class public Lcom/sonyericsson/conversations/ui/MmsRingtonePreference;
.super Landroid/preference/RingtonePreference;
.source "MmsRingtonePreference.java"


# instance fields
.field private mClickFilter:Lcom/sonyericsson/conversations/ui/util/ClickFilter;


# direct methods
.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/MmsRingtonePreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MmsRingtonePreference;->filterOnClick()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/conversations/ui/MmsRingtonePreference;)V
    .locals 0

    invoke-super {p0}, Lcom/sonyericsson/conversations/ui/MmsRingtonePreference;->onClick()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method private filterOnClick()V
    .locals 3

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MmsRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 65
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-super {p0}, Landroid/preference/RingtonePreference;->onClick()V

    .line 64
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MmsRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 70
    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 71
    new-instance v2, Lcom/sonyericsson/conversations/ui/MmsRingtonePreference$2;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/MmsRingtonePreference$2;-><init>(Lcom/sonyericsson/conversations/ui/MmsRingtonePreference;)V

    .line 69
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->handleOptionalPermissionRequest(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;)V

    goto :goto_0
.end method


# virtual methods
.method public onAttachedToActivity()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/sonyericsson/conversations/ui/MmsRingtonePreference$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/MmsRingtonePreference$1;-><init>(Lcom/sonyericsson/conversations/ui/MmsRingtonePreference;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsRingtonePreference;->mClickFilter:Lcom/sonyericsson/conversations/ui/util/ClickFilter;

    .line 51
    return-void
.end method

.method public onClick()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsRingtonePreference;->mClickFilter:Lcom/sonyericsson/conversations/ui/util/ClickFilter;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/util/ClickFilter;->executeAndFilter(I)V

    .line 83
    return-void
.end method

.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x2

    .line 89
    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MmsRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/MmsConfig;->getTranslatedNotificationSound(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "sound":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MmsRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->soundFileAccessible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    const-string/jumbo v1, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 97
    :goto_0
    const-string/jumbo v1, "android.intent.extra.ringtone.DEFAULT_URI"

    .line 98
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 97
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 99
    const-string/jumbo v1, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MmsRingtonePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 100
    const-string/jumbo v1, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    return-void

    .line 94
    :cond_0
    const-string/jumbo v1, "android.intent.extra.ringtone.EXISTING_URI"

    .line 95
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MmsRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 94
    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method
