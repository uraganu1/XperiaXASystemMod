.class public Lcom/sonyericsson/conversations/restrictions/MmsRestrictionsChecker;
.super Lcom/sonyericsson/conversations/restrictions/UriRestrictionsChecker;
.source "MmsRestrictionsChecker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/sonyericsson/conversations/restrictions/UriRestrictionsChecker;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkAudioContentUri(Landroid/net/Uri;Landroid/content/Context;)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
    .locals 4
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-static {p2, p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getUriFileSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    .line 36
    .local v0, "size":J
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSizeWithOverhead()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 37
    sget-object v2, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->AUDIO_TOO_LARGE:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v2

    .line 39
    :cond_0
    sget-object v2, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v2
.end method

.method protected checkFileContentUri(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
    .locals 4
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-static {p3}, Lcom/google/android/mms/ContentType;->isSupportedType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 63
    const-string/jumbo v2, "text/x-vCard"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    :cond_0
    invoke-static {p2, p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getUriFileSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    .line 69
    .local v0, "size":J
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSizeWithOverhead()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 70
    sget-object v2, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->MESSAGE_TOO_LARGE:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v2

    .line 64
    .end local v0    # "size":J
    :cond_1
    const-string/jumbo v2, "text/x-vCalendar"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    sget-object v2, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->CANNOT_ADD_CONTENT:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v2

    .line 72
    .restart local v0    # "size":J
    :cond_2
    sget-object v2, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v2
.end method

.method protected checkVCardContentUri(Landroid/net/Uri;Landroid/content/Context;)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
    .locals 4
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-static {p2, p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getUriFileSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    .line 45
    .local v0, "size":J
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSizeWithOverhead()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 46
    sget-object v2, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->CANNOT_ADD_CONTENT:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v2

    .line 48
    :cond_0
    invoke-static {p2, p1}, Lcom/sonyericsson/conversations/util/VCardUtil;->isMultipleContactsVCard(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    sget-object v2, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->CANNOT_ADD_CONTENT:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v2

    .line 57
    :cond_1
    sget-object v2, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v2
.end method

.method protected checkVideoContentUri(Landroid/net/Uri;Landroid/content/Context;)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
    .locals 4
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-static {p2, p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getUriFileSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    .line 27
    .local v0, "size":J
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSizeWithOverhead()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 28
    sget-object v2, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->VIDEO_TOO_LARGE:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v2

    .line 30
    :cond_0
    sget-object v2, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v2
.end method

.method protected isSendTechnologyEnabled()Z
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    return v0
.end method
