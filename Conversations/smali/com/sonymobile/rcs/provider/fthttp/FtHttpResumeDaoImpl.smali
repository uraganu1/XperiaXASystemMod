.class public Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;
.super Ljava/lang/Object;
.source "FtHttpResumeDaoImpl.java"


# static fields
.field private static instance:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;

.field private static final logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# instance fields
.field private cr:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    sput-object v0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->instance:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;

    const-class v0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;

    .line 54
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->cr:Landroid/content/ContentResolver;

    .line 64
    return-void
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;

    monitor-enter v1

    .line 73
    :try_start_0
    sget-object v0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->instance:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;

    if-eqz v0, :cond_0

    .line 76
    :goto_0
    sget-object v0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->instance:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 74
    :cond_0
    :try_start_1
    new-instance v0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;

    invoke-direct {v0, p0}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->instance:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance()Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->instance:Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;

    return-object v0
.end method


# virtual methods
.method public delete(Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;)I
    .locals 5
    .param p1, "ftHttpResume"    # Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    .prologue
    const/4 v4, 0x0

    .line 151
    sget-object v1, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    :goto_0
    new-instance v0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;

    invoke-direct {v0}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;-><init>()V

    .local v0, "where":Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;
    const/4 v1, 0x1

    .line 155
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->getMsgId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;->messageId([Ljava/lang/String;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;

    .line 156
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->cr:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;->delete(Landroid/content/ContentResolver;)I

    move-result v1

    return v1

    .line 152
    .end local v0    # "where":Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;
    :cond_0
    sget-object v1, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public insert(Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;)Landroid/net/Uri;
    .locals 6
    .param p1, "ftHttpResume"    # Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    .prologue
    .line 108
    new-instance v2, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;

    invoke-direct {v2}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;-><init>()V

    .line 109
    .local v2, "values":Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->putDate(Ljava/util/Date;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;

    .line 110
    invoke-virtual {p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->getDirection()Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->putDirection(Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;

    .line 111
    invoke-virtual {p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->putFilename(Ljava/lang/String;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;

    .line 112
    invoke-virtual {p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->getFileUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->putFileuri(Ljava/lang/String;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;

    .line 113
    invoke-virtual {p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->getMimetype()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->putType(Ljava/lang/String;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;

    .line 114
    invoke-virtual {p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->getSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->putSize(Ljava/lang/Long;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;

    .line 115
    invoke-virtual {p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->getThumbnail()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->putThumbnail([B)Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;

    .line 116
    invoke-virtual {p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->getContact()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->putContact(Ljava/lang/String;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;

    .line 117
    invoke-virtual {p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->putDisplayName(Ljava/lang/String;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;

    .line 118
    invoke-virtual {p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->putChatid(Ljava/lang/String;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;

    .line 119
    invoke-virtual {p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->putSessionId(Ljava/lang/String;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;

    .line 120
    invoke-virtual {p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->getChatSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->putChatSessionId(Ljava/lang/String;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;

    .line 121
    invoke-virtual {p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->isGroup()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->putIsGroup(Ljava/lang/Boolean;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;

    .line 122
    invoke-virtual {p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->getMsgId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->putMessageId(Ljava/lang/String;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;

    .line 123
    invoke-virtual {p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->isNetworkPause()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->putIsNetworkPaused(Ljava/lang/Boolean;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;

    .line 124
    invoke-virtual {p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->isFileAccepted()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->putIsFileAccepted(Ljava/lang/Boolean;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;

    .line 125
    invoke-virtual {p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->getFileValidity()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->putFileValidity(J)Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;

    .line 126
    instance-of v3, p1, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;

    if-nez v3, :cond_0

    .line 132
    instance-of v3, p1, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;

    if-nez v3, :cond_3

    const/4 v3, 0x0

    .line 139
    return-object v3

    :cond_0
    move-object v0, p1

    .line 127
    check-cast v0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;

    .line 128
    .local v0, "download":Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;
    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->putInUrl(Ljava/lang/String;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;

    .line 129
    sget-object v3, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_2

    .line 141
    .end local v0    # "download":Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->cr:Landroid/content/ContentResolver;

    sget-object v4, Lcom/sonymobile/rcs/provider/fthttp/FtHttpColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->values()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 130
    .restart local v0    # "download":Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;
    :cond_2
    sget-object v3, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "insert "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "download":Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;
    :cond_3
    move-object v1, p1

    .line 133
    check-cast v1, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;

    .line 134
    .local v1, "upload":Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;
    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;->getTid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->putOuTid(Ljava/lang/String;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;

    .line 135
    sget-object v3, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    sget-object v3, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "insert "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isOutgoingFtInProgress()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 239
    new-instance v2, Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;

    invoke-direct {v2}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;-><init>()V

    .local v2, "where":Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;
    const/4 v3, 0x1

    .line 240
    new-array v3, v3, [Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;

    sget-object v4, Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;->OUTGOING:Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;->direction([Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;

    .line 241
    const/4 v1, 0x0

    .line 242
    .local v1, "result":Z
    iget-object v3, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->cr:Landroid/content/ContentResolver;

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;->query(Landroid/content/ContentResolver;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;

    move-result-object v0

    .line 243
    .local v0, "cursor":Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;
    if-nez v0, :cond_1

    .line 254
    :goto_0
    return v1

    .line 245
    :cond_0
    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->isNetworkPause()Z

    move-result v3

    if-nez v3, :cond_2

    .line 244
    :cond_1
    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 252
    :goto_1
    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->close()V

    goto :goto_0

    .line 245
    :cond_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->doesMessageIdAlreadyExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 248
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public queryAll()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v2, Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;

    invoke-direct {v2}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;-><init>()V

    .line 91
    .local v2, "where":Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;>;"
    iget-object v3, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->cr:Landroid/content/ContentResolver;

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;->query(Landroid/content/ContentResolver;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;

    move-result-object v0

    .line 93
    .local v0, "cursor":Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;
    if-nez v0, :cond_1

    .line 103
    :goto_0
    return-object v1

    .line 96
    :cond_0
    new-instance v3, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;

    invoke-direct {v3, v0}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDownload;-><init>(Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 101
    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->close()V

    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->getDirection()Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;

    move-result-object v3

    sget-object v4, Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;->INCOMING:Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;

    if-eq v3, v4, :cond_0

    .line 98
    new-instance v3, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;

    invoke-direct {v3, v0}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;-><init>(Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public queryUpload(Ljava/lang/String;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;
    .locals 8
    .param p1, "tid"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 209
    new-instance v2, Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;

    invoke-direct {v2}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;-><init>()V

    .local v2, "where":Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;
    const/4 v1, 0x0

    .line 211
    .local v1, "result":Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;
    new-array v3, v4, [Ljava/lang/String;

    aput-object p1, v3, v6

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;->ouTid([Ljava/lang/String;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;->and()Lcom/sonymobile/rcs/provider/base/AbstractSelection;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;

    new-array v4, v4, [Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;

    sget-object v5, Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;->OUTGOING:Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;->direction([Lcom/sonymobile/rcs/provider/fthttp/FtHttpDirection;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;

    .line 212
    iget-object v3, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->cr:Landroid/content/ContentResolver;

    const-string/jumbo v4, "_ID LIMIT 1"

    invoke-virtual {v2, v3, v7, v4}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;->query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;

    move-result-object v0

    .line 213
    .local v0, "cursor":Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;
    if-nez v0, :cond_0

    .line 219
    .end local v1    # "result":Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;
    :goto_0
    return-object v1

    .line 214
    .restart local v1    # "result":Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;
    :cond_0
    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 217
    .end local v1    # "result":Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;
    :goto_1
    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;->close()V

    goto :goto_0

    .line 215
    .restart local v1    # "result":Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;
    :cond_1
    new-instance v1, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;

    .end local v1    # "result":Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;
    invoke-direct {v1, v0}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;-><init>(Lcom/sonymobile/rcs/provider/fthttp/FtHttpCursor;)V

    .local v1, "result":Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeUpload;
    goto :goto_1
.end method

.method public updateFtHttpIsFileAccepted(ZLcom/sonymobile/rcs/provider/fthttp/FtHttpResume;)I
    .locals 6
    .param p1, "isFileAccepted"    # Z
    .param p2, "ftHttpResume"    # Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    .prologue
    const/4 v5, 0x0

    .line 185
    sget-object v2, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 188
    :goto_0
    new-instance v0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;

    invoke-direct {v0}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;-><init>()V

    .line 189
    .local v0, "values":Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->putIsFileAccepted(Ljava/lang/Boolean;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;

    .line 190
    new-instance v1, Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;

    invoke-direct {v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;-><init>()V

    .local v1, "where":Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;
    const/4 v2, 0x1

    .line 191
    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p2}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->getMsgId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;->messageId([Ljava/lang/String;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;

    .line 192
    iget-object v2, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->cr:Landroid/content/ContentResolver;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->values()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;->update(Landroid/content/ContentResolver;Landroid/content/ContentValues;)I

    move-result v2

    return v2

    .line 186
    .end local v0    # "values":Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;
    .end local v1    # "where":Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;
    :cond_0
    sget-object v2, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateFtHttpPauseReason(ZLcom/sonymobile/rcs/provider/fthttp/FtHttpResume;)I
    .locals 6
    .param p1, "isNetworkPause"    # Z
    .param p2, "ftHttpResume"    # Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    .prologue
    const/4 v5, 0x0

    .line 173
    sget-object v2, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 176
    :goto_0
    new-instance v0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;

    invoke-direct {v0}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;-><init>()V

    .line 177
    .local v0, "values":Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->putIsNetworkPaused(Ljava/lang/Boolean;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;

    .line 178
    new-instance v1, Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;

    invoke-direct {v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;-><init>()V

    .local v1, "where":Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;
    const/4 v2, 0x1

    .line 179
    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p2}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->getMsgId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;->messageId([Ljava/lang/String;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;

    .line 180
    iget-object v2, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->cr:Landroid/content/ContentResolver;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->values()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;->update(Landroid/content/ContentResolver;Landroid/content/ContentValues;)I

    move-result v2

    return v2

    .line 174
    .end local v0    # "values":Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;
    .end local v1    # "where":Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;
    :cond_0
    sget-object v2, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateFtHttpSessionId(Ljava/lang/String;Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;)I
    .locals 6
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "ftHttpResume"    # Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;

    .prologue
    const/4 v5, 0x0

    .line 161
    sget-object v2, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 164
    :goto_0
    new-instance v0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;

    invoke-direct {v0}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;-><init>()V

    .line 165
    .local v0, "values":Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;
    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->putSessionId(Ljava/lang/String;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;

    .line 166
    new-instance v1, Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;

    invoke-direct {v1}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;-><init>()V

    .local v1, "where":Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;
    const/4 v2, 0x1

    .line 167
    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p2}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResume;->getMsgId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;->messageId([Ljava/lang/String;)Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;

    .line 168
    iget-object v2, p0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->cr:Landroid/content/ContentResolver;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;->values()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;->update(Landroid/content/ContentResolver;Landroid/content/ContentValues;)I

    move-result v2

    return v2

    .line 162
    .end local v0    # "values":Lcom/sonymobile/rcs/provider/fthttp/FtHttpContentValues;
    .end local v1    # "where":Lcom/sonymobile/rcs/provider/fthttp/FtHttpSelection;
    :cond_0
    sget-object v2, Lcom/sonymobile/rcs/provider/fthttp/FtHttpResumeDaoImpl;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method
