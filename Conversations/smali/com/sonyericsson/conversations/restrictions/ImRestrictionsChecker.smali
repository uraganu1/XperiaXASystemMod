.class public Lcom/sonyericsson/conversations/restrictions/ImRestrictionsChecker;
.super Lcom/sonyericsson/conversations/restrictions/UriRestrictionsChecker;
.source "ImRestrictionsChecker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/sonyericsson/conversations/restrictions/UriRestrictionsChecker;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkAudioContentUri(Landroid/net/Uri;Landroid/content/Context;)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
    .locals 1
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getImFileApi()Lcom/sonymobile/jms/file/ImFileApi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sonymobile/jms/file/ImFileApi;->isFileBiggerThanMaxSize(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->AUDIO_TOO_LARGE:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v0

    .line 35
    :cond_0
    sget-object v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v0
.end method

.method protected checkFileContentUri(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
    .locals 1
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getImFileApi()Lcom/sonymobile/jms/file/ImFileApi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sonymobile/jms/file/ImFileApi;->isFileBiggerThanMaxSize(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->MESSAGE_TOO_LARGE:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v0

    .line 48
    :cond_0
    sget-object v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v0
.end method

.method protected checkVCardContentUri(Landroid/net/Uri;Landroid/content/Context;)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
    .locals 1
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const-string/jumbo v0, "text/x-vCard"

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonyericsson/conversations/restrictions/ImRestrictionsChecker;->checkFileContentUri(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    move-result-object v0

    return-object v0
.end method

.method protected checkVideoContentUri(Landroid/net/Uri;Landroid/content/Context;)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
    .locals 1
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getImFileApi()Lcom/sonymobile/jms/file/ImFileApi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sonymobile/jms/file/ImFileApi;->isFileBiggerThanMaxSize(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    sget-object v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->VIDEO_TOO_LARGE:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v0

    .line 27
    :cond_0
    sget-object v0, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    return-object v0
.end method

.method protected isSendTechnologyEnabled()Z
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getImFileApi()Lcom/sonymobile/jms/file/ImFileApi;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
