.class public Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;
.super Lcom/sonymobile/rcs/provider/base/AbstractContentValues;
.source "FtHttpContentValues.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sonymobile/rcs/provider/base/AbstractContentValues;-><init>()V

    return-void
.end method


# virtual methods
.method public putChatSessionId(Ljava/lang/String;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "chat_session_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-object p0
.end method

.method public putChatid(Ljava/lang/String;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "chatid"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-object p0
.end method

.method public putContact(Ljava/lang/String;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "contact"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-object p0
.end method

.method public putDate(Ljava/util/Date;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;
    .locals 4
    .param p1, "value"    # Ljava/util/Date;

    .prologue
    .line 166
    if-eqz p1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "date"

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 169
    return-object p0

    .line 167
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "value for date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putDirection(Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;
    .locals 3
    .param p1, "value"    # Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;

    .prologue
    .line 153
    if-eqz p1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "direction"

    invoke-virtual {p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 156
    return-object p0

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "value for direction must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putDisplayName(Ljava/lang/String;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "display_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-object p0
.end method

.method public putFileValidity(J)Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 272
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "file_validity"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 273
    return-object p0
.end method

.method public putFilename(Ljava/lang/String;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 127
    if-eqz p1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "filename"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-object p0

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "value for filename must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putFileuri(Ljava/lang/String;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 140
    if-eqz p1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "fileuri"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-object p0

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "value for fileuri must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putInUrl(Ljava/lang/String;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "in_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-object p0
.end method

.method public putIsFileAccepted(Ljava/lang/Boolean;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;
    .locals 2
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "is_file_accepted"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 262
    return-object p0
.end method

.method public putIsGroup(Ljava/lang/Boolean;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;
    .locals 2
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "is_group"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 229
    return-object p0
.end method

.method public putIsNetworkPaused(Ljava/lang/Boolean;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;
    .locals 2
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "is_network_paused"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 251
    return-object p0
.end method

.method public putMessageId(Ljava/lang/String;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "message_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-object p0
.end method

.method public putOuTid(Ljava/lang/String;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "ou_tid"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-object p0
.end method

.method public putSessionId(Ljava/lang/String;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "session_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-object p0
.end method

.method public putSize(Ljava/lang/Long;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;
    .locals 2
    .param p1, "value"    # Ljava/lang/Long;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "size"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 84
    return-object p0
.end method

.method public putThumbnail([B)Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 206
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "thumbnail"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 207
    return-object p0
.end method

.method public putType(Ljava/lang/String;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-object p0
.end method
