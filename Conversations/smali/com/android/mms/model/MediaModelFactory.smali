.class public Lcom/android/mms/model/MediaModelFactory;
.super Ljava/lang/Object;
.source "MediaModelFactory.java"


# static fields
.field private static final CHECKING_FILE_EXTENSIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "vcf"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/model/MediaModelFactory;->CHECKING_FILE_EXTENSIONS:[Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findPart(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;
    .locals 3
    .param p0, "pb"    # Lcom/google/android/mms/pdu/PduBody;
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 88
    .local v0, "part":Lcom/google/android/mms/pdu/PduPart;
    if-eqz p1, :cond_0

    .line 89
    const-string/jumbo v1, "cid:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "cid:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 106
    .end local v0    # "part":Lcom/google/android/mms/pdu/PduPart;
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 107
    return-object v0

    .line 92
    .restart local v0    # "part":Lcom/google/android/mms/pdu/PduPart;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 93
    .local v0, "part":Lcom/google/android/mms/pdu/PduPart;
    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByFileName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 95
    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 97
    if-nez v0, :cond_0

    .line 99
    invoke-static {p0, p1}, Lcom/android/mms/model/MediaModelFactory;->findPartByContentLocationStringComparison(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    goto :goto_0

    .line 110
    .end local v0    # "part":Lcom/google/android/mms/pdu/PduPart;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "No part found for the model."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static findPartByContentLocationStringComparison(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;
    .locals 7
    .param p0, "pb"    # Lcom/google/android/mms/pdu/PduBody;
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 126
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v2

    .line 128
    .local v2, "nbrParts":I
    const/4 v3, 0x0

    .local v3, "partIdx":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 129
    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v4

    .line 130
    .local v4, "pp":Lcom/google/android/mms/pdu/PduPart;
    if-eqz v4, :cond_1

    .line 132
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v0

    .line 133
    .local v0, "cLoc":[B
    if-eqz v0, :cond_1

    .line 134
    new-instance v1, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 135
    .local v1, "contentLocation":Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string/jumbo v5, ".dm"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, ".fl"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 136
    invoke-static {p1}, Lcom/android/mms/model/MediaModelFactory;->removeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 137
    invoke-static {v1}, Lcom/android/mms/model/MediaModelFactory;->removeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    :cond_0
    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 142
    return-object v4

    .line 128
    .end local v0    # "cLoc":[B
    .end local v1    # "contentLocation":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 148
    .end local v4    # "pp":Lcom/google/android/mms/pdu/PduPart;
    :cond_2
    return-object v6
.end method

.method private static getContentTypeEx(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;
    .locals 8
    .param p0, "part"    # Lcom/google/android/mms/pdu/PduPart;

    .prologue
    .line 307
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    .line 308
    .local v3, "typeMap":Landroid/webkit/MimeTypeMap;
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 309
    .local v1, "location":Ljava/lang/String;
    invoke-static {v1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "fileExtension":Ljava/lang/String;
    sget-object v5, Lcom/android/mms/model/MediaModelFactory;->CHECKING_FILE_EXTENSIONS:[Ljava/lang/String;

    const/4 v4, 0x0

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v2, v5, v4

    .line 311
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 314
    invoke-virtual {v3, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 310
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 318
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method public static getMediaModel(Landroid/content/Context;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduBody;Z)Lcom/android/mms/model/MediaModel;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sme"    # Lorg/w3c/dom/smil/SMILMediaElement;
    .param p2, "layouts"    # Lcom/android/mms/model/LayoutModel;
    .param p3, "pb"    # Lcom/google/android/mms/pdu/PduBody;
    .param p4, "isBrief"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/smil/SMILMediaElement;->getTagName()Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "tag":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/smil/SMILMediaElement;->getSrc()Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "src":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/android/mms/model/MediaModelFactory;->findPart(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v6

    .line 65
    .local v6, "part":Lcom/google/android/mms/pdu/PduPart;
    new-instance v14, Ljava/lang/String;

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v1

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v14, v1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 66
    .local v14, "contentType":Ljava/lang/String;
    if-eqz p4, :cond_0

    invoke-static {v14}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getSomcPduPersister(Landroid/content/Context;)Lcom/sonyericsson/conversations/data/SomcPduPersister;

    move-result-object v16

    .line 68
    .local v16, "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v15

    .line 69
    .local v15, "partUri":Landroid/net/Uri;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->loadPartForBriefImage(Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v6

    .line 72
    .end local v15    # "partUri":Landroid/net/Uri;
    .end local v16    # "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    :cond_0
    if-nez v6, :cond_1

    .line 73
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Part may not be null."

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_1
    move-object/from16 v0, p1

    instance-of v1, v0, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    if-eqz v1, :cond_2

    move-object/from16 v4, p1

    .line 78
    check-cast v4, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    move-object/from16 v1, p0

    move-object/from16 v5, p2

    move/from16 v7, p4

    .line 77
    invoke-static/range {v1 .. v7}, Lcom/android/mms/model/MediaModelFactory;->getRegionMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILRegionMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduPart;Z)Lcom/android/mms/model/MediaModel;

    move-result-object v1

    return-object v1

    .line 81
    :cond_2
    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object v8, v2

    move-object v9, v3

    move-object/from16 v10, p1

    move-object v11, v6

    move/from16 v13, p4

    .line 80
    invoke-static/range {v7 .. v13}, Lcom/android/mms/model/MediaModelFactory;->getMmsMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;Z)Lcom/android/mms/model/MediaModel;

    move-result-object v1

    return-object v1
.end method

.method private static getMmsMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;Z)Lcom/android/mms/model/MediaModel;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "src"    # Ljava/lang/String;
    .param p3, "sme"    # Lorg/w3c/dom/smil/SMILMediaElement;
    .param p4, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .param p5, "regionModel"    # Lcom/android/mms/model/RegionModel;
    .param p6, "isBrief"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v11

    .line 190
    .local v11, "bytes":[B
    if-nez v11, :cond_0

    .line 191
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 192
    const-string/jumbo v5, "Content-Type of the part may not be null."

    .line 191
    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 195
    :cond_0
    new-instance v4, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v11, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 197
    .local v4, "contentType":Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 200
    new-instance v2, Lcom/sonyericsson/conversations/model/AttachmentModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v6

    .line 201
    const/4 v7, 0x1

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    .line 200
    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/conversations/model/AttachmentModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;I)V

    .line 202
    .local v2, "media":Lcom/android/mms/model/MediaModel;
    sget-boolean v3, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unrecognized content type: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", src: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 271
    :cond_1
    :goto_0
    const/4 v10, 0x0

    .line 272
    .local v10, "begin":I
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v15

    .line 273
    .local v15, "tl":Lorg/w3c/dom/smil/TimeList;
    if-eqz v15, :cond_2

    invoke-interface {v15}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v3

    if-lez v3, :cond_2

    .line 275
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v13

    .line 276
    .local v13, "t":Lorg/w3c/dom/smil/Time;
    invoke-interface {v13}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v6

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v6, v6, v16

    double-to-int v10, v6

    .line 278
    .end local v13    # "t":Lorg/w3c/dom/smil/Time;
    :cond_2
    invoke-virtual {v2, v10}, Lcom/android/mms/model/MediaModel;->setBegin(I)V

    .line 281
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getDur()F

    move-result v3

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v5

    float-to-int v12, v3

    .line 282
    .local v12, "duration":I
    if-gtz v12, :cond_3

    .line 283
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v15

    .line 284
    if-eqz v15, :cond_3

    invoke-interface {v15}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v3

    if-lez v3, :cond_3

    .line 286
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v13

    .line 287
    .restart local v13    # "t":Lorg/w3c/dom/smil/Time;
    invoke-interface {v13}, Lorg/w3c/dom/smil/Time;->getTimeType()S

    move-result v3

    if-eqz v3, :cond_3

    .line 288
    invoke-interface {v13}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v6

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v6, v6, v16

    double-to-int v3, v6

    sub-int v12, v3, v10

    .line 292
    .end local v13    # "t":Lorg/w3c/dom/smil/Time;
    :cond_3
    invoke-virtual {v2, v12}, Lcom/android/mms/model/MediaModel;->setDuration(I)V

    .line 295
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getFill()S

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/mms/model/MediaModel;->setFill(S)V

    .line 296
    return-object v2

    .line 206
    .end local v2    # "media":Lcom/android/mms/model/MediaModel;
    .end local v10    # "begin":I
    .end local v12    # "duration":I
    .end local v15    # "tl":Lorg/w3c/dom/smil/TimeList;
    :cond_4
    const-string/jumbo v3, "somc_is_sticker"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Lorg/w3c/dom/smil/SMILMediaElement;->hasAttribute(Ljava/lang/String;)Z

    move-result v9

    .line 207
    .local v9, "isSticker":Z
    const-string/jumbo v3, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 208
    const-string/jumbo v3, "text/x-vCard"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "text/x-vCalendar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 209
    :cond_5
    new-instance v2, Lcom/sonyericsson/conversations/model/AttachmentModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v4, v1, v3}, Lcom/sonyericsson/conversations/model/AttachmentModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v2    # "media":Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 211
    .end local v2    # "media":Lcom/android/mms/model/MediaModel;
    :cond_6
    new-instance v2, Lcom/android/mms/model/TextModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v6

    .line 212
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v7

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v8, p5

    .line 211
    invoke-direct/range {v2 .. v8}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[BLcom/android/mms/model/RegionModel;)V

    .restart local v2    # "media":Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 214
    .end local v2    # "media":Lcom/android/mms/model/MediaModel;
    :cond_7
    const-string/jumbo v3, "img"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 215
    if-eqz p6, :cond_8

    .line 216
    new-instance v2, Lcom/android/mms/model/ImageModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v6

    .line 217
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v8

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v7, p5

    .line 216
    invoke-direct/range {v2 .. v9}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;[BZ)V

    .restart local v2    # "media":Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 219
    .end local v2    # "media":Lcom/android/mms/model/MediaModel;
    :cond_8
    new-instance v2, Lcom/android/mms/model/ImageModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v7, p5

    move v8, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;Z)V

    .restart local v2    # "media":Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 222
    .end local v2    # "media":Lcom/android/mms/model/MediaModel;
    :cond_9
    const-string/jumbo v3, "video"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 223
    new-instance v2, Lcom/android/mms/model/VideoModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .restart local v2    # "media":Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 224
    .end local v2    # "media":Lcom/android/mms/model/MediaModel;
    :cond_a
    const-string/jumbo v3, "audio"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 225
    new-instance v2, Lcom/android/mms/model/AudioModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v4, v1, v3}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v2    # "media":Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 226
    .end local v2    # "media":Lcom/android/mms/model/MediaModel;
    :cond_b
    const-string/jumbo v3, "ref"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 227
    invoke-static {v4}, Lcom/google/android/mms/ContentType;->isTextType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 228
    const-string/jumbo v3, "text/x-vCard"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string/jumbo v3, "text/x-vCalendar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 229
    :cond_c
    new-instance v2, Lcom/sonyericsson/conversations/model/AttachmentModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v4, v1, v3}, Lcom/sonyericsson/conversations/model/AttachmentModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v2    # "media":Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 231
    .end local v2    # "media":Lcom/android/mms/model/MediaModel;
    :cond_d
    new-instance v2, Lcom/android/mms/model/TextModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v6

    .line 232
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v7

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v8, p5

    .line 231
    invoke-direct/range {v2 .. v8}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[BLcom/android/mms/model/RegionModel;)V

    .restart local v2    # "media":Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 234
    .end local v2    # "media":Lcom/android/mms/model/MediaModel;
    :cond_e
    invoke-static {v4}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 235
    if-eqz p6, :cond_f

    .line 236
    new-instance v2, Lcom/android/mms/model/ImageModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v6

    .line 237
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v8

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v7, p5

    .line 236
    invoke-direct/range {v2 .. v9}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;[BZ)V

    .restart local v2    # "media":Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 239
    .end local v2    # "media":Lcom/android/mms/model/MediaModel;
    :cond_f
    new-instance v2, Lcom/android/mms/model/ImageModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v7, p5

    move v8, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;Z)V

    .restart local v2    # "media":Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 242
    .end local v2    # "media":Lcom/android/mms/model/MediaModel;
    :cond_10
    invoke-static {v4}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 243
    new-instance v2, Lcom/android/mms/model/VideoModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .restart local v2    # "media":Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 245
    .end local v2    # "media":Lcom/android/mms/model/MediaModel;
    :cond_11
    invoke-static {v4}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 246
    new-instance v2, Lcom/android/mms/model/AudioModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v4, v1, v3}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v2    # "media":Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 250
    .end local v2    # "media":Lcom/android/mms/model/MediaModel;
    :cond_12
    const-string/jumbo v3, "application/oct-stream"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 251
    invoke-static/range {p4 .. p4}, Lcom/android/mms/model/MediaModelFactory;->getContentTypeEx(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v14

    .line 252
    .local v14, "tempContentType":Ljava/lang/String;
    if-eqz v14, :cond_13

    .line 253
    move-object v4, v14

    .line 254
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 259
    .end local v14    # "tempContentType":Ljava/lang/String;
    :cond_13
    new-instance v2, Lcom/sonyericsson/conversations/model/AttachmentModel;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v6

    .line 260
    const/4 v7, 0x1

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    .line 259
    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/conversations/model/AttachmentModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;I)V

    .line 261
    .restart local v2    # "media":Lcom/android/mms/model/MediaModel;
    sget-boolean v3, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unrecognized content type: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", src: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 266
    .end local v2    # "media":Lcom/android/mms/model/MediaModel;
    :cond_14
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unsupported TAG: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static getRegionMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILRegionMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduPart;Z)Lcom/android/mms/model/MediaModel;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "src"    # Ljava/lang/String;
    .param p3, "srme"    # Lorg/w3c/dom/smil/SMILRegionMediaElement;
    .param p4, "layouts"    # Lcom/android/mms/model/LayoutModel;
    .param p5, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .param p6, "isBrief"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-interface {p3}, Lorg/w3c/dom/smil/SMILRegionMediaElement;->getRegion()Lorg/w3c/dom/smil/SMILRegionElement;

    move-result-object v8

    .line 163
    .local v8, "sre":Lorg/w3c/dom/smil/SMILRegionElement;
    if-eqz v8, :cond_0

    .line 164
    invoke-interface {v8}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/android/mms/model/LayoutModel;->findRegionById(Ljava/lang/String;)Lcom/android/mms/model/RegionModel;

    move-result-object v5

    .line 165
    .local v5, "region":Lcom/android/mms/model/RegionModel;
    if-eqz v5, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move v6, p6

    .line 166
    invoke-static/range {v0 .. v6}, Lcom/android/mms/model/MediaModelFactory;->getMmsMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;Z)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    return-object v0

    .line 171
    .end local v5    # "region":Lcom/android/mms/model/RegionModel;
    :cond_0
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    const-string/jumbo v7, "Text"

    .line 177
    .local v7, "rId":Ljava/lang/String;
    :goto_0
    invoke-virtual {p4, v7}, Lcom/android/mms/model/LayoutModel;->findRegionById(Ljava/lang/String;)Lcom/android/mms/model/RegionModel;

    move-result-object v5

    .line 178
    .restart local v5    # "region":Lcom/android/mms/model/RegionModel;
    if-eqz v5, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move v6, p6

    .line 179
    invoke-static/range {v0 .. v6}, Lcom/android/mms/model/MediaModelFactory;->getMmsMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;Z)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    return-object v0

    .line 174
    .end local v5    # "region":Lcom/android/mms/model/RegionModel;
    .end local v7    # "rId":Ljava/lang/String;
    :cond_1
    const-string/jumbo v7, "Image"

    .restart local v7    # "rId":Ljava/lang/String;
    goto :goto_0

    .line 183
    .end local v7    # "rId":Ljava/lang/String;
    .restart local v5    # "region":Lcom/android/mms/model/RegionModel;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Region not found or bad region ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static removeExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "sOriginal"    # Ljava/lang/String;

    .prologue
    .line 152
    const-string/jumbo v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 153
    .local v0, "extensionIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 154
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 156
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
