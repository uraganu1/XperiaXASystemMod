.class public abstract Lcom/android/mms/model/MediaModel;
.super Lcom/android/mms/model/Model;
.source "MediaModel.java"

# interfaces
.implements Lorg/w3c/dom/events/EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/model/MediaModel$MediaAction;,
        Lcom/android/mms/model/MediaModel$ContentRestrictionType;
    }
.end annotation


# static fields
.field protected static final MMS_PART_FILENAME_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field protected mBegin:I

.field protected mContentType:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field private mData:[B

.field protected mDuration:I

.field protected mFill:S

.field private final mMediaActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/MediaModel$MediaAction;",
            ">;"
        }
    .end annotation
.end field

.field protected mSeekTo:I

.field protected mSize:I

.field protected mSrc:Ljava/lang/String;

.field protected mTag:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string/jumbo v0, "(PART_\\d+_)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/mms/model/MediaModel;->MMS_PART_FILENAME_PATTERN:Ljava/util/regex/Pattern;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "src"    # Ljava/lang/String;
    .param p5, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 86
    if-nez p5, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uri may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    iput-object p1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    .line 92
    iput-object p3, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    .line 93
    iput-object p4, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 94
    invoke-static {p1, p5}, Lcom/sonyericsson/conversations/util/FileUtil;->getPermittedUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    .line 95
    invoke-direct {p0}, Lcom/android/mms/model/MediaModel;->initMediaSize()V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mMediaActions:Ljava/util/ArrayList;

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "src"    # Ljava/lang/String;
    .param p5, "uri"    # Landroid/net/Uri;
    .param p6, "size"    # I

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 101
    if-nez p5, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uri may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    iput-object p1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    .line 107
    iput-object p3, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    .line 108
    iput-object p4, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 109
    invoke-static {p1, p5}, Lcom/sonyericsson/conversations/util/FileUtil;->getPermittedUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    .line 110
    iput p6, p0, Lcom/android/mms/model/MediaModel;->mSize:I

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mMediaActions:Ljava/util/ArrayList;

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "src"    # Ljava/lang/String;
    .param p5, "data"    # [B

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 116
    if-nez p5, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "data may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    iput-object p1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    .line 121
    iput-object p2, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    .line 122
    iput-object p3, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    .line 123
    iput-object p4, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 124
    iput-object p5, p0, Lcom/android/mms/model/MediaModel;->mData:[B

    .line 125
    array-length v0, p5

    iput v0, p0, Lcom/android/mms/model/MediaModel;->mSize:I

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mMediaActions:Ljava/util/ArrayList;

    .line 115
    return-void
.end method

.method private initMediaSize()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 270
    iget-object v8, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 271
    .local v2, "cr":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 272
    .local v7, "input":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 274
    .local v6, "fileChannel":Ljava/nio/channels/FileChannel;
    :try_start_0
    iget-object v8, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    .line 276
    .local v7, "input":Ljava/io/InputStream;
    if-eqz v7, :cond_0

    .line 277
    instance-of v8, v7, Ljava/io/FileInputStream;

    if-eqz v8, :cond_3

    .line 279
    move-object v0, v7

    check-cast v0, Ljava/io/FileInputStream;

    move-object v5, v0

    .line 280
    .local v5, "f":Ljava/io/FileInputStream;
    invoke-virtual {v5}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 281
    .local v6, "fileChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    long-to-int v8, v8

    iput v8, p0, Lcom/android/mms/model/MediaModel;->mSize:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    .end local v5    # "f":Ljava/io/FileInputStream;
    .end local v6    # "fileChannel":Ljava/nio/channels/FileChannel;
    :cond_0
    if-eqz v7, :cond_1

    .line 302
    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 308
    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    .line 310
    :try_start_2
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 269
    .end local v7    # "input":Ljava/io/InputStream;
    :cond_2
    :goto_1
    return-void

    .line 283
    .local v6, "fileChannel":Ljava/nio/channels/FileChannel;
    .restart local v7    # "input":Ljava/io/InputStream;
    :cond_3
    :goto_2
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v8

    const/4 v9, -0x1

    if-eq v9, v8, :cond_0

    .line 284
    iget v8, p0, Lcom/android/mms/model/MediaModel;->mSize:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/mms/model/MediaModel;->mSize:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 289
    .end local v6    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v7    # "input":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 291
    .local v3, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "IOException caught while opening or reading stream for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 292
    instance-of v8, v3, Ljava/io/FileNotFoundException;

    if-eqz v8, :cond_6

    .line 293
    new-instance v8, Lcom/google/android/mms/MmsException;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 299
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 300
    if-eqz v7, :cond_4

    .line 302
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 308
    :cond_4
    :goto_3
    if-eqz v6, :cond_5

    .line 310
    :try_start_6
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 299
    :cond_5
    :goto_4
    throw v8

    .line 303
    .restart local v7    # "input":Ljava/io/InputStream;
    :catch_1
    move-exception v3

    .line 305
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "IOException caught while closing stream"

    invoke-static {v8}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 311
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 313
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "IOException caught while closing fileChannel"

    invoke-static {v8}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 295
    .end local v3    # "e":Ljava/io/IOException;
    .end local v7    # "input":Ljava/io/InputStream;
    :catch_3
    move-exception v4

    .line 296
    .local v4, "e":Ljava/lang/SecurityException;
    :try_start_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SecurityException caught while opening or reading stream for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 297
    iget-object v9, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    .line 296
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 298
    new-instance v8, Lcom/google/android/mms/MmsException;

    invoke-virtual {v4}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 300
    .end local v4    # "e":Ljava/lang/SecurityException;
    .restart local v3    # "e":Ljava/io/IOException;
    :cond_6
    if-eqz v7, :cond_7

    .line 302
    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 308
    :cond_7
    :goto_5
    if-eqz v6, :cond_2

    .line 310
    :try_start_9
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_1

    .line 311
    :catch_4
    move-exception v3

    .line 313
    const-string/jumbo v8, "IOException caught while closing fileChannel"

    invoke-static {v8}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 303
    :catch_5
    move-exception v3

    .line 305
    const-string/jumbo v8, "IOException caught while closing stream"

    invoke-static {v8}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_5

    .line 303
    .end local v3    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 305
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "IOException caught while closing stream"

    invoke-static {v9}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_3

    .line 311
    .end local v3    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v3

    .line 313
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "IOException caught while closing fileChannel"

    invoke-static {v9}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public static isDownloadsUri(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 332
    if-eqz p0, :cond_0

    .line 333
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "authority":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 335
    const-string/jumbo v1, "downloads"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 338
    .end local v0    # "authority":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isMmsUri(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 322
    if-eqz p0, :cond_0

    .line 323
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "authority":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 325
    const-string/jumbo v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 328
    .end local v0    # "authority":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public appendAction(Lcom/android/mms/model/MediaModel$MediaAction;)V
    .locals 1
    .param p1, "action"    # Lcom/android/mms/model/MediaModel$MediaAction;

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mMediaActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    return-void
.end method

.method public getBegin()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/android/mms/model/MediaModel;->mBegin:I

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentAction()Lcom/android/mms/model/MediaModel$MediaAction;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 350
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mMediaActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 351
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->NO_ACTIVE_ACTION:Lcom/android/mms/model/MediaModel$MediaAction;

    return-object v0

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mMediaActions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel$MediaAction;

    return-object v0
.end method

.method public getData()[B
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 177
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mData:[B

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mData:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 179
    .local v0, "data":[B
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mData:[B

    iget-object v2, p0, Lcom/android/mms/model/MediaModel;->mData:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 180
    return-object v0

    .line 182
    .end local v0    # "data":[B
    :cond_0
    return-object v2
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/android/mms/model/MediaModel;->mDuration:I

    return v0
.end method

.method public getMediaSize()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/android/mms/model/MediaModel;->mSize:I

    return v0
.end method

.method public getSeekTo()I
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/android/mms/model/MediaModel;->mSeekTo:I

    return v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected initMediaDuration()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 243
    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 246
    .local v4, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    iget-object v5, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 247
    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "duration":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 250
    new-instance v5, Lcom/google/android/mms/MmsException;

    const-string/jumbo v6, "Could not get duration."

    invoke-direct {v5, v6}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    .end local v0    # "duration":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 256
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string/jumbo v5, "Uri is invalid"

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 257
    new-instance v5, Lcom/google/android/mms/MmsException;

    invoke-direct {v5, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v5

    .line 265
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 264
    throw v5

    .line 253
    .restart local v0    # "duration":Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/mms/model/MediaModel;->mDuration:I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 265
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 241
    return-void

    .line 261
    .end local v0    # "duration":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 262
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_3
    const-string/jumbo v5, "File not supported by device"

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 263
    new-instance v5, Lcom/google/android/mms/MmsException;

    invoke-direct {v5, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 258
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v3

    .line 259
    .local v3, "e":Ljava/lang/SecurityException;
    const-string/jumbo v5, "Not allowed to access Uri"

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 260
    new-instance v5, Lcom/google/android/mms/MmsException;

    invoke-direct {v5, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method protected initModelFromFileUri(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 361
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "path":Ljava/lang/String;
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 363
    invoke-static {p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeTypeFromFileUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    .line 364
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    new-instance v1, Lcom/google/android/mms/MmsException;

    const-string/jumbo v2, "Type of media is unknown."

    invoke-direct {v1, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 360
    :cond_0
    return-void
.end method

.method public isAttachment()Z
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "ref"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isAudio()Z
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isImage()Z
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "img"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isPlayable()Z
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method public isText()Z
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isVideo()Z
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setBegin(I)V
    .locals 1
    .param p1, "begin"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/android/mms/model/MediaModel;->mBegin:I

    .line 135
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/MediaModel;->notifyModelChanged(Z)V

    .line 133
    return-void
.end method

.method public setDuration(I)V
    .locals 2
    .param p1, "duration"    # I

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->isPlayable()Z

    move-result v1

    if-eqz v1, :cond_0

    if-gez p1, :cond_0

    .line 146
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->initMediaDuration()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/MediaModel;->notifyModelChanged(Z)V

    .line 142
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Lcom/google/android/mms/MmsException;
    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 150
    return-void

    .line 153
    .end local v0    # "e":Lcom/google/android/mms/MmsException;
    :cond_0
    iput p1, p0, Lcom/android/mms/model/MediaModel;->mDuration:I

    goto :goto_0
.end method

.method public setFill(S)V
    .locals 1
    .param p1, "fill"    # S

    .prologue
    .line 213
    iput-short p1, p0, Lcom/android/mms/model/MediaModel;->mFill:S

    .line 214
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/MediaModel;->notifyModelChanged(Z)V

    .line 212
    return-void
.end method

.method setUri(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 189
    if-nez p1, :cond_0

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uri may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sonyericsson/conversations/util/FileUtil;->getPermittedUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mUri:Landroid/net/Uri;

    .line 188
    return-void
.end method
