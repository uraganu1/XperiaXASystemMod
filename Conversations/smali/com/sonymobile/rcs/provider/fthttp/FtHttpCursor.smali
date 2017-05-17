.class public Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;
.super Lcom/sonymobile/rcs/provider/base/AbstractCursor;
.source "FtHttpCursor.java"


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/provider/base/AbstractCursor;-><init>(Landroid/database/Cursor;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getChatSessionId()Ljava/lang/String;
    .locals 2

    .prologue
    const-string/jumbo v1, "chat_session_id"

    .line 159
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getCachedColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 160
    .local v0, "index":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getChatid()Ljava/lang/String;
    .locals 2

    .prologue
    const-string/jumbo v1, "chatid"

    .line 82
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getCachedColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 83
    .local v0, "index":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getContact()Ljava/lang/String;
    .locals 2

    .prologue
    const-string/jumbo v1, "contact"

    .line 74
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getCachedColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 75
    .local v0, "index":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    const-string/jumbo v0, "date"

    .line 116
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDirection()Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v1, "direction"

    .line 106
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getIntegerOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 107
    .local v0, "intValue":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 109
    invoke-static {}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;->values()[Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    return-object v1

    .line 108
    :cond_0
    return-object v2
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    const-string/jumbo v1, "display_name"

    .line 123
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getCachedColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 124
    .local v0, "index":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFileUri()Ljava/lang/String;
    .locals 2

    .prologue
    const-string/jumbo v1, "fileuri"

    .line 98
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getCachedColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 99
    .local v0, "index":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFileValidity()J
    .locals 2

    .prologue
    const-string/jumbo v0, "file_validity"

    .line 183
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 2

    .prologue
    const-string/jumbo v1, "filename"

    .line 90
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getCachedColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 91
    .local v0, "index":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getInUrl()Ljava/lang/String;
    .locals 2

    .prologue
    const-string/jumbo v1, "in_url"

    .line 51
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getCachedColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 52
    .local v0, "index":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 2

    .prologue
    const-string/jumbo v1, "message_id"

    .line 147
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getCachedColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 148
    .local v0, "index":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getOuTid()Ljava/lang/String;
    .locals 2

    .prologue
    const-string/jumbo v1, "ou_tid"

    .line 43
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getCachedColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 44
    .local v0, "index":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 2

    .prologue
    const-string/jumbo v1, "session_id"

    .line 131
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getCachedColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 132
    .local v0, "index":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSize()Ljava/lang/Long;
    .locals 1

    .prologue
    const-string/jumbo v0, "size"

    .line 59
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnail()[B
    .locals 2

    .prologue
    const-string/jumbo v1, "thumbnail"

    .line 139
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getCachedColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 140
    .local v0, "index":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getBlob(I)[B

    move-result-object v1

    return-object v1
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .prologue
    const-string/jumbo v1, "type"

    .line 66
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getCachedColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 67
    .local v0, "index":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isFileAccepted()Z
    .locals 1

    .prologue
    const-string/jumbo v0, "is_file_accepted"

    .line 176
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isGroup()Z
    .locals 1

    .prologue
    const-string/jumbo v0, "is_group"

    .line 152
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isNetworkPause()Z
    .locals 1

    .prologue
    const-string/jumbo v0, "is_network_paused"

    .line 169
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
