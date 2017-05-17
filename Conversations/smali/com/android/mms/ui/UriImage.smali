.class public Lcom/android/mms/ui/UriImage;
.super Ljava/lang/Object;
.source "UriImage.java"


# instance fields
.field private mContentType:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mHeight:I

.field private mIsBrief:Z

.field private mPath:Ljava/lang/String;

.field private mSrc:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/Void;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "dummy"    # Ljava/lang/Void;
    .param p4, "isLoc"    # Z

    .prologue
    const/4 v2, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean v2, p0, Lcom/android/mms/ui/UriImage;->mIsBrief:Z

    .line 107
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 110
    :cond_1
    if-eqz p4, :cond_2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cid:location_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/Uri;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    .line 115
    :goto_0
    iput-boolean v2, p0, Lcom/android/mms/ui/UriImage;->mIsBrief:Z

    .line 116
    iput-object p1, p0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    .line 117
    iput-object p2, p0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    .line 119
    invoke-direct {p0}, Lcom/android/mms/ui/UriImage;->decodeBoundsInfo()V

    .line 106
    return-void

    .line 113
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/Uri;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "isBrief"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/UriImage;->mIsBrief:Z

    .line 75
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 76
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 79
    :cond_1
    iput-boolean p3, p0, Lcom/android/mms/ui/UriImage;->mIsBrief:Z

    .line 80
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "scheme":Ljava/lang/String;
    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/UriImage;->initFromContentUri(Landroid/content/Context;Landroid/net/Uri;)V

    .line 87
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 88
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mPath null! Uri: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 89
    const-string/jumbo v3, "\" probably obsolete!"

    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_3
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/UriImage;->initFromFile(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 91
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    .line 97
    iget-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    const/16 v2, 0x20

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    .line 99
    iput-object p1, p0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    .line 100
    iput-object p2, p0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    .line 102
    invoke-direct {p0}, Lcom/android/mms/ui/UriImage;->decodeBoundsInfo()V

    .line 74
    return-void
.end method

.method private decodeBoundsInfo()V
    .locals 9

    .prologue
    .line 199
    const/4 v3, 0x0

    .line 201
    .local v3, "input":Ljava/io/InputStream;
    :try_start_0
    iget-boolean v7, p0, Lcom/android/mms/ui/UriImage;->mIsBrief:Z

    if-eqz v7, :cond_0

    .line 202
    iget-object v7, p0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getSomcPduPersister(Landroid/content/Context;)Lcom/sonyericsson/conversations/data/SomcPduPersister;

    move-result-object v6

    .line 203
    .local v6, "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    iget-object v7, p0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->loadPartForBriefImage(Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 204
    .local v0, "briefImagePart":Lcom/google/android/mms/pdu/PduPart;
    if-eqz v0, :cond_0

    .line 205
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v4, "input":Ljava/io/InputStream;
    move-object v3, v4

    .line 208
    .end local v0    # "briefImagePart":Lcom/google/android/mms/pdu/PduPart;
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "input":Ljava/io/InputStream;
    .end local v6    # "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    :cond_0
    if-nez v3, :cond_1

    .line 209
    iget-object v7, p0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 212
    :cond_1
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 213
    .local v5, "opt":Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 214
    const/4 v7, 0x0

    invoke-static {v3, v7, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 215
    iget v7, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v7, p0, Lcom/android/mms/ui/UriImage;->mWidth:I

    .line 216
    iget v7, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v7, p0, Lcom/android/mms/ui/UriImage;->mHeight:I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    if-eqz v3, :cond_2

    .line 225
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 198
    .end local v5    # "opt":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    :goto_0
    return-void

    .line 226
    .restart local v5    # "opt":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v2

    .line 228
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v7, "IOException caught while closing stream"

    invoke-static {v7, v2}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 219
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "opt":Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v2

    .line 221
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v7, "IOException caught while opening stream"

    invoke-static {v7, v2}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    if-eqz v3, :cond_2

    .line 225
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 226
    :catch_2
    move-exception v2

    .line 228
    const-string/jumbo v7, "IOException caught while closing stream"

    invoke-static {v7, v2}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 217
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 223
    .local v1, "e":Lcom/google/android/mms/MmsException;
    if-eqz v3, :cond_2

    .line 225
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 226
    :catch_4
    move-exception v2

    .line 228
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "IOException caught while closing stream"

    invoke-static {v7, v2}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 222
    .end local v1    # "e":Lcom/google/android/mms/MmsException;
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 223
    if-eqz v3, :cond_3

    .line 225
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 222
    :cond_3
    :goto_1
    throw v7

    .line 226
    :catch_5
    move-exception v2

    .line 228
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "IOException caught while closing stream"

    invoke-static {v8, v2}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private initFromContentUri(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 128
    const/4 v13, 0x0

    .line 129
    .local v13, "part":Lcom/google/android/mms/pdu/PduPart;
    iget-boolean v1, p0, Lcom/android/mms/ui/UriImage;->mIsBrief:Z

    if-eqz v1, :cond_0

    .line 130
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getSomcPduPersister(Landroid/content/Context;)Lcom/sonyericsson/conversations/data/SomcPduPersister;

    move-result-object v14

    .line 132
    .local v14, "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->loadPartForBriefImage(Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduPart;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 136
    .local v13, "part":Lcom/google/android/mms/pdu/PduPart;
    if-eqz v13, :cond_0

    .line 137
    invoke-virtual {v13}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    .line 138
    invoke-virtual {v13}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    .line 141
    .end local v13    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v14    # "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    :cond_0
    if-nez v13, :cond_4

    .line 142
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 143
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    .line 142
    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 145
    .local v8, "c":Landroid/database/Cursor;
    if-nez v8, :cond_1

    .line 146
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Query on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " returns null result."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    .end local v8    # "c":Landroid/database/Cursor;
    .local v13, "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local v14    # "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    :catch_0
    move-exception v9

    .line 134
    .local v9, "e":Lcom/google/android/mms/MmsException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 150
    .end local v9    # "e":Lcom/google/android/mms/MmsException;
    .end local v13    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v14    # "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    .restart local v8    # "c":Landroid/database/Cursor;
    :cond_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 155
    invoke-static/range {p1 .. p2}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v12

    .line 157
    .local v12, "isDocumentDownload":Z
    if-nez v12, :cond_6

    invoke-static/range {p2 .. p2}, Lcom/android/mms/model/ImageModel;->isMmsUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 158
    const-string/jumbo v1, "fn"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 159
    .local v11, "filePath":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    const-string/jumbo v1, "_data"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 162
    :cond_2
    const-string/jumbo v1, "ct"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    .line 189
    :cond_3
    :goto_0
    iput-object v11, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 127
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v11    # "filePath":Ljava/lang/String;
    .end local v12    # "isDocumentDownload":Z
    :cond_4
    :goto_1
    return-void

    .line 151
    .restart local v8    # "c":Landroid/database/Cursor;
    :cond_5
    :try_start_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Query on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 152
    const-string/jumbo v3, " returns 0 or multiple rows."

    .line 151
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    :catch_1
    move-exception v10

    .line 191
    .local v10, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initFromContentUri couldn\'t load image uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 193
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 164
    .end local v10    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v12    # "isDocumentDownload":Z
    :cond_6
    :try_start_4
    const-string/jumbo v1, "_data"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    .line 165
    const-string/jumbo v1, "_data"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 174
    .restart local v11    # "filePath":Ljava/lang/String;
    :goto_2
    const-string/jumbo v1, "mime_type"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_9

    .line 175
    const-string/jumbo v1, "mime_type"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 192
    .end local v11    # "filePath":Ljava/lang/String;
    .end local v12    # "isDocumentDownload":Z
    :catchall_0
    move-exception v1

    .line 193
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 192
    throw v1

    .line 166
    .restart local v12    # "isDocumentDownload":Z
    :cond_7
    :try_start_5
    const-string/jumbo v1, "_display_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    .line 167
    const-string/jumbo v1, "_display_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "filePath":Ljava/lang/String;
    goto :goto_2

    .line 171
    .end local v11    # "filePath":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "filePath":Ljava/lang/String;
    goto :goto_2

    .line 176
    :cond_9
    const-string/jumbo v1, "mimetype"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_a

    .line 180
    const-string/jumbo v1, "mimetype"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    goto/16 :goto_0

    .line 183
    :cond_a
    invoke-static/range {p1 .. p2}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    .line 184
    iget-object v1, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 185
    invoke-static {v11}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeTypeFromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method private initFromFile(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 123
    invoke-static {p2}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeTypeFromFileUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    .line 124
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    .line 122
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/android/mms/ui/UriImage;->mHeight:I

    return v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/android/mms/ui/UriImage;->mWidth:I

    return v0
.end method
