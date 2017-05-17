.class public abstract Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;
.super Ljava/lang/Object;
.source "FtHttpResume.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;",
        ">;"
    }
.end annotation


# instance fields
.field private final chatId:Ljava/lang/String;

.field private final chatSessionId:Ljava/lang/String;

.field private final contact:Ljava/lang/String;

.field private final date:Ljava/util/Date;

.field private final displayName:Ljava/lang/String;

.field private final fileUri:Ljava/lang/String;

.field private fileValidity:J

.field private final filename:Ljava/lang/String;

.field private final ftHttpDirection:Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;

.field private isFileAccepted:Z

.field private final isGroup:Z

.field private final isNetworkPause:Z

.field private final mimeType:Ljava/lang/String;

.field private final msgId:Ljava/lang/String;

.field private final sessionId:Ljava/lang/String;

.field private final size:Ljava/lang/Long;

.field private final thumbnail:[B


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;)V
    .locals 4
    .param p1, "cursor"    # Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    invoke-virtual {p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getSize()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getDirection()Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;

    move-result-object v0

    if-nez v0, :cond_2

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getFilename()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->date:Ljava/util/Date;

    .line 198
    invoke-virtual {p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getDirection()Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->ftHttpDirection:Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;

    .line 199
    invoke-virtual {p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getFilename()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->filename:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getFileUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->fileUri:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->mimeType:Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getSize()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->size:Ljava/lang/Long;

    .line 203
    invoke-virtual {p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getThumbnail()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->thumbnail:[B

    .line 204
    invoke-virtual {p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getContact()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->contact:Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->displayName:Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getChatid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->chatId:Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->sessionId:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getMessageId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->msgId:Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getChatSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->chatSessionId:Ljava/lang/String;

    .line 210
    invoke-virtual {p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->isGroup()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->isGroup:Z

    .line 211
    invoke-virtual {p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->isNetworkPause()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->isNetworkPause:Z

    .line 212
    invoke-virtual {p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->isFileAccepted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->isFileAccepted:Z

    .line 213
    invoke-virtual {p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getFileValidity()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->fileValidity:J

    .line 214
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Date;ZZJ)V
    .locals 9
    .param p1, "ftHttpDirection"    # Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "fileUri"    # Landroid/net/Uri;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "size"    # Ljava/lang/Long;
    .param p6, "msgId"    # Ljava/lang/String;
    .param p7, "thumbnail"    # [B
    .param p8, "contact"    # Ljava/lang/String;
    .param p9, "displayName"    # Ljava/lang/String;
    .param p10, "chatId"    # Ljava/lang/String;
    .param p11, "sessionId"    # Ljava/lang/String;
    .param p12, "chatSessionId"    # Ljava/lang/String;
    .param p13, "isGroup"    # Z
    .param p14, "date"    # Ljava/util/Date;
    .param p15, "isNetworkPause"    # Z
    .param p16, "isFileAccepted"    # Z
    .param p17, "fileValidity"    # J

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    if-nez v3, :cond_0

    if-nez p1, :cond_2

    .line 164
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Null argument"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 163
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    const-string/jumbo v2, ""

    .line 166
    .local v2, "uri":Ljava/lang/String;
    if-nez p3, :cond_3

    .line 169
    :goto_1
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->date:Ljava/util/Date;

    .line 170
    iput-object p1, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->ftHttpDirection:Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;

    .line 171
    iput-object p2, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->filename:Ljava/lang/String;

    .line 172
    iput-object v2, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->fileUri:Ljava/lang/String;

    .line 173
    iput-object p4, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->mimeType:Ljava/lang/String;

    .line 174
    iput-object p5, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->size:Ljava/lang/Long;

    .line 175
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->thumbnail:[B

    .line 176
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->contact:Ljava/lang/String;

    .line 177
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->displayName:Ljava/lang/String;

    .line 178
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->chatId:Ljava/lang/String;

    .line 179
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->sessionId:Ljava/lang/String;

    .line 180
    iput-object p6, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->msgId:Ljava/lang/String;

    .line 181
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->chatSessionId:Ljava/lang/String;

    .line 182
    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->isGroup:Z

    .line 183
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->isNetworkPause:Z

    .line 184
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->isFileAccepted:Z

    .line 185
    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->fileValidity:J

    .line 186
    return-void

    .line 167
    :cond_3
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public constructor <init>(Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZJ)V
    .locals 20
    .param p1, "ftHttpDirection"    # Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "fileUri"    # Landroid/net/Uri;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "size"    # Ljava/lang/Long;
    .param p6, "msgId"    # Ljava/lang/String;
    .param p7, "thumbnail"    # [B
    .param p8, "contact"    # Ljava/lang/String;
    .param p9, "displayName"    # Ljava/lang/String;
    .param p10, "chatId"    # Ljava/lang/String;
    .param p11, "sessionId"    # Ljava/lang/String;
    .param p12, "chatSessionId"    # Ljava/lang/String;
    .param p13, "isGroup"    # Z
    .param p14, "isNetworkPause"    # Z
    .param p15, "isFileAccepted"    # Z
    .param p16, "fileValidity"    # J

    .prologue
    const/4 v15, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move/from16 v16, p14

    move/from16 v17, p15

    move-wide/from16 v18, p16

    .line 133
    invoke-direct/range {v1 .. v19}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;-><init>(Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Date;ZZJ)V

    .line 136
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;)I
    .locals 3
    .param p1, "nextFtHttpResume"    # Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    .prologue
    const/4 v2, 0x0

    .line 297
    iget-boolean v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->isFileAccepted:Z

    iget-boolean v1, p1, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->isFileAccepted:Z

    if-eq v0, v1, :cond_0

    .line 301
    invoke-virtual {p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->isFileAccepted()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 298
    :cond_0
    return v2

    :cond_1
    const/4 v0, -0x1

    .line 301
    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 35
    check-cast p1, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->compareTo(Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;)I

    move-result v0

    return v0
.end method

.method public getChatId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->chatId:Ljava/lang/String;

    return-object v0
.end method

.method public getChatSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->chatSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getContact()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->contact:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getDirection()Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->ftHttpDirection:Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->fileUri:Ljava/lang/String;

    return-object v0
.end method

.method public getFileValidity()J
    .locals 2

    .prologue
    .line 286
    iget-wide v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->fileValidity:J

    return-wide v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getMimetype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->msgId:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->size:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getThumbnail()[B
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->thumbnail:[B

    return-object v0
.end method

.method public isFileAccepted()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->isFileAccepted:Z

    return v0
.end method

.method public isGroup()Z
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->isGroup:Z

    return v0
.end method

.method public isNetworkPause()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->isNetworkPause:Z

    return v0
.end method

.method public setFileAccepted()V
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->isFileAccepted:Z

    .line 283
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FtHttpResume [date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->date:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", dir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->ftHttpDirection:Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
