.class public abstract Lcom/sonyericsson/conversations/restrictions/UriRestrictionsChecker;
.super Ljava/lang/Object;
.source "UriRestrictionsChecker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract checkAudioContentUri(Landroid/net/Uri;Landroid/content/Context;)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
.end method

.method protected abstract checkFileContentUri(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
.end method

.method public checkUri(Landroid/net/Uri;Landroid/content/Context;)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
    .locals 2
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    if-nez p1, :cond_0

    .line 20
    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->CANNOT_ADD_CONTENT:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v1

    .line 22
    :cond_0
    invoke-static {p2, p1}, Lcom/sonyericsson/conversations/util/DrmUtil;->isForwardable(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 23
    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->DRM_PROTECTED:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v1

    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/restrictions/UriRestrictionsChecker;->isSendTechnologyEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 26
    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->CANNOT_ADD_CONTENT:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v1

    .line 28
    :cond_2
    invoke-static {p2, p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "mimeType":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 30
    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->CANNOT_ADD_CONTENT:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v1

    .line 33
    :cond_3
    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "image/gif"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 37
    :cond_4
    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/conversations/restrictions/UriRestrictionsChecker;->checkVideoContentUri(Landroid/net/Uri;Landroid/content/Context;)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    move-result-object v1

    return-object v1

    .line 36
    :cond_5
    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v1

    .line 39
    :cond_6
    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 40
    const-string/jumbo v1, "application/ogg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 39
    if-eqz v1, :cond_8

    .line 41
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/conversations/restrictions/UriRestrictionsChecker;->checkAudioContentUri(Landroid/net/Uri;Landroid/content/Context;)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    move-result-object v1

    return-object v1

    .line 42
    :cond_8
    const-string/jumbo v1, "text/x-vCard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/conversations/restrictions/UriRestrictionsChecker;->checkVCardContentUri(Landroid/net/Uri;Landroid/content/Context;)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    move-result-object v1

    return-object v1

    .line 45
    :cond_9
    invoke-virtual {p0, p1, p2, v0}, Lcom/sonyericsson/conversations/restrictions/UriRestrictionsChecker;->checkFileContentUri(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    move-result-object v1

    return-object v1
.end method

.method protected abstract checkVCardContentUri(Landroid/net/Uri;Landroid/content/Context;)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
.end method

.method protected abstract checkVideoContentUri(Landroid/net/Uri;Landroid/content/Context;)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
.end method

.method protected abstract isSendTechnologyEnabled()Z
.end method
