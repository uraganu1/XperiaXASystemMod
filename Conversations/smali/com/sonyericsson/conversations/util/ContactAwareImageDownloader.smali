.class public Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;
.super Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;
.source "ContactAwareImageDownloader.java"


# instance fields
.field private mArtWorkGenerator:Lcom/sonyericsson/conversations/util/ReliableArtWorkGenerator;

.field private final mContactBadgeHeight:I

.field private final mContactBadgeWidth:I

.field private mContactManager:Lcom/sonyericsson/conversations/contact/ContactManager;

.field private final mGroupBadgeAlpha:I

.field private final mGroupBadgeStrokeSize:I

.field private final mJohnnyGenerator:Lcom/sonyericsson/conversations/util/JohnnyGenerator;

.field private mWearableBackgroundHeight:I

.field private mWearableBackgroundWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/contact/ContactManager;IIII)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactManager"    # Lcom/sonyericsson/conversations/contact/ContactManager;
    .param p3, "contactBadgeWidth"    # I
    .param p4, "contactBadgeHeight"    # I
    .param p5, "groupBadgeStrokeSize"    # I
    .param p6, "groupBadgeAlpha"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;-><init>(Landroid/content/Context;)V

    .line 61
    iput-object p2, p0, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->mContactManager:Lcom/sonyericsson/conversations/contact/ContactManager;

    .line 62
    iput p3, p0, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->mContactBadgeWidth:I

    .line 63
    iput p4, p0, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->mContactBadgeHeight:I

    .line 64
    new-instance v0, Lcom/sonyericsson/conversations/util/JohnnyGenerator;

    invoke-direct {v0, p1}, Lcom/sonyericsson/conversations/util/JohnnyGenerator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->mJohnnyGenerator:Lcom/sonyericsson/conversations/util/JohnnyGenerator;

    .line 65
    iput p5, p0, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->mGroupBadgeStrokeSize:I

    .line 66
    iput p6, p0, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->mGroupBadgeAlpha:I

    .line 59
    return-void
.end method

.method private createGroupContactImage(Ljava/util/List;II)Landroid/graphics/Bitmap;
    .locals 21
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, "images":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 243
    .local v8, "paint":Landroid/graphics/Paint;
    const/4 v5, -0x1

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->mGroupBadgeStrokeSize:I

    int-to-float v5, v5

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 246
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->mGroupBadgeAlpha:I

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 247
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 248
    .local v9, "baseBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 250
    .local v3, "canvas":Landroid/graphics/Canvas;
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Bitmap;

    .line 251
    .local v13, "img0":Landroid/graphics/Bitmap;
    new-instance v16, Landroid/graphics/Rect;

    div-int/lit8 v5, p2, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-direct {v0, v6, v7, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 252
    .local v16, "leftHalf":Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0x4

    .line 253
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 252
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-direct {v10, v5, v0, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 254
    .local v10, "centerHalf0":Landroid/graphics/Rect;
    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v13, v10, v0, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 256
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 257
    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Bitmap;

    .line 258
    .local v14, "img1":Landroid/graphics/Bitmap;
    new-instance v18, Landroid/graphics/Rect;

    div-int/lit8 v5, p2, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, v18

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v5, v6, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 259
    .local v18, "rightHalf":Landroid/graphics/Rect;
    new-instance v11, Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0x4

    .line 260
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 259
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-direct {v11, v5, v0, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 261
    .local v11, "centerHalf1":Landroid/graphics/Rect;
    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v3, v14, v11, v0, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 263
    div-int/lit8 v5, p2, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->mGroupBadgeStrokeSize:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v4, v5

    .line 264
    .local v4, "dividerXPos":F
    const/4 v5, 0x0

    move/from16 v0, p3

    int-to-float v7, v0

    move v6, v4

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 280
    .end local v4    # "dividerXPos":F
    .end local v11    # "centerHalf1":Landroid/graphics/Rect;
    .end local v14    # "img1":Landroid/graphics/Bitmap;
    .end local v18    # "rightHalf":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-object v9

    .line 265
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_0

    .line 266
    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Bitmap;

    .line 267
    .restart local v14    # "img1":Landroid/graphics/Bitmap;
    const/4 v5, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/Bitmap;

    .line 268
    .local v15, "img2":Landroid/graphics/Bitmap;
    new-instance v19, Landroid/graphics/Rect;

    div-int/lit8 v5, p2, 0x2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v7, p3, 0x2

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v5, v1, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 269
    .local v19, "rightTopHalf":Landroid/graphics/Rect;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v3, v14, v5, v0, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 271
    new-instance v17, Landroid/graphics/Rect;

    div-int/lit8 v5, p2, 0x2

    div-int/lit8 v6, p3, 0x2

    move-object/from16 v0, v17

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v5, v6, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 272
    .local v17, "rightBottomHalf":Landroid/graphics/Rect;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v3, v15, v5, v0, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 274
    div-int/lit8 v5, p2, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->mGroupBadgeStrokeSize:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v4, v5

    .line 275
    .restart local v4    # "dividerXPos":F
    div-int/lit8 v5, p3, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->mGroupBadgeStrokeSize:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v12, v5

    .line 276
    .local v12, "dividerYPos":F
    const/4 v5, 0x0

    move/from16 v0, p3

    int-to-float v7, v0

    move v6, v4

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 277
    move/from16 v0, p2

    int-to-float v6, v0

    move v5, v12

    move v7, v12

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private getByteArrayInputStream(Landroid/graphics/Bitmap;)Ljava/io/ByteArrayInputStream;
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 164
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 165
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 166
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1
.end method

.method private getContactPhoto(Lcom/sonyericsson/conversations/model/Participant;II)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "participant"    # Lcom/sonyericsson/conversations/model/Participant;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->mContactManager:Lcom/sonyericsson/conversations/contact/ContactManager;

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Lcom/sonyericsson/conversations/contact/ContactManager;->getContactPhoto(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lcom/sonyericsson/conversations/contact/ContactNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonyericsson/conversations/contact/UnableToGetContactPhotoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getContactPhotoOrDefault(Lcom/sonyericsson/conversations/model/Participant;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "participant"    # Lcom/sonyericsson/conversations/model/Participant;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->getContactPhoto(Lcom/sonyericsson/conversations/model/Participant;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 128
    .local v0, "contactPhoto":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 129
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->getDefaultContactPicture(Lcom/sonyericsson/conversations/model/Participant;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 131
    :cond_0
    return-object v0
.end method

.method private declared-synchronized getDefaultContactPicture(Lcom/sonyericsson/conversations/model/Participant;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "participant"    # Lcom/sonyericsson/conversations/model/Participant;

    .prologue
    monitor-enter p0

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->mArtWorkGenerator:Lcom/sonyericsson/conversations/util/ReliableArtWorkGenerator;

    .line 194
    iget v1, p0, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->mContactBadgeWidth:I

    iget v2, p0, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->mContactBadgeHeight:I

    .line 193
    invoke-virtual {v0, p1, v1, v2}, Lcom/sonyericsson/conversations/util/ReliableArtWorkGenerator;->generateLetterTile(Lcom/sonyericsson/conversations/model/Participant;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getDefaultWearableBackgroundPicture(Lcom/sonyericsson/conversations/model/Participant;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "participant"    # Lcom/sonyericsson/conversations/model/Participant;

    .prologue
    monitor-enter p0

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->mArtWorkGenerator:Lcom/sonyericsson/conversations/util/ReliableArtWorkGenerator;

    .line 213
    iget v1, p0, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->mWearableBackgroundWidth:I

    iget v2, p0, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->mWearableBackgroundHeight:I

    .line 212
    invoke-virtual {v0, p1, v1, v2}, Lcom/sonyericsson/conversations/util/ReliableArtWorkGenerator;->generateLetterTile(Lcom/sonyericsson/conversations/model/Participant;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getGroupConversationPicture(Ljava/util/List;II)Landroid/graphics/Bitmap;
    .locals 6
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;II)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    const/4 v5, 0x3

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 224
    .local v0, "bitmaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    if-ge v1, v5, :cond_0

    .line 225
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/model/Participant;

    .line 226
    .local v2, "participant":Lcom/sonyericsson/conversations/model/Participant;
    invoke-direct {p0, v2, p2, p3}, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->getContactPhotoOrDefault(Lcom/sonyericsson/conversations/model/Participant;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 227
    .local v3, "photo":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    .end local v2    # "participant":Lcom/sonyericsson/conversations/model/Participant;
    .end local v3    # "photo":Landroid/graphics/Bitmap;
    :cond_0
    invoke-direct {p0, v0, p2, p3}, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->createGroupContactImage(Ljava/util/List;II)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4
.end method

.method private getStreamForContact(Lcom/sonyericsson/conversations/model/Participant;)Ljava/io/InputStream;
    .locals 3
    .param p1, "participant"    # Lcom/sonyericsson/conversations/model/Participant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    iget v1, p0, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->mContactBadgeWidth:I

    iget v2, p0, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->mContactBadgeHeight:I

    .line 120
    invoke-direct {p0, p1, v1, v2}, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->getContactPhotoOrDefault(Lcom/sonyericsson/conversations/model/Participant;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 122
    .local v0, "contactPhoto":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->getByteArrayInputStream(Landroid/graphics/Bitmap;)Ljava/io/ByteArrayInputStream;

    move-result-object v1

    return-object v1
.end method

.method private getStreamForGroupConversation(Ljava/util/List;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    iget v0, p0, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->mContactBadgeWidth:I

    iget v1, p0, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->mContactBadgeHeight:I

    .line 154
    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->getGroupConversationPicture(Ljava/util/List;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->getByteArrayInputStream(Landroid/graphics/Bitmap;)Ljava/io/ByteArrayInputStream;

    move-result-object v0

    return-object v0
.end method

.method private getStreamForWearable(Lcom/sonyericsson/conversations/model/Participant;)Ljava/io/InputStream;
    .locals 3
    .param p1, "participant"    # Lcom/sonyericsson/conversations/model/Participant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    iget v1, p0, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->mWearableBackgroundWidth:I

    .line 145
    iget v2, p0, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->mWearableBackgroundHeight:I

    .line 144
    invoke-direct {p0, p1, v1, v2}, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->getContactPhoto(Lcom/sonyericsson/conversations/model/Participant;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 146
    .local v0, "wearablePhoto":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 147
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->getDefaultWearableBackgroundPicture(Lcom/sonyericsson/conversations/model/Participant;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 149
    :cond_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->getByteArrayInputStream(Landroid/graphics/Bitmap;)Ljava/io/ByteArrayInputStream;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getDefaultContactPictureColor(Lcom/sonyericsson/conversations/model/Participant;)I
    .locals 1
    .param p1, "participant"    # Lcom/sonyericsson/conversations/model/Participant;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->mArtWorkGenerator:Lcom/sonyericsson/conversations/util/ReliableArtWorkGenerator;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/util/ReliableArtWorkGenerator;->getBaseColorIgnoreSelf(Lcom/sonyericsson/conversations/model/Participant;)I

    move-result v0

    return v0
.end method

.method public getStream(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 1
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    const-string/jumbo v0, "contact-picture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    check-cast p2, Lcom/sonyericsson/conversations/model/Participant;

    .end local p2    # "extra":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->getStreamForContact(Lcom/sonyericsson/conversations/model/Participant;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 102
    .restart local p2    # "extra":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v0, "contact-wearable-picture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    check-cast p2, Lcom/sonyericsson/conversations/model/Participant;

    .end local p2    # "extra":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->getStreamForWearable(Lcom/sonyericsson/conversations/model/Participant;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 104
    .restart local p2    # "extra":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v0, "contact-group-picture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    check-cast p2, Ljava/util/List;

    .end local p2    # "extra":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->getStreamForGroupConversation(Ljava/util/List;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 107
    .restart local p2    # "extra":Ljava/lang/Object;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;->getStream(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public init()Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;
    .locals 5

    .prologue
    .line 70
    new-instance v0, Lcom/sonyericsson/conversations/util/ReliableArtWorkGenerator;

    iget-object v1, p0, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->context:Landroid/content/Context;

    .line 71
    iget v2, p0, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->mContactBadgeWidth:I

    iget v3, p0, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->mWearableBackgroundWidth:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 72
    iget v3, p0, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->mContactBadgeHeight:I

    iget v4, p0, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->mWearableBackgroundHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 70
    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/conversations/util/ReliableArtWorkGenerator;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->mArtWorkGenerator:Lcom/sonyericsson/conversations/util/ReliableArtWorkGenerator;

    .line 73
    return-object p0
.end method

.method public setDefaultWearableBackgroundSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->mWearableBackgroundWidth:I

    .line 85
    iput p2, p0, Lcom/sonyericsson/conversations/util/ContactAwareImageDownloader;->mWearableBackgroundHeight:I

    .line 83
    return-void
.end method
