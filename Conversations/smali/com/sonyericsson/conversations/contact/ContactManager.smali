.class public final Lcom/sonyericsson/conversations/contact/ContactManager;
.super Ljava/lang/Object;
.source "ContactManager.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mAppCtx:Landroid/content/Context;

.field private mContactLookup:Lcom/sonyericsson/conversations/util/ContactLookup;

.field private mImContactApi:Lcom/sonymobile/jms/contact/ImContactApi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    :cond_0
    sput-boolean v1, Lcom/sonyericsson/conversations/contact/ContactManager;->DEBUG:Z

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/sonyericsson/conversations/util/ContactLookup;Lcom/sonymobile/jms/contact/ImContactApi;)V
    .locals 0
    .param p1, "app"    # Landroid/app/Application;
    .param p2, "contactLookup"    # Lcom/sonyericsson/conversations/util/ContactLookup;
    .param p3, "imContactApi"    # Lcom/sonymobile/jms/contact/ImContactApi;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/sonyericsson/conversations/contact/ContactManager;->mAppCtx:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/sonyericsson/conversations/contact/ContactManager;->mContactLookup:Lcom/sonyericsson/conversations/util/ContactLookup;

    .line 44
    iput-object p3, p0, Lcom/sonyericsson/conversations/contact/ContactManager;->mImContactApi:Lcom/sonymobile/jms/contact/ImContactApi;

    .line 41
    return-void
.end method

.method private getContactPhoto(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "resampleFactor"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/conversations/contact/UnableToGetContactPhotoException;
        }
    .end annotation

    .prologue
    .line 105
    sget-boolean v4, Lcom/sonyericsson/conversations/contact/ContactManager;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 106
    const-string/jumbo v4, "contactUri \'"

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, "\' resampleFactor "

    invoke-virtual {v4, v5}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/sonymobile/conversations/util/LogUtil;->add(I)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsVerbose()V

    .line 110
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/conversations/contact/ContactManager;->mAppCtx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x1

    .line 109
    invoke-static {v4, p1, v5}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v3

    .line 111
    .local v3, "inputStream":Ljava/io/InputStream;
    if-nez v3, :cond_1

    .line 112
    new-instance v4, Lcom/sonyericsson/conversations/contact/UnableToGetContactPhotoException;

    .line 113
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to get contact photo from contactUri \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 112
    invoke-direct {v4, v5}, Lcom/sonyericsson/conversations/contact/UnableToGetContactPhotoException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 116
    :cond_1
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 120
    .local v0, "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 121
    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 128
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 121
    :goto_0
    return-object v4

    .line 129
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v5, "Unable to close inputstream for contact photo associated with contactUri \'"

    .line 130
    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v5

    .line 132
    const-string/jumbo v6, "\'!"

    .line 130
    invoke-virtual {v5, v6}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 123
    .end local v0    # "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 124
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Lcom/sonyericsson/conversations/contact/UnableToGetContactPhotoException;

    .line 125
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to get contact photo from contactUri \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 124
    invoke-direct {v4, v5}, Lcom/sonyericsson/conversations/contact/UnableToGetContactPhotoException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 128
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 126
    :goto_1
    throw v4

    .line 129
    :catch_2
    move-exception v1

    .line 131
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "Unable to close inputstream for contact photo associated with contactUri \'"

    .line 130
    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v5

    .line 132
    const-string/jumbo v6, "\'!"

    .line 130
    invoke-virtual {v5, v6}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private getContactPhotoResampleFactor(Landroid/net/Uri;II)I
    .locals 16
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/conversations/contact/UnableToGetContactPhotoException;
        }
    .end annotation

    .prologue
    .line 55
    sget-boolean v12, Lcom/sonyericsson/conversations/contact/ContactManager;->DEBUG:Z

    if-eqz v12, :cond_0

    .line 56
    const-string/jumbo v12, "contactUri \'"

    invoke-static {v12}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v12

    const-string/jumbo v13, "\' maxWidth "

    invoke-virtual {v12, v13}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/sonymobile/conversations/util/LogUtil;->add(I)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v12

    .line 57
    const-string/jumbo v13, " maxHeight "

    .line 56
    invoke-virtual {v12, v13}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/sonymobile/conversations/util/LogUtil;->add(I)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsVerbose()V

    .line 60
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/conversations/contact/ContactManager;->mAppCtx:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const/4 v13, 0x1

    .line 59
    move-object/from16 v0, p1

    invoke-static {v12, v0, v13}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v5

    .line 61
    .local v5, "inputStream":Ljava/io/InputStream;
    if-nez v5, :cond_1

    .line 65
    new-instance v12, Lcom/sonyericsson/conversations/contact/UnableToGetContactPhotoException;

    .line 66
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Could not get resampleFactor for contact photo associated with contactUri \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 67
    const-string/jumbo v14, "\'!"

    .line 66
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 65
    invoke-direct {v12, v13}, Lcom/sonyericsson/conversations/contact/UnableToGetContactPhotoException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 70
    :cond_1
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 73
    .local v2, "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v12, 0x1

    iput-boolean v12, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 74
    const/4 v12, 0x0

    invoke-static {v5, v12, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 76
    iget v12, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v12, v12

    move/from16 v0, p2

    int-to-double v14, v0

    div-double v10, v12, v14

    .line 77
    .local v10, "widthResampleFactor":D
    iget v12, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v12, v12

    move/from16 v0, p3

    int-to-double v14, v0

    div-double v6, v12, v14

    .line 78
    .local v6, "heightResampleFactor":D
    sget-boolean v12, Lcom/sonyericsson/conversations/contact/ContactManager;->DEBUG:Z

    if-eqz v12, :cond_2

    .line 79
    const-string/jumbo v12, "original dimensions ("

    invoke-static {v12}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v12

    iget v13, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v12, v13}, Lcom/sonymobile/conversations/util/LogUtil;->add(I)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v12

    const-string/jumbo v13, "x"

    invoke-virtual {v12, v13}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v12

    .line 80
    iget v13, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 79
    invoke-virtual {v12, v13}, Lcom/sonymobile/conversations/util/LogUtil;->add(I)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v12

    .line 80
    const-string/jumbo v13, ") max dimensions ("

    .line 79
    invoke-virtual {v12, v13}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/sonymobile/conversations/util/LogUtil;->add(I)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v12

    .line 81
    const-string/jumbo v13, "x"

    .line 79
    invoke-virtual {v12, v13}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/sonymobile/conversations/util/LogUtil;->add(I)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v12

    .line 81
    const-string/jumbo v13, ") resampleFactors ("

    .line 79
    invoke-virtual {v12, v13}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v12

    .line 82
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    .line 79
    invoke-virtual {v12, v13}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v12

    .line 82
    const-string/jumbo v13, ","

    .line 79
    invoke-virtual {v12, v13}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v12

    .line 82
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    .line 79
    invoke-virtual {v12, v13}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v12

    .line 82
    const-string/jumbo v13, ")"

    .line 79
    invoke-virtual {v12, v13}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsVerbose()V

    .line 85
    :cond_2
    cmpl-double v12, v10, v6

    if-lez v12, :cond_3

    move-wide v8, v10

    .line 87
    .local v8, "resampleFactor":D
    :goto_0
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v12

    double-to-int v12, v12

    .line 94
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 87
    :goto_1
    return v12

    .line 86
    .end local v8    # "resampleFactor":D
    :cond_3
    move-wide v8, v6

    .restart local v8    # "resampleFactor":D
    goto :goto_0

    .line 95
    :catch_0
    move-exception v3

    .line 97
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v13, "Unable to close inputstream for contact photo associated with contactUri \'"

    .line 96
    invoke-static {v13}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v13

    .line 98
    const-string/jumbo v14, "\'!"

    .line 96
    invoke-virtual {v13, v14}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 89
    .end local v2    # "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "heightResampleFactor":D
    .end local v8    # "resampleFactor":D
    .end local v10    # "widthResampleFactor":D
    :catch_1
    move-exception v4

    .line 90
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v12, Lcom/sonyericsson/conversations/contact/UnableToGetContactPhotoException;

    .line 91
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Unable to get contact photo from contactUri \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 90
    invoke-direct {v12, v13}, Lcom/sonyericsson/conversations/contact/UnableToGetContactPhotoException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    .line 94
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 92
    :goto_2
    throw v12

    .line 95
    :catch_2
    move-exception v3

    .line 97
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v13, "Unable to close inputstream for contact photo associated with contactUri \'"

    .line 96
    invoke-static {v13}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v13

    .line 98
    const-string/jumbo v14, "\'!"

    .line 96
    invoke-virtual {v13, v14}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private getDisplayNameFromCache(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 138
    const/4 v1, 0x0

    .line 141
    .local v1, "displayName":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/contact/ContactManager;->mContactLookup:Lcom/sonyericsson/conversations/util/ContactLookup;

    invoke-static {p1}, Lcom/sonyericsson/conversations/util/AddressUtil;->formatNumberToKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Lcom/sonyericsson/conversations/util/ContactLookup;->getMatch(ZLjava/lang/String;)Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    move-result-object v0

    .line 142
    .local v0, "contactMatch":Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    if-eqz v0, :cond_0

    .line 143
    iget-object v1, v0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;->name:Ljava/lang/String;
    :try_end_0
    .catch Lcom/sonyericsson/conversations/contact/NotAPhoneNumberException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .end local v1    # "displayName":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 148
    iget-object v3, p0, Lcom/sonyericsson/conversations/contact/ContactManager;->mContactLookup:Lcom/sonyericsson/conversations/util/ContactLookup;

    invoke-virtual {v3, v6, p1}, Lcom/sonyericsson/conversations/util/ContactLookup;->getMatch(ZLjava/lang/String;)Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_1

    .line 150
    iget-object v1, v0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;->name:Ljava/lang/String;

    .line 154
    .end local v0    # "contactMatch":Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    :cond_1
    :goto_0
    return-object v1

    .line 145
    .restart local v1    # "displayName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 147
    .local v2, "e":Lcom/sonyericsson/conversations/contact/NotAPhoneNumberException;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 148
    iget-object v3, p0, Lcom/sonyericsson/conversations/contact/ContactManager;->mContactLookup:Lcom/sonyericsson/conversations/util/ContactLookup;

    invoke-virtual {v3, v6, p1}, Lcom/sonyericsson/conversations/util/ContactLookup;->getMatch(ZLjava/lang/String;)Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    move-result-object v0

    .line 149
    .restart local v0    # "contactMatch":Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    if-eqz v0, :cond_1

    .line 150
    iget-object v1, v0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;->name:Ljava/lang/String;

    .local v1, "displayName":Ljava/lang/String;
    goto :goto_0

    .line 146
    .end local v0    # "contactMatch":Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    .end local v2    # "e":Lcom/sonyericsson/conversations/contact/NotAPhoneNumberException;
    .local v1, "displayName":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 147
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 148
    iget-object v4, p0, Lcom/sonyericsson/conversations/contact/ContactManager;->mContactLookup:Lcom/sonyericsson/conversations/util/ContactLookup;

    invoke-virtual {v4, v6, p1}, Lcom/sonyericsson/conversations/util/ContactLookup;->getMatch(ZLjava/lang/String;)Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    move-result-object v0

    .line 149
    .restart local v0    # "contactMatch":Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    if-eqz v0, :cond_2

    .line 150
    iget-object v1, v0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;->name:Ljava/lang/String;

    .line 146
    .end local v0    # "contactMatch":Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    .end local v1    # "displayName":Ljava/lang/String;
    :cond_2
    throw v3
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/sonyericsson/conversations/contact/ContactManager;->mImContactApi:Lcom/sonymobile/jms/contact/ImContactApi;

    .line 49
    iput-object v0, p0, Lcom/sonyericsson/conversations/contact/ContactManager;->mContactLookup:Lcom/sonyericsson/conversations/util/ContactLookup;

    .line 50
    iput-object v0, p0, Lcom/sonyericsson/conversations/contact/ContactManager;->mAppCtx:Landroid/content/Context;

    .line 47
    return-void
.end method

.method public getContactPhoto(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/conversations/contact/ContactNotFoundException;,
            Lcom/sonyericsson/conversations/contact/UnableToGetContactPhotoException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 205
    sget-boolean v6, Lcom/sonyericsson/conversations/contact/ContactManager;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 206
    const-string/jumbo v6, "ContactNumber \'"

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v6

    const-string/jumbo v7, "\' maxWidth "

    invoke-virtual {v6, v7}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/sonymobile/conversations/util/LogUtil;->add(I)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v6

    .line 207
    const-string/jumbo v7, "\' maxHeight "

    .line 206
    invoke-virtual {v6, v7}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/sonymobile/conversations/util/LogUtil;->add(I)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsVerbose()V

    .line 210
    :cond_0
    iget-object v6, p0, Lcom/sonyericsson/conversations/contact/ContactManager;->mContactLookup:Lcom/sonyericsson/conversations/util/ContactLookup;

    invoke-virtual {v6, p1}, Lcom/sonyericsson/conversations/util/ContactLookup;->getContactUriFromPhoneNumber(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 211
    .local v1, "contactUri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 214
    :try_start_0
    invoke-direct {p0, v1, p2, p3}, Lcom/sonyericsson/conversations/contact/ContactManager;->getContactPhotoResampleFactor(Landroid/net/Uri;II)I
    :try_end_0
    .catch Lcom/sonyericsson/conversations/contact/UnableToGetContactPhotoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 224
    .local v5, "resampleFactor":I
    :goto_0
    if-lez v5, :cond_1

    .line 230
    invoke-direct {p0, v1, v5}, Lcom/sonyericsson/conversations/contact/ContactManager;->getContactPhoto(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 233
    .local v0, "contactPhoto":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 234
    return-object v0

    .line 215
    .end local v0    # "contactPhoto":Landroid/graphics/Bitmap;
    .end local v5    # "resampleFactor":I
    :catch_0
    move-exception v2

    .line 220
    .local v2, "e":Lcom/sonyericsson/conversations/contact/UnableToGetContactPhotoException;
    const/4 v5, 0x0

    .restart local v5    # "resampleFactor":I
    goto :goto_0

    .line 240
    .end local v2    # "e":Lcom/sonyericsson/conversations/contact/UnableToGetContactPhotoException;
    .end local v5    # "resampleFactor":I
    :cond_1
    iget-object v6, p0, Lcom/sonyericsson/conversations/contact/ContactManager;->mImContactApi:Lcom/sonymobile/jms/contact/ImContactApi;

    if-eqz v6, :cond_2

    invoke-static {p1}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->isValidUriOrNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 242
    :try_start_1
    iget-object v6, p0, Lcom/sonyericsson/conversations/contact/ContactManager;->mImContactApi:Lcom/sonymobile/jms/contact/ImContactApi;

    invoke-static {p1}, Lcom/sonymobile/jms/contact/ImContactNumber;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v7

    invoke-interface {v6, v7, p2, p3}, Lcom/sonymobile/jms/contact/ImContactApi;->getImContactPhoto(Lcom/sonymobile/jms/contact/ImContactNumber;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Lcom/sonymobile/jms/contact/ImContactNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sonymobile/jms/contact/UnableToGetImContactPhotoException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    return-object v6

    .line 250
    :catch_1
    move-exception v4

    .line 253
    .local v4, "e":Lcom/sonymobile/jms/contact/UnableToGetImContactPhotoException;
    new-instance v6, Lcom/sonyericsson/conversations/contact/UnableToGetContactPhotoException;

    .line 254
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to get contact photo for contact with number \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\'!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 253
    invoke-direct {v6, v7}, Lcom/sonyericsson/conversations/contact/UnableToGetContactPhotoException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 245
    .end local v4    # "e":Lcom/sonymobile/jms/contact/UnableToGetImContactPhotoException;
    :catch_2
    move-exception v3

    .line 248
    .local v3, "e":Lcom/sonymobile/jms/contact/ImContactNotFoundException;
    new-instance v6, Lcom/sonyericsson/conversations/contact/ContactNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "No contact matching number \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 249
    const-string/jumbo v8, "\' can be found in either address book or as an ImContact!"

    .line 248
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sonyericsson/conversations/contact/ContactNotFoundException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 259
    .end local v3    # "e":Lcom/sonymobile/jms/contact/ImContactNotFoundException;
    :cond_2
    return-object v8
.end method

.method public getDisplayName(Ljava/lang/String;)Lcom/sonyericsson/conversations/contact/DisplayName;
    .locals 5
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/contact/ImContactNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 164
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/contact/ContactManager;->getDisplayNameFromCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "displayName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 166
    invoke-static {v0, p1}, Lcom/sonyericsson/conversations/contact/DisplayName;->fromContactDisplayName(Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/conversations/contact/DisplayName;

    move-result-object v2

    return-object v2

    .line 170
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->isValidUriOrNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 171
    invoke-static {v3, p1}, Lcom/sonyericsson/conversations/contact/DisplayName;->fromContactDisplayName(Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/conversations/contact/DisplayName;

    move-result-object v2

    return-object v2

    .line 175
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/contact/ContactManager;->mImContactApi:Lcom/sonymobile/jms/contact/ImContactApi;

    invoke-static {p1}, Lcom/sonymobile/jms/contact/ImContactNumber;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sonymobile/jms/contact/ImContactApi;->getImContactDisplayName(Lcom/sonymobile/jms/contact/ImContactNumber;)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "imContactDisplayName":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 177
    new-instance v2, Lcom/sonymobile/jms/contact/ImContactNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No IM contact found for number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/jms/contact/ImContactNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 179
    :cond_2
    invoke-static {v1, p1}, Lcom/sonyericsson/conversations/contact/DisplayName;->fromImDisplayName(Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/conversations/contact/DisplayName;

    move-result-object v2

    return-object v2
.end method

.method public getDisplayNameWithFallback(Ljava/lang/String;)Lcom/sonyericsson/conversations/contact/DisplayName;
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 185
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/contact/ContactManager;->getDisplayName(Ljava/lang/String;)Lcom/sonyericsson/conversations/contact/DisplayName;
    :try_end_0
    .catch Lcom/sonymobile/jms/contact/ImContactNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 186
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Lcom/sonymobile/jms/contact/ImContactNotFoundException;
    const/4 v1, 0x0

    invoke-static {v1, p1}, Lcom/sonyericsson/conversations/contact/DisplayName;->fromContactDisplayName(Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/conversations/contact/DisplayName;

    move-result-object v1

    return-object v1
.end method

.method public hasPhoneBookEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/contact/ContactManager;->getDisplayNameFromCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
