.class public Lcom/sonyericsson/conversations/util/MediaUtil;
.super Ljava/lang/Object;
.source "MediaUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/util/MediaUtil$ComprRatio;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final SIZE_UNITS:[Ljava/lang/String;

.field private static resolutionMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sBitmapMimeTypes:[Ljava/lang/String;

.field private static sPrevQuality:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 79
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/sonyericsson/conversations/util/MediaUtil;->DEBUG:Z

    .line 86
    new-array v0, v4, [Ljava/lang/String;

    .line 87
    const-string/jumbo v3, "image/x-ms-bmp"

    aput-object v3, v0, v2

    .line 88
    const-string/jumbo v3, "image/bmp"

    aput-object v3, v0, v1

    .line 86
    sput-object v0, Lcom/sonyericsson/conversations/util/MediaUtil;->sBitmapMimeTypes:[Ljava/lang/String;

    .line 108
    const/16 v0, 0x64

    sput v0, Lcom/sonyericsson/conversations/util/MediaUtil;->sPrevQuality:I

    .line 110
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "B"

    aput-object v3, v0, v2

    const-string/jumbo v2, "kB"

    aput-object v2, v0, v1

    const-string/jumbo v1, "MB"

    aput-object v1, v0, v4

    const-string/jumbo v1, "GB"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "TB"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/conversations/util/MediaUtil;->SIZE_UNITS:[Ljava/lang/String;

    .line 1812
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1811
    sput-object v0, Lcom/sonyericsson/conversations/util/MediaUtil;->resolutionMap:Ljava/util/LinkedHashMap;

    .line 1814
    sget-object v0, Lcom/sonyericsson/conversations/util/MediaUtil;->resolutionMap:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "VGA"

    const/16 v2, 0x280

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x1e0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1815
    sget-object v0, Lcom/sonyericsson/conversations/util/MediaUtil;->resolutionMap:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "SVGA"

    const/16 v2, 0x320

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x258

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1816
    sget-object v0, Lcom/sonyericsson/conversations/util/MediaUtil;->resolutionMap:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "XGA"

    const/16 v2, 0x400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x300

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1817
    sget-object v0, Lcom/sonyericsson/conversations/util/MediaUtil;->resolutionMap:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "SXGA-"

    const/16 v2, 0x500

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x3c0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1818
    sget-object v0, Lcom/sonyericsson/conversations/util/MediaUtil;->resolutionMap:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "SXGA+"

    const/16 v2, 0x578

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x41a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1819
    sget-object v0, Lcom/sonyericsson/conversations/util/MediaUtil;->resolutionMap:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "UXGA"

    const/16 v2, 0x640

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x4b0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1820
    sget-object v0, Lcom/sonyericsson/conversations/util/MediaUtil;->resolutionMap:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "QXGA"

    const/16 v2, 0x800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x600

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void

    :cond_0
    move v0, v1

    .line 79
    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearResizedImages(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1596
    .local p1, "deleteFileNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1597
    .local v3, "draftMediaFileNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v10

    invoke-interface {v10}, Lcom/sonyericsson/conversations/Apis;->getDraftsManager()Lcom/sonyericsson/conversations/draft/DraftsApi;

    move-result-object v10

    invoke-interface {v10}, Lcom/sonyericsson/conversations/draft/DraftsApi;->getAllDrafts()Ljava/util/List;

    move-result-object v4

    .line 1598
    .local v4, "drafts":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/draft/Draft;>;"
    if-eqz v4, :cond_1

    .line 1599
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1600
    .local v9, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "draft$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/draft/Draft;

    .line 1601
    .local v1, "draft":Lcom/sonyericsson/conversations/draft/Draft;
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/draft/Draft;->getUris()Ljava/util/List;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1603
    .end local v1    # "draft":Lcom/sonyericsson/conversations/draft/Draft;
    :cond_0
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "uri$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 1604
    .local v7, "uri":Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1608
    .end local v2    # "draft$iterator":Ljava/util/Iterator;
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v8    # "uri$iterator":Ljava/util/Iterator;
    .end local v9    # "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :cond_1
    invoke-static {p0}, Lcom/sonyericsson/conversations/util/MediaUtil;->getTempDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v10

    new-instance v11, Lcom/sonyericsson/conversations/util/MediaUtil$1;

    invoke-direct {v11, p1, v3}, Lcom/sonyericsson/conversations/util/MediaUtil$1;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v10, v11}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v6

    .line 1616
    .local v6, "files":[Ljava/io/File;
    if-eqz v6, :cond_2

    .line 1617
    const/4 v10, 0x0

    array-length v11, v6

    :goto_2
    if-ge v10, v11, :cond_2

    aget-object v5, v6, v10

    .line 1619
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    .line 1617
    .local v0, "deleted":Z
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1595
    .end local v0    # "deleted":Z
    .end local v5    # "f":Ljava/io/File;
    :cond_2
    return-void
.end method

.method private static closeStream(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 134
    if-eqz p0, :cond_0

    .line 136
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public static containsResizeableMedia(Landroid/content/Context;Ljava/util/List;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1650
    .local p1, "originalUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "uri$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1651
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/sonyericsson/conversations/util/MediaUtil;->isResizeableMedia(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1652
    const/4 v2, 0x1

    return v2

    .line 1655
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private static copyLocationInformationToResizedImage(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;)V
    .locals 18
    .param p0, "originalFileUri"    # Landroid/net/Uri;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 718
    const/4 v7, 0x0

    .line 719
    .local v7, "fos":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 720
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    const/4 v10, 0x0

    .line 722
    .local v10, "is":Ljava/io/InputStream;
    invoke-static/range {p2 .. p2}, Lcom/sonyericsson/conversations/util/MediaUtil;->getContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object v5

    .line 724
    .local v5, "cr":Landroid/content/ContentResolver;
    if-nez v5, :cond_0

    .line 725
    const-string/jumbo v15, "Cannot perform copyLocationInformationToResizedImage"

    invoke-static {v15}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 726
    return-void

    .line 732
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    .line 734
    .local v10, "is":Ljava/io/InputStream;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, ".tmp"

    invoke-static/range {v15 .. v16}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    .line 735
    .local v14, "tempOriginalFileCopy":Ljava/io/File;
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 736
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v8, "fos":Ljava/io/FileOutputStream;
    const/16 v15, 0x800

    :try_start_1
    new-array v4, v15, [B

    .line 737
    .local v4, "buffer":[B
    new-instance v3, Ljava/io/BufferedOutputStream;

    array-length v15, v4

    invoke-direct {v3, v8, v15}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 739
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v10, v4}, Ljava/io/InputStream;->read([B)I

    move-result v12

    .local v12, "readBytes":I
    const/4 v15, -0x1

    if-eq v12, v15, :cond_4

    .line 740
    const/4 v15, 0x0

    invoke-virtual {v3, v4, v15, v12}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 783
    .end local v12    # "readBytes":I
    :catch_0
    move-exception v9

    .local v9, "ie":Ljava/io/IOException;
    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    move-object v7, v8

    .line 787
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "buffer":[B
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v14    # "tempOriginalFileCopy":Ljava/io/File;
    :goto_1
    if-eqz v7, :cond_1

    .line 788
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 794
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    .line 795
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 801
    :cond_2
    :goto_3
    if-eqz v10, :cond_3

    .line 802
    :try_start_5
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 716
    .end local v9    # "ie":Ljava/io/IOException;
    :cond_3
    :goto_4
    return-void

    .line 742
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v12    # "readBytes":I
    .restart local v14    # "tempOriginalFileCopy":Ljava/io/File;
    :cond_4
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 743
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 746
    new-instance v11, Landroid/media/ExifInterface;

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v15}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 748
    .local v11, "originalFileExif":Landroid/media/ExifInterface;
    new-instance v13, Landroid/media/ExifInterface;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 749
    .local v13, "resizedFileExif":Landroid/media/ExifInterface;
    const-string/jumbo v15, "GPSAltitudeRef"

    invoke-virtual {v11, v15}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_5

    .line 750
    const-string/jumbo v15, "GPSAltitudeRef"

    .line 751
    const-string/jumbo v16, "GPSAltitudeRef"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 750
    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    :cond_5
    const-string/jumbo v15, "GPSLatitudeRef"

    invoke-virtual {v11, v15}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_6

    .line 754
    const-string/jumbo v15, "GPSLatitudeRef"

    .line 755
    const-string/jumbo v16, "GPSLatitudeRef"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 754
    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    :cond_6
    const-string/jumbo v15, "GPSLongitudeRef"

    invoke-virtual {v11, v15}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_7

    .line 758
    const-string/jumbo v15, "GPSLongitudeRef"

    .line 759
    const-string/jumbo v16, "GPSLongitudeRef"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 758
    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    :cond_7
    const-string/jumbo v15, "GPSLatitude"

    invoke-virtual {v11, v15}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_8

    .line 762
    const-string/jumbo v15, "GPSLatitude"

    .line 763
    const-string/jumbo v16, "GPSLatitude"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 762
    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    :cond_8
    const-string/jumbo v15, "GPSLongitude"

    invoke-virtual {v11, v15}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_9

    .line 766
    const-string/jumbo v15, "GPSLongitude"

    .line 767
    const-string/jumbo v16, "GPSLongitude"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 766
    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    :cond_9
    const-string/jumbo v15, "GPSAltitude"

    invoke-virtual {v11, v15}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_a

    .line 770
    const-string/jumbo v15, "GPSAltitude"

    .line 771
    const-string/jumbo v16, "GPSAltitude"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 770
    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    :cond_a
    const-string/jumbo v15, "GPSDateStamp"

    invoke-virtual {v11, v15}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_b

    .line 774
    const-string/jumbo v15, "GPSDateStamp"

    .line 775
    const-string/jumbo v16, "GPSDateStamp"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 774
    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    :cond_b
    invoke-virtual {v13}, Landroid/media/ExifInterface;->saveAttributes()V

    .line 780
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v15

    if-nez v15, :cond_f

    .line 781
    new-instance v15, Ljava/io/IOException;

    const-string/jumbo v16, "Could not delete temporary file"

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 785
    .end local v11    # "originalFileExif":Landroid/media/ExifInterface;
    .end local v12    # "readBytes":I
    .end local v13    # "resizedFileExif":Landroid/media/ExifInterface;
    :catchall_0
    move-exception v15

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    move-object v7, v8

    .line 787
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "buffer":[B
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v14    # "tempOriginalFileCopy":Ljava/io/File;
    :goto_5
    if-eqz v7, :cond_c

    .line 788
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 794
    :cond_c
    :goto_6
    if-eqz v2, :cond_d

    .line 795
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 801
    :cond_d
    :goto_7
    if-eqz v10, :cond_e

    .line 802
    :try_start_9
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 785
    :cond_e
    :goto_8
    throw v15

    .line 787
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "originalFileExif":Landroid/media/ExifInterface;
    .restart local v12    # "readBytes":I
    .restart local v13    # "resizedFileExif":Landroid/media/ExifInterface;
    .restart local v14    # "tempOriginalFileCopy":Ljava/io/File;
    :cond_f
    if-eqz v8, :cond_10

    .line 788
    :try_start_a
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 794
    :cond_10
    :goto_9
    if-eqz v3, :cond_11

    .line 795
    :try_start_b
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 801
    :cond_11
    :goto_a
    if-eqz v10, :cond_12

    .line 802
    :try_start_c
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    :cond_12
    :goto_b
    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .local v7, "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 790
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v6

    .line 791
    .local v6, "e":Ljava/lang/Exception;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Caught Exception: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_9

    .line 797
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v6

    .line 798
    .restart local v6    # "e":Ljava/lang/Exception;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Caught Exception: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_a

    .line 804
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v6

    .line 805
    .restart local v6    # "e":Ljava/lang/Exception;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Caught Exception: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_b

    .line 790
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "buffer":[B
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v11    # "originalFileExif":Landroid/media/ExifInterface;
    .end local v12    # "readBytes":I
    .end local v13    # "resizedFileExif":Landroid/media/ExifInterface;
    .end local v14    # "tempOriginalFileCopy":Ljava/io/File;
    .restart local v9    # "ie":Ljava/io/IOException;
    :catch_4
    move-exception v6

    .line 791
    .restart local v6    # "e":Ljava/lang/Exception;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Caught Exception: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 797
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v6

    .line 798
    .restart local v6    # "e":Ljava/lang/Exception;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Caught Exception: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 804
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v6

    .line 805
    .restart local v6    # "e":Ljava/lang/Exception;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Caught Exception: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 790
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v9    # "ie":Ljava/io/IOException;
    :catch_7
    move-exception v6

    .line 791
    .restart local v6    # "e":Ljava/lang/Exception;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Caught Exception: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 797
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v6

    .line 798
    .restart local v6    # "e":Ljava/lang/Exception;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Caught Exception: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 804
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v6

    .line 805
    .restart local v6    # "e":Ljava/lang/Exception;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Caught Exception: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 785
    .end local v6    # "e":Ljava/lang/Exception;
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    .local v7, "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v15

    goto/16 :goto_5

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v14    # "tempOriginalFileCopy":Ljava/io/File;
    :catchall_2
    move-exception v15

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .local v7, "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .line 783
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v14    # "tempOriginalFileCopy":Ljava/io/File;
    .local v7, "fos":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v9

    .restart local v9    # "ie":Ljava/io/IOException;
    goto/16 :goto_1

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "ie":Ljava/io/IOException;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v14    # "tempOriginalFileCopy":Ljava/io/File;
    :catch_b
    move-exception v9

    .restart local v9    # "ie":Ljava/io/IOException;
    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .local v7, "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_1
.end method

.method public static copyUriToCache(Landroid/content/Context;Landroid/net/Uri;IIZIZZ)Landroid/net/Uri;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "maxHeight"    # I
    .param p3, "maxWidth"    # I
    .param p4, "adaptToOrientation"    # Z
    .param p5, "maxFileSize"    # I
    .param p6, "isLocation"    # Z
    .param p7, "keepGeotag"    # Z

    .prologue
    .line 572
    :try_start_0
    invoke-static/range {p0 .. p7}, Lcom/sonyericsson/conversations/util/MediaUtil;->resizeImage(Landroid/content/Context;Landroid/net/Uri;IIZIZZ)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/sonyericsson/conversations/util/ResizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 574
    :catch_0
    move-exception v0

    .line 575
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static createStorageDir(Ljava/lang/String;)Z
    .locals 2
    .param p0, "storageDirStr"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 1435
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1436
    .local v1, "storageDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 1437
    .local v0, "dirExists":Z
    if-nez v0, :cond_0

    .line 1438
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v0

    .line 1440
    :cond_0
    return v0
.end method

.method public static createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 147
    .local v3, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v3, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 148
    const-wide/16 v4, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 156
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 161
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 157
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/RuntimeException;
    goto :goto_0

    .line 151
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v2

    .line 153
    .restart local v2    # "ex":Ljava/lang/RuntimeException;
    :try_start_2
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    .line 156
    :try_start_3
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    .line 154
    :goto_1
    throw v4

    .line 149
    :catch_2
    move-exception v1

    .line 156
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_4
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 157
    :catch_3
    move-exception v2

    .restart local v2    # "ex":Ljava/lang/RuntimeException;
    goto :goto_0

    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catch_4
    move-exception v2

    .restart local v2    # "ex":Ljava/lang/RuntimeException;
    goto :goto_1
.end method

.method public static cropCenterBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "filter"    # Z

    .prologue
    .line 221
    if-eqz p0, :cond_0

    if-gez p1, :cond_1

    .line 222
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can not call method with null or negative values."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_1
    if-ltz p2, :cond_0

    .line 225
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-le v0, p1, :cond_2

    .line 226
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    div-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    .line 227
    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v6, p3

    .line 226
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 229
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sub-int/2addr v0, p2

    div-int/lit8 v2, v0, 0x2

    const/4 v1, 0x0

    .line 230
    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v6, p3

    .line 229
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static deleteFileUri(Landroid/net/Uri;)V
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1932
    if-eqz p0, :cond_0

    .line 1933
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1934
    .local v0, "fdelete":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1935
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1936
    const-string/jumbo v1, "Could not delete file"

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 1931
    .end local v0    # "fdelete":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public static dp2px(Landroid/content/Context;F)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpVal"    # F

    .prologue
    .line 1889
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1891
    .local v0, "r":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1890
    const/4 v2, 0x1

    invoke-static {v2, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    return v1
.end method

.method private static estimateCompressedImageSize(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 908
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v12

    invoke-interface {v12}, Lcom/sonyericsson/conversations/Apis;->getImFileApi()Lcom/sonymobile/jms/file/ImFileApi;

    move-result-object v4

    .line 909
    .local v4, "imFileApi":Lcom/sonymobile/jms/file/ImFileApi;
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getUriFileSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v6

    .line 911
    .local v6, "orgFileSize":J
    :try_start_0
    invoke-interface {v4, p1}, Lcom/sonymobile/jms/file/ImFileApi;->getRecommendedScaleFactor(Landroid/net/Uri;)I

    move-result v8

    .line 912
    .local v8, "scaleFactor":I
    const/4 v12, 0x1

    if-ne v8, v12, :cond_0

    .line 914
    return-wide v6

    .line 916
    :cond_0
    invoke-interface {v4, p1, v8}, Lcom/sonymobile/jms/file/ImFileApi;->resizeImage(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v5

    .line 917
    .local v5, "resizedFileUri":Landroid/net/Uri;
    invoke-static {p0, v5}, Lcom/sonyericsson/conversations/util/MediaUtil;->getUriFileSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v10

    .line 920
    .local v10, "size":J
    new-instance v9, Ljava/io/File;

    new-instance v12, Ljava/net/URI;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v12}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 921
    .local v9, "tmpFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v12

    if-nez v12, :cond_1

    .line 922
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Failed to delete temporary file"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 923
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    .line 922
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError()V
    :try_end_0
    .catch Lcom/sonymobile/jms/file/UnableToDecodeImageException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sonymobile/jms/file/UnableToResizeImageException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sonymobile/jms/file/UnableToExtractFileInformationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 926
    :cond_1
    return-wide v10

    .line 936
    .end local v5    # "resizedFileUri":Landroid/net/Uri;
    .end local v8    # "scaleFactor":I
    .end local v9    # "tmpFile":Ljava/io/File;
    .end local v10    # "size":J
    :catch_0
    move-exception v3

    .line 937
    .local v3, "e":Ljava/net/URISyntaxException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Could not calculate compressed size for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 938
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    .line 937
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError()V

    .line 941
    .end local v3    # "e":Ljava/net/URISyntaxException;
    :goto_0
    return-wide v6

    .line 933
    :catch_1
    move-exception v1

    .line 934
    .local v1, "e":Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Could not calculate compressed size for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 935
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    .line 934
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError()V

    goto :goto_0

    .line 930
    .end local v1    # "e":Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;
    :catch_2
    move-exception v2

    .line 931
    .local v2, "e":Lcom/sonymobile/jms/file/UnableToResizeImageException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Could not calculate compressed size for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 932
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    .line 931
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError()V

    goto :goto_0

    .line 927
    .end local v2    # "e":Lcom/sonymobile/jms/file/UnableToResizeImageException;
    :catch_3
    move-exception v0

    .line 928
    .local v0, "e":Lcom/sonymobile/jms/file/UnableToDecodeImageException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Could not calculate compressed size for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 929
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    .line 928
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError()V

    goto :goto_0
.end method

.method private static estimateCompressedVideoSize(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 890
    :try_start_0
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->isVideoResizeNeeded(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 892
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getUriFileSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v4

    return-wide v4

    .line 895
    :cond_0
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getVideoDuration(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    .line 898
    .local v0, "duration":J
    const-wide/32 v4, 0x144f80

    mul-long/2addr v4, v0

    .line 899
    const-wide/16 v6, 0x1f40

    .line 898
    div-long/2addr v4, v6
    :try_end_0
    .catch Lcom/sonyericsson/conversations/ui/ParseDataException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v4

    .line 900
    .end local v0    # "duration":J
    :catch_0
    move-exception v2

    .line 901
    .local v2, "e":Lcom/sonyericsson/conversations/ui/ParseDataException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not estimate compressed size for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 902
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 901
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError()V

    .line 903
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getUriFileSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v4

    return-wide v4
.end method

.method public static getAudioUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 297
    const-string/jumbo v0, ""

    invoke-static {v0}, Lcom/sonyericsson/conversations/util/MediaUtil;->getAudioUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getAudioUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 306
    sget-object v3, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {v3}, Lcom/sonyericsson/conversations/util/MediaUtil;->getStorageDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "audioDirStr":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".amr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, "audioNameStr":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .local v1, "audioFile":Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 312
    .end local v1    # "audioFile":Ljava/io/File;
    .end local v2    # "audioNameStr":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".amr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "audioNameStr":Ljava/lang/String;
    goto :goto_0
.end method

.method private static getCompressFormat(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1131
    if-eqz p2, :cond_1

    .line 1132
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1133
    .local v0, "mimetype":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "image/png"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1134
    const-string/jumbo v1, "image/x-somc-sticker-large"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 1133
    if-eqz v1, :cond_1

    .line 1135
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    return-object v1

    .line 1138
    .end local v0    # "mimetype":Ljava/lang/String;
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object v1
.end method

.method private static getContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 1830
    if-nez p0, :cond_0

    .line 1831
    return-object v0

    .line 1833
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultCompressionEstimate(Landroid/content/Context;Ljava/util/List;)J
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 945
    .local p1, "originalUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    const-wide/16 v2, 0x0

    .line 946
    .local v2, "nBytes":J
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "uri$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 947
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {p0, v1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 948
    .local v0, "mimeType":Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/conversations/util/MimeTypeUtil;->isVideo(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 949
    invoke-static {p0, v1}, Lcom/sonyericsson/conversations/util/MediaUtil;->estimateCompressedVideoSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v6

    add-long/2addr v2, v6

    goto :goto_0

    .line 950
    :cond_0
    invoke-static {v0}, Lcom/sonymobile/conversations/util/MimeTypeUtil;->isImage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v0}, Lcom/sonymobile/conversations/util/MimeTypeUtil;->isGifImage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 953
    :cond_1
    invoke-static {p0, v1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getUriFileSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v6

    add-long/2addr v2, v6

    goto :goto_0

    .line 951
    :cond_2
    invoke-static {p0, v1}, Lcom/sonyericsson/conversations/util/MediaUtil;->estimateCompressedImageSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 950
    goto :goto_0

    .line 956
    .end local v0    # "mimeType":Ljava/lang/String;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_3
    return-wide v2
.end method

.method public static getDisplaySize(Landroid/view/Display;)Landroid/graphics/Point;
    .locals 4
    .param p0, "display"    # Landroid/view/Display;

    .prologue
    .line 242
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 243
    .local v0, "displaySize":Landroid/graphics/Point;
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 246
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 255
    :pswitch_0
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 256
    .local v2, "width":I
    iget v1, v0, Landroid/graphics/Point;->y:I

    .line 259
    .local v1, "height":I
    :goto_0
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v3

    .line 249
    .end local v1    # "height":I
    .end local v2    # "width":I
    :pswitch_1
    iget v2, v0, Landroid/graphics/Point;->y:I

    .line 250
    .restart local v2    # "width":I
    iget v1, v0, Landroid/graphics/Point;->x:I

    .restart local v1    # "height":I
    goto :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getDisplayStationaryBitmap(Landroid/view/View;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 23
    .param p0, "view"    # Landroid/view/View;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "filter"    # Z

    .prologue
    .line 333
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 334
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Can not call method with null values."

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 336
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 337
    .local v9, "bitmapWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 338
    .local v8, "bitmapHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v19

    .line 339
    .local v19, "viewWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v18

    .line 340
    .local v18, "viewHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 341
    .local v11, "context":Landroid/content/Context;
    if-nez v11, :cond_3

    .line 342
    sget-boolean v1, Lcom/sonyericsson/conversations/util/MediaUtil;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 343
    const-string/jumbo v1, "context is null, cannot get window service"

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 345
    :cond_2
    const/4 v1, 0x0

    return-object v1

    .line 348
    :cond_3
    const-string/jumbo v1, "window"

    invoke-virtual {v11, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/WindowManager;

    .line 349
    .local v20, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    .line 350
    .local v12, "display":Landroid/view/Display;
    invoke-virtual {v12}, Landroid/view/Display;->getRotation()I

    move-result v14

    .line 351
    .local v14, "orientation":I
    invoke-static {v12}, Lcom/sonyericsson/conversations/util/MediaUtil;->getDisplaySize(Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v13

    .line 352
    .local v13, "displaySize":Landroid/graphics/Point;
    iget v1, v13, Landroid/graphics/Point;->x:I

    if-lt v9, v1, :cond_4

    iget v1, v13, Landroid/graphics/Point;->y:I

    if-ge v8, v1, :cond_5

    .line 353
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bitmap ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 354
    const-string/jumbo v5, ") is smaller than display ("

    .line 353
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 354
    iget v5, v13, Landroid/graphics/Point;->x:I

    .line 353
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 354
    const-string/jumbo v5, "x"

    .line 353
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 354
    iget v5, v13, Landroid/graphics/Point;->y:I

    .line 353
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 354
    const-string/jumbo v5, ")."

    .line 353
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 356
    :cond_5
    const/4 v1, 0x2

    new-array v15, v1, [I

    .line 357
    .local v15, "position":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 358
    const/4 v1, 0x0

    aget v21, v15, v1

    .line 359
    .local v21, "x":I
    const/4 v1, 0x1

    aget v22, v15, v1

    .line 367
    .local v22, "y":I
    packed-switch v14, :pswitch_data_0

    .line 390
    const/16 v17, 0x0

    .line 391
    .local v17, "rotation":I
    move/from16 v2, v21

    .line 392
    .local v2, "left":I
    sub-int v1, v9, v19

    sub-int v16, v1, v21

    .line 393
    .local v16, "right":I
    move/from16 v3, v22

    .line 394
    .local v3, "top":I
    sub-int v1, v8, v18

    sub-int v10, v1, v22

    .line 398
    .local v10, "bottom":I
    :goto_0
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 399
    .local v6, "m":Landroid/graphics/Matrix;
    move/from16 v0, v17

    int-to-float v1, v0

    invoke-virtual {v6, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 400
    add-int v1, v2, v16

    sub-int v4, v9, v1

    .line 401
    add-int v1, v3, v10

    sub-int v5, v8, v1

    move-object/from16 v1, p1

    move/from16 v7, p2

    .line 400
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 369
    .end local v2    # "left":I
    .end local v3    # "top":I
    .end local v6    # "m":Landroid/graphics/Matrix;
    .end local v10    # "bottom":I
    .end local v16    # "right":I
    .end local v17    # "rotation":I
    :pswitch_0
    const/16 v17, 0x10e

    .line 370
    .restart local v17    # "rotation":I
    move/from16 v16, v22

    .line 371
    .restart local v16    # "right":I
    sub-int v1, v9, v18

    sub-int v2, v1, v22

    .line 372
    .restart local v2    # "left":I
    move/from16 v3, v21

    .line 373
    .restart local v3    # "top":I
    sub-int v1, v8, v19

    sub-int v10, v1, v21

    .line 374
    .restart local v10    # "bottom":I
    goto :goto_0

    .line 376
    .end local v2    # "left":I
    .end local v3    # "top":I
    .end local v10    # "bottom":I
    .end local v16    # "right":I
    .end local v17    # "rotation":I
    :pswitch_1
    const/16 v17, 0xb4

    .line 377
    .restart local v17    # "rotation":I
    move/from16 v16, v21

    .line 378
    .restart local v16    # "right":I
    sub-int v1, v9, v19

    sub-int v2, v1, v21

    .line 379
    .restart local v2    # "left":I
    move/from16 v10, v22

    .line 380
    .restart local v10    # "bottom":I
    sub-int v1, v8, v18

    sub-int v3, v1, v22

    .line 381
    .restart local v3    # "top":I
    goto :goto_0

    .line 383
    .end local v2    # "left":I
    .end local v3    # "top":I
    .end local v10    # "bottom":I
    .end local v16    # "right":I
    .end local v17    # "rotation":I
    :pswitch_2
    const/16 v17, 0x5a

    .line 384
    .restart local v17    # "rotation":I
    move/from16 v2, v22

    .line 385
    .restart local v2    # "left":I
    sub-int v1, v9, v18

    sub-int v16, v1, v22

    .line 386
    .restart local v16    # "right":I
    move/from16 v10, v21

    .line 387
    .restart local v10    # "bottom":I
    sub-int v1, v8, v19

    sub-int v3, v1, v21

    .line 388
    .restart local v3    # "top":I
    goto :goto_0

    .line 367
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getFileExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 1791
    const-string/jumbo v1, "image/x-somc-sticker-large"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1793
    const-string/jumbo v0, ".png"

    .line 1803
    .local v0, "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1791
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "image/jpg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1796
    const-string/jumbo v0, ".jpg"

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 1799
    .end local v0    # "result":Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1800
    .restart local v0    # "result":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, ""

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFileExtensionFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 1737
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 1738
    .local v9, "scheme":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1739
    .local v7, "extension":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1741
    .local v10, "uriStr":Ljava/lang/String;
    invoke-static {p0}, Lcom/sonyericsson/conversations/util/MediaUtil;->getContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 1742
    .local v0, "cr":Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    .line 1743
    return-object v2

    .line 1746
    :cond_0
    if-eqz v9, :cond_3

    .line 1747
    const-string/jumbo v1, "content"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 1748
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1749
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 1751
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1752
    const-string/jumbo v1, "_data"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 1755
    .end local v10    # "uriStr":Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1762
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_2
    :goto_0
    if-eqz v10, :cond_3

    .line 1763
    invoke-static {v10}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1764
    .local v7, "extension":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1767
    const/16 v1, 0x2e

    invoke-virtual {v10, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 1768
    .local v8, "index":I
    const/4 v1, -0x1

    if-eq v8, v1, :cond_3

    .line 1769
    add-int/lit8 v1, v8, 0x1

    invoke-virtual {v10, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1775
    .end local v7    # "extension":Ljava/lang/String;
    .end local v8    # "index":I
    :cond_3
    if-eqz v7, :cond_5

    .line 1776
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1754
    .restart local v6    # "c":Landroid/database/Cursor;
    .local v7, "extension":Ljava/lang/String;
    .restart local v10    # "uriStr":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 1755
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1754
    throw v1

    .line 1758
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_4
    const-string/jumbo v1, "file"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1759
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, "uriStr":Ljava/lang/String;
    goto :goto_0

    .line 1778
    .end local v7    # "extension":Ljava/lang/String;
    .end local v10    # "uriStr":Ljava/lang/String;
    :cond_5
    return-object v2
.end method

.method public static getFileNameFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 1504
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 1505
    .local v9, "scheme":Ljava/lang/String;
    const-string/jumbo v1, "file"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1506
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1509
    :cond_0
    const/4 v7, 0x0

    .line 1510
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-static {p0}, Lcom/sonyericsson/conversations/util/MediaUtil;->getContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 1512
    .local v0, "cr":Landroid/content/ContentResolver;
    if-nez v0, :cond_1

    .line 1513
    return-object v2

    .line 1516
    :cond_1
    :try_start_0
    const-string/jumbo v1, "content"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1517
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 1519
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1524
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1525
    const-string/jumbo v1, "name"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1530
    .local v8, "displayNameColumn":I
    :goto_0
    const/4 v1, -0x1

    if-ne v8, v1, :cond_5

    .line 1531
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown database projection for : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1538
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "displayNameColumn":I
    :catchall_0
    move-exception v1

    .line 1539
    if-eqz v7, :cond_2

    .line 1540
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1538
    :cond_2
    throw v1

    .line 1520
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_3
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Media file not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1527
    :cond_4
    const-string/jumbo v1, "_display_name"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .restart local v8    # "displayNameColumn":I
    goto :goto_0

    .line 1533
    :cond_5
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 1539
    if-eqz v7, :cond_6

    .line 1540
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1533
    :cond_6
    return-object v1

    .line 1536
    .end local v8    # "displayNameColumn":I
    .local v7, "cursor":Landroid/database/Cursor;
    :cond_7
    :try_start_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Uri contains unknown scheme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public static getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1547
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 1548
    .local v9, "scheme":Ljava/lang/String;
    const-string/jumbo v0, "file"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1549
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1552
    :cond_0
    const/4 v7, 0x0

    .line 1554
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v0, "content"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1556
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1557
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    .line 1556
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 1559
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1564
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1565
    const-string/jumbo v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1570
    .local v8, "filePathColumn":I
    :goto_0
    const/4 v0, -0x1

    if-ne v8, v0, :cond_4

    .line 1571
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown database projection for : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1579
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "filePathColumn":I
    :catchall_0
    move-exception v0

    .line 1580
    if-eqz v7, :cond_1

    .line 1581
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1579
    :cond_1
    throw v0

    .line 1560
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Media file not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1567
    :cond_3
    const-string/jumbo v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .restart local v8    # "filePathColumn":I
    goto :goto_0

    .line 1574
    :cond_4
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1580
    if-eqz v7, :cond_5

    .line 1581
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1574
    :cond_5
    return-object v0

    .line 1577
    .end local v8    # "filePathColumn":I
    .local v7, "cursor":Landroid/database/Cursor;
    :cond_6
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Uri contains unknown scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private static getFileUriFromContent(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 534
    invoke-static {p0}, Lcom/sonyericsson/conversations/util/MediaUtil;->getContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object v2

    .line 535
    .local v2, "cr":Landroid/content/ContentResolver;
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 536
    .local v7, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x0

    iput-boolean v9, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 537
    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 538
    .local v6, "is":Ljava/io/InputStream;
    const/4 v9, 0x0

    invoke-static {v6, v9, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 539
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 540
    invoke-static {p0, p1, v0}, Lcom/sonyericsson/conversations/util/MediaUtil;->getCompressFormat(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v1

    .line 541
    .local v1, "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sonyericsson/conversations/util/MediaUtil;->getFileExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 542
    .local v3, "fileExtension":Ljava/lang/String;
    const-string/jumbo v9, "mms_content"

    invoke-static {p0}, Lcom/sonyericsson/conversations/util/MediaUtil;->getTempDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v10

    invoke-static {v9, v3, v10}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v8

    .line 543
    .local v8, "tmpFileName":Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 544
    .local v4, "fileStream":Ljava/io/OutputStream;
    const/16 v9, 0x64

    invoke-virtual {v0, v1, v9, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 545
    move-object v5, p1

    .line 549
    .local v5, "fileUri":Landroid/net/Uri;
    :goto_0
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 550
    return-object v5

    .line 547
    .end local v5    # "fileUri":Landroid/net/Uri;
    :cond_0
    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .restart local v5    # "fileUri":Landroid/net/Uri;
    goto :goto_0
.end method

.method public static getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v10, 0x0

    .line 1666
    const/4 v8, 0x0

    .line 1667
    .local v8, "mimeType":Ljava/lang/String;
    if-eqz p1, :cond_4

    .line 1668
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 1669
    .local v9, "scheme":Ljava/lang/String;
    const-string/jumbo v1, "content"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1670
    invoke-static {p0}, Lcom/sonyericsson/conversations/util/MediaUtil;->getContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 1671
    .local v0, "cr":Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    .line 1672
    return-object v10

    .line 1674
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 1675
    .local v8, "mimeType":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 1676
    return-object v8

    .line 1678
    :cond_1
    const/4 v6, 0x0

    .line 1680
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v1, "media"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1681
    return-object v10

    .line 1683
    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1684
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 1685
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1687
    const-string/jumbo v1, "mime_type"

    .line 1686
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    goto :goto_0

    .line 1694
    :cond_3
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1702
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v8    # "mimeType":Ljava/lang/String;
    .end local v9    # "scheme":Ljava/lang/String;
    :cond_4
    :goto_1
    return-object v8

    .line 1695
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local v8    # "mimeType":Ljava/lang/String;
    .restart local v9    # "scheme":Ljava/lang/String;
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1690
    .end local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 1691
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string/jumbo v1, "Cannot fetch mimeType"

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1694
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1692
    :cond_6
    :goto_2
    return-object v10

    .line 1695
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1693
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    .line 1694
    if-eqz v6, :cond_8

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1693
    :cond_8
    :goto_3
    throw v1

    .line 1695
    :cond_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 1698
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .local v8, "mimeType":Ljava/lang/String;
    :cond_a
    const-string/jumbo v1, "file"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1699
    invoke-static {p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeTypeFromFileUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .local v8, "mimeType":Ljava/lang/String;
    goto :goto_1
.end method

.method public static getMimeTypeFromFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 1723
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    .line 1724
    .local v2, "mimeTypeMap":Landroid/webkit/MimeTypeMap;
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1725
    .local v0, "extension":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1728
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1729
    .local v1, "index":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 1730
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1733
    .end local v1    # "index":I
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getMimeTypeFromFileUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1706
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    .line 1709
    .local v2, "mimeTypeMap":Landroid/webkit/MimeTypeMap;
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1710
    .local v3, "uriStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1711
    .local v0, "extension":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1714
    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1715
    .local v1, "index":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 1716
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1719
    .end local v1    # "index":I
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static getNextQuality(IDDILcom/sonyericsson/conversations/util/MediaUtil$ComprRatio;)I
    .locals 13
    .param p0, "maxFileSize"    # I
    .param p1, "sizeJpg"    # D
    .param p3, "sizeBmpFull"    # D
    .param p5, "quality"    # I
    .param p6, "cr"    # Lcom/sonyericsson/conversations/util/MediaUtil$ComprRatio;

    .prologue
    .line 1370
    if-eqz p5, :cond_0

    const-wide/16 v8, 0x0

    cmpg-double v8, p1, v8

    if-gtz v8, :cond_1

    .line 1371
    :cond_0
    const/4 v8, -0x1

    return v8

    .line 1370
    :cond_1
    if-lez p0, :cond_0

    .line 1373
    div-double v2, p3, p1

    .line 1374
    .local v2, "currentComprRatio":D
    int-to-double v8, p0

    div-double v6, p3, v8

    .line 1376
    .local v6, "wantedComprRatio":D
    const/16 v8, 0x64

    move/from16 v0, p5

    if-ge v0, v8, :cond_2

    .line 1377
    sget v8, Lcom/sonyericsson/conversations/util/MediaUtil;->sPrevQuality:I

    move/from16 v0, p5

    if-ne v0, v8, :cond_3

    .line 1381
    move-object/from16 v0, p6

    iput-wide v2, v0, Lcom/sonyericsson/conversations/util/MediaUtil$ComprRatio;->mPrevComprRatio:D

    .line 1392
    :cond_2
    :goto_0
    move-object/from16 v0, p6

    iget-wide v8, v0, Lcom/sonyericsson/conversations/util/MediaUtil$ComprRatio;->mDirCoeff:D

    const-wide v10, 0x3fa999999999999aL    # 0.05

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    move-object/from16 v0, p6

    iput-wide v8, v0, Lcom/sonyericsson/conversations/util/MediaUtil$ComprRatio;->mDirCoeff:D

    .line 1394
    sub-double v8, v6, v2

    move-object/from16 v0, p6

    iget-wide v10, v0, Lcom/sonyericsson/conversations/util/MediaUtil$ComprRatio;->mDirCoeff:D

    div-double v4, v8, v10

    .line 1396
    .local v4, "decrease":D
    move/from16 v0, p5

    int-to-double v8, v0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 1399
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 1401
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    sub-int p5, p5, v8

    .line 1403
    const/4 v8, 0x0

    move/from16 v0, p5

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result p5

    .line 1404
    return p5

    .line 1384
    .end local v4    # "decrease":D
    :cond_3
    move-object/from16 v0, p6

    iget-wide v8, v0, Lcom/sonyericsson/conversations/util/MediaUtil$ComprRatio;->mPrevComprRatio:D

    sub-double v8, v2, v8

    sget v10, Lcom/sonyericsson/conversations/util/MediaUtil;->sPrevQuality:I

    sub-int v10, v10, p5

    int-to-double v10, v10

    div-double/2addr v8, v10

    move-object/from16 v0, p6

    iput-wide v8, v0, Lcom/sonyericsson/conversations/util/MediaUtil$ComprRatio;->mDirCoeff:D

    .line 1386
    move-object/from16 v0, p6

    iput-wide v2, v0, Lcom/sonyericsson/conversations/util/MediaUtil$ComprRatio;->mPrevComprRatio:D

    .line 1387
    sput p5, Lcom/sonyericsson/conversations/util/MediaUtil;->sPrevQuality:I

    goto :goto_0
.end method

.method public static getPhotoUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 269
    const-string/jumbo v0, ""

    invoke-static {v0}, Lcom/sonyericsson/conversations/util/MediaUtil;->getPhotoUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getPhotoUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 279
    sget-object v3, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v3}, Lcom/sonyericsson/conversations/util/MediaUtil;->getStorageDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "photoDirStr":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 283
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, "photoNameStr":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .local v1, "photoFile":Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 285
    .end local v1    # "photoFile":Ljava/io/File;
    .end local v2    # "photoNameStr":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "photoNameStr":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getResolutionHeight(Ljava/lang/String;)I
    .locals 1
    .param p0, "resolution"    # Ljava/lang/String;

    .prologue
    .line 1872
    sget-object v0, Lcom/sonyericsson/conversations/util/MediaUtil;->resolutionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1873
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1875
    :cond_0
    sget-object v0, Lcom/sonyericsson/conversations/util/MediaUtil;->resolutionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getResolutionWidth(Ljava/lang/String;)I
    .locals 1
    .param p0, "resolution"    # Ljava/lang/String;

    .prologue
    .line 1881
    sget-object v0, Lcom/sonyericsson/conversations/util/MediaUtil;->resolutionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1882
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1884
    :cond_0
    sget-object v0, Lcom/sonyericsson/conversations/util/MediaUtil;->resolutionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getSmallerResolution(II)Ljava/lang/String;
    .locals 6
    .param p0, "height"    # I
    .param p1, "width"    # I

    .prologue
    .line 1850
    const/4 v3, 0x0

    .line 1852
    .local v3, "resolutionName":Ljava/lang/String;
    sget-object v5, Lcom/sonyericsson/conversations/util/MediaUtil;->resolutionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1856
    .end local v3    # "resolutionName":Ljava/lang/String;
    .local v1, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1858
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1859
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1860
    .local v4, "resolutionWidth":I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1862
    .local v2, "resolutionHeight":I
    if-ge v4, p1, :cond_0

    if-lt v2, p0, :cond_1

    .line 1868
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .end local v2    # "resolutionHeight":I
    .end local v4    # "resolutionWidth":I
    :cond_0
    return-object v3

    .line 1865
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .restart local v2    # "resolutionHeight":I
    .restart local v4    # "resolutionWidth":I
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "resolutionName":Ljava/lang/String;
    goto :goto_0
.end method

.method private static getSmallestVideoFrameSide(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/conversations/ui/ParseDataException;
        }
    .end annotation

    .prologue
    .line 1068
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1069
    .local v2, "metaRetriever":Landroid/media/MediaMetadataRetriever;
    invoke-virtual {v2, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1071
    const/16 v6, 0x13

    invoke-virtual {v2, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 1072
    .local v0, "h":Ljava/lang/String;
    const/16 v6, 0x12

    invoke-virtual {v2, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    .line 1075
    .local v4, "w":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1076
    .local v1, "height":I
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 1082
    .local v5, "width":I
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    return v6

    .line 1077
    .end local v1    # "height":I
    .end local v5    # "width":I
    :catch_0
    move-exception v3

    .line 1078
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    new-instance v6, Lcom/sonyericsson/conversations/ui/ParseDataException;

    const-string/jumbo v7, "Could not retrieve resolution values from the videos metadata"

    invoke-direct {v6, v7, v3}, Lcom/sonyericsson/conversations/ui/ParseDataException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
.end method

.method private static getStartQuality(IDDLcom/sonyericsson/conversations/util/MediaUtil$ComprRatio;)I
    .locals 17
    .param p0, "maxFileSize"    # I
    .param p1, "sizeJpg100Scaled"    # D
    .param p3, "sizeBmpFull"    # D
    .param p5, "cr"    # Lcom/sonyericsson/conversations/util/MediaUtil$ComprRatio;

    .prologue
    .line 1329
    const-wide/16 v10, 0x0

    cmpg-double v10, p1, v10

    if-lez v10, :cond_0

    if-gtz p0, :cond_1

    .line 1330
    :cond_0
    const/4 v10, -0x1

    return v10

    .line 1335
    :cond_1
    const-wide v10, 0x400a666666666666L    # 3.3

    mul-double v10, v10, p1

    div-double v2, p3, v10

    .line 1336
    .local v2, "ComprRatio100":D
    move/from16 v0, p0

    int-to-double v10, v0

    div-double v8, p3, v10

    .line 1339
    .local v8, "wantedComprRatio":D
    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide v12, -0x4089e1b089a02752L    # -0.0054

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    const-wide v14, 0x3fc597f62b6ae7d5L    # 0.1687

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    .line 1340
    const-wide v12, 0x3fed47ae147ae148L    # 0.915

    mul-double/2addr v12, v2

    .line 1339
    sub-double/2addr v10, v12

    .line 1340
    const-wide v12, 0x3ffd47ae147ae148L    # 1.83

    .line 1339
    add-double/2addr v10, v12

    move-object/from16 v0, p5

    iput-wide v10, v0, Lcom/sonyericsson/conversations/util/MediaUtil$ComprRatio;->mDirCoeff:D

    .line 1341
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide v12, 0x3f95cfaacd9e83e4L    # 0.0213

    mul-double/2addr v10, v12

    const-wide v12, 0x3ff3ae147ae147aeL    # 1.23

    mul-double/2addr v12, v2

    add-double/2addr v10, v12

    const-wide v12, 0x3fdb020c49ba5e35L    # 0.422

    sub-double v4, v10, v12

    .line 1344
    .local v4, "m":D
    move-object/from16 v0, p5

    iget-wide v10, v0, Lcom/sonyericsson/conversations/util/MediaUtil$ComprRatio;->mDirCoeff:D

    const-wide v12, 0x3fa999999999999aL    # 0.05

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    move-object/from16 v0, p5

    iput-wide v10, v0, Lcom/sonyericsson/conversations/util/MediaUtil$ComprRatio;->mDirCoeff:D

    .line 1345
    const-wide/16 v10, 0x0

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 1348
    sub-double v10, v4, v8

    move-object/from16 v0, p5

    iget-wide v12, v0, Lcom/sonyericsson/conversations/util/MediaUtil$ComprRatio;->mDirCoeff:D

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    add-double v6, v12, v10

    .line 1353
    .local v6, "quality":D
    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    .line 1354
    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 1355
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    sput v10, Lcom/sonyericsson/conversations/util/MediaUtil;->sPrevQuality:I

    .line 1356
    sget v10, Lcom/sonyericsson/conversations/util/MediaUtil;->sPrevQuality:I

    return v10
.end method

.method private static getStorageDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "dir"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 1425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/Messaging"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1426
    .local v0, "storageDirStr":Ljava/lang/String;
    invoke-static {v0}, Lcom/sonyericsson/conversations/util/MediaUtil;->createStorageDir(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1427
    const-string/jumbo v1, "Failed to create storage dir"

    .line 1428
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Failed to create storage directory"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1427
    invoke-static {v1, v2}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1430
    :cond_0
    return-object v0
.end method

.method public static getTempDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1414
    const-string/jumbo v0, "xms_temp_dir"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getUriFileSize(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const-wide/16 v8, -0x1

    .line 1451
    const-wide/16 v4, -0x1

    .line 1452
    .local v4, "size":J
    invoke-static {p0}, Lcom/sonyericsson/conversations/util/MediaUtil;->getContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 1454
    .local v0, "cr":Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    .line 1455
    return-wide v8

    .line 1460
    :cond_0
    :try_start_0
    const-string/jumbo v6, "r"

    invoke-virtual {v0, p1, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 1461
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    if-nez v2, :cond_1

    .line 1462
    return-wide v8

    .line 1464
    :cond_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v4

    .line 1466
    :try_start_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1473
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_0
    return-wide v4

    .line 1467
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v1

    .line 1468
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Caught IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1470
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v3

    .line 1471
    .local v3, "io":Ljava/io/FileNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Caught FileNotFoundException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getVideoDuration(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/conversations/ui/ParseDataException;
        }
    .end annotation

    .prologue
    .line 874
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 875
    .local v0, "metaRetriever":Landroid/media/MediaMetadataRetriever;
    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 878
    const/16 v3, 0x9

    .line 877
    invoke-virtual {v0, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 881
    .local v2, "strDuration":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    return-wide v4

    .line 882
    :catch_0
    move-exception v1

    .line 883
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    new-instance v3, Lcom/sonyericsson/conversations/ui/ParseDataException;

    const-string/jumbo v4, "Could not get duration from video metadata"

    invoke-direct {v3, v4, v1}, Lcom/sonyericsson/conversations/ui/ParseDataException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method private static handleResizeFailure(Landroid/content/Context;Lcom/sonyericsson/conversations/videotranscoder/VideoResizeProgressListener;Ljava/lang/Exception;Landroid/net/Uri;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/sonyericsson/conversations/videotranscoder/VideoResizeProgressListener;
    .param p2, "exception"    # Ljava/lang/Exception;
    .param p3, "originalUri"    # Landroid/net/Uri;

    .prologue
    .line 1039
    invoke-static {p0, p3}, Lcom/sonyericsson/conversations/util/MediaUtil;->getFileNameFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1040
    .local v0, "fileName":Ljava/lang/String;
    invoke-interface {p1, v0, p2}, Lcom/sonyericsson/conversations/videotranscoder/VideoResizeProgressListener;->onVideoResizeFailed(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1038
    return-void
.end method

.method public static hasLocationInformation(Landroid/net/Uri;Landroid/content/Context;)Z
    .locals 18
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 811
    const/4 v6, 0x0

    .line 812
    .local v6, "fos":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 813
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    const/4 v8, 0x0

    .line 814
    .local v8, "is":Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 819
    .local v13, "tempOriginalFileCopy":Ljava/io/File;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 827
    .local v8, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 828
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 827
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 828
    const-string/jumbo v15, "has"

    .line 827
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 828
    const-string/jumbo v15, ".tmp"

    .line 827
    invoke-static {v14, v15}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    .line 829
    .local v13, "tempOriginalFileCopy":Ljava/io/File;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 830
    .local v7, "fos":Ljava/io/FileOutputStream;
    const/16 v14, 0x800

    :try_start_2
    new-array v4, v14, [B

    .line 831
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v4, "buffer":[B
    new-instance v3, Ljava/io/BufferedOutputStream;

    array-length v14, v4

    invoke-direct {v3, v7, v14}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 833
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    :goto_0
    :try_start_3
    invoke-virtual {v8, v4}, Ljava/io/InputStream;->read([B)I

    move-result v12

    .local v12, "readBytes":I
    const/4 v14, -0x1

    if-eq v12, v14, :cond_4

    .line 834
    const/4 v14, 0x0

    invoke-virtual {v3, v4, v14, v12}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 843
    .end local v12    # "readBytes":I
    :catchall_0
    move-exception v14

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    move-object v6, v7

    .line 844
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "buffer":[B
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v13    # "tempOriginalFileCopy":Ljava/io/File;
    :goto_1
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 845
    sget-boolean v15, Lcom/sonyericsson/conversations/util/MediaUtil;->DEBUG:Z

    if-eqz v15, :cond_0

    .line 846
    const-string/jumbo v15, "Cleaned up temporary file"

    invoke-static {v15}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 850
    :cond_0
    if-eqz v6, :cond_1

    .line 851
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 857
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    .line 858
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 864
    :cond_2
    :goto_3
    if-eqz v8, :cond_3

    .line 865
    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 843
    :cond_3
    :goto_4
    throw v14

    .line 820
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .local v8, "is":Ljava/io/InputStream;
    .local v13, "tempOriginalFileCopy":Ljava/io/File;
    :catch_0
    move-exception v9

    .line 824
    .local v9, "ne":Ljava/lang/NullPointerException;
    :try_start_7
    new-instance v14, Ljava/io/FileNotFoundException;

    invoke-direct {v14}, Ljava/io/FileNotFoundException;-><init>()V

    throw v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 843
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v9    # "ne":Ljava/lang/NullPointerException;
    .end local v13    # "tempOriginalFileCopy":Ljava/io/File;
    :catchall_1
    move-exception v14

    goto :goto_1

    .line 836
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .local v8, "is":Ljava/io/InputStream;
    .restart local v12    # "readBytes":I
    .local v13, "tempOriginalFileCopy":Ljava/io/File;
    :cond_4
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 837
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 839
    new-instance v10, Landroid/media/ExifInterface;

    .line 840
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    .line 839
    invoke-direct {v10, v14}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 841
    .local v10, "originalFileExif":Landroid/media/ExifInterface;
    const/4 v14, 0x2

    new-array v11, v14, [F

    .line 842
    .local v11, "pos":[F
    invoke-virtual {v10, v11}, Landroid/media/ExifInterface;->getLatLong([F)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v14

    .line 844
    if-eqz v13, :cond_5

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 845
    sget-boolean v15, Lcom/sonyericsson/conversations/util/MediaUtil;->DEBUG:Z

    if-eqz v15, :cond_5

    .line 846
    const-string/jumbo v15, "Cleaned up temporary file"

    invoke-static {v15}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 850
    :cond_5
    if-eqz v7, :cond_6

    .line 851
    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 857
    :cond_6
    :goto_5
    if-eqz v3, :cond_7

    .line 858
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 864
    :cond_7
    :goto_6
    if-eqz v8, :cond_8

    .line 865
    :try_start_b
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 842
    :cond_8
    :goto_7
    return v14

    .line 853
    :catch_1
    move-exception v5

    .line 854
    .local v5, "e":Ljava/lang/Exception;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Caught Exception: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_5

    .line 860
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    .line 861
    .restart local v5    # "e":Ljava/lang/Exception;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Caught Exception: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_6

    .line 867
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v5

    .line 868
    .restart local v5    # "e":Ljava/lang/Exception;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Caught Exception: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_7

    .line 853
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "buffer":[B
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v10    # "originalFileExif":Landroid/media/ExifInterface;
    .end local v11    # "pos":[F
    .end local v12    # "readBytes":I
    .end local v13    # "tempOriginalFileCopy":Ljava/io/File;
    :catch_4
    move-exception v5

    .line 854
    .restart local v5    # "e":Ljava/lang/Exception;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Caught Exception: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 860
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v5

    .line 861
    .restart local v5    # "e":Ljava/lang/Exception;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Caught Exception: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 867
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v5

    .line 868
    .restart local v5    # "e":Ljava/lang/Exception;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Caught Exception: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 843
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    .restart local v13    # "tempOriginalFileCopy":Ljava/io/File;
    :catchall_2
    move-exception v14

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_1
.end method

.method private static isBmpImageType(Ljava/lang/String;)Z
    .locals 4
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 1625
    const/4 v2, 0x0

    .line 1626
    .local v2, "isBmp":Z
    const/4 v0, 0x0

    .local v0, "i":I
    move v1, v0

    .line 1627
    .end local v0    # "i":I
    .end local v2    # "isBmp":Z
    .local v1, "i":I
    :goto_0
    if-nez v2, :cond_0

    sget-object v3, Lcom/sonyericsson/conversations/util/MediaUtil;->sBitmapMimeTypes:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 1628
    sget-object v3, Lcom/sonyericsson/conversations/util/MediaUtil;->sBitmapMimeTypes:[Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget-object v3, v3, v1

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .local v2, "isBmp":Z
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 1630
    .end local v2    # "isBmp":Z
    :cond_0
    return v2
.end method

.method public static isResizeableMedia(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1642
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1643
    .local v0, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/conversations/util/MimeTypeUtil;->isImage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/MimeTypeUtil;->isVideo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1644
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 1646
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static isResizeableMediaMms(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1634
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1635
    .local v0, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/conversations/util/MimeTypeUtil;->isImage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1636
    const/4 v1, 0x1

    return v1

    .line 1638
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isStorageLow(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 1807
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUriVideoContainerInvalid(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 1900
    invoke-static {}, Lcom/android/mms/MmsConfig;->getVideoContainerFormat()Ljava/lang/String;

    move-result-object v0

    .line 1902
    .local v0, "videoContainer":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1903
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1905
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getFileExtensionFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 1904
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1902
    :cond_0
    :goto_0
    return v1

    .line 1904
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static isVideoResizeNeeded(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/conversations/ui/ParseDataException;
        }
    .end annotation

    .prologue
    .line 1051
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getSmallestVideoFrameSide(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x1e0

    .line 1052
    const/16 v2, 0x280

    .line 1051
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resizeAllImages(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/file/UnableToResizeImageException;,
            Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;,
            Lcom/sonymobile/jms/file/UnableToDecodeImageException;
        }
    .end annotation

    .prologue
    .line 1114
    .local p1, "originalUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1116
    .local v3, "resizedUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "originalUri$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 1117
    .local v1, "originalUri":Landroid/net/Uri;
    invoke-static {p0, v1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1118
    .local v0, "mimeType":Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/conversations/util/MimeTypeUtil;->isImage(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1119
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1122
    :cond_0
    invoke-static {v1}, Lcom/sonyericsson/conversations/util/MediaUtil;->resizeImage(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1124
    .end local v0    # "mimeType":Ljava/lang/String;
    .end local v1    # "originalUri":Landroid/net/Uri;
    :cond_1
    return-object v3
.end method

.method public static resizeImage(Landroid/content/Context;Landroid/net/Uri;IIZIZZ)Landroid/net/Uri;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "maxHeight"    # I
    .param p3, "maxWidth"    # I
    .param p4, "adaptToOrientation"    # Z
    .param p5, "maxFileSize"    # I
    .param p6, "isLocation"    # Z
    .param p7, "keepGeotag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;,
            Lcom/sonyericsson/conversations/util/ResizeException;
        }
    .end annotation

    .prologue
    .line 609
    const/16 v19, 0x0

    .line 610
    .local v19, "resizedUri":Landroid/net/Uri;
    const/4 v14, 0x0

    .line 612
    .local v14, "is":Ljava/io/InputStream;
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/conversations/util/MediaUtil;->getContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object v11

    .line 613
    .local v11, "cr":Landroid/content/ContentResolver;
    if-nez v11, :cond_0

    .line 614
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Could not decode bitmap because cr is null"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 618
    :cond_0
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v14

    .line 619
    .local v14, "is":Ljava/io/InputStream;
    new-instance v18, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 620
    .local v18, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    move-object/from16 v0, v18

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 621
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-static {v14, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 623
    if-eqz p4, :cond_1

    .line 624
    move/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 625
    .local v15, "largeDimension":I
    move/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 627
    .local v20, "smallDimension":I
    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object/from16 v0, v18

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lt v2, v3, :cond_6

    .line 629
    move/from16 p2, v15

    .line 630
    move/from16 p3, v20

    .line 638
    .end local v15    # "largeDimension":I
    .end local v20    # "smallDimension":I
    :cond_1
    :goto_0
    invoke-static/range {p0 .. p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getUriFileSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v8

    .line 639
    .local v8, "srcFileSize":J
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-gez v2, :cond_2

    .line 640
    invoke-static/range {p0 .. p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getFileUriFromContent(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 641
    invoke-static/range {p0 .. p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getUriFileSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v8

    .line 644
    :cond_2
    move/from16 v0, p5

    int-to-long v2, v0

    cmp-long v2, v8, v2

    if-gtz v2, :cond_7

    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-lez v2, :cond_7

    const/4 v13, 0x1

    .line 645
    .local v13, "fileSizeOK":Z
    :goto_1
    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v0, p2

    if-gt v2, v0, :cond_9

    .line 646
    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v0, p3

    if-gt v2, v0, :cond_8

    const/4 v12, 0x1

    .line 648
    .local v12, "dimensionsOK":Z
    :goto_2
    if-eqz v13, :cond_3

    if-eqz v12, :cond_3

    if-nez p7, :cond_c

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/util/MediaUtil;->hasLocationInformation(Landroid/net/Uri;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 653
    :cond_3
    if-nez v12, :cond_a

    .line 655
    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 656
    move-object/from16 v0, v18

    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    .line 655
    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/conversations/util/MediaUtil;->shrinkToDimension(Landroid/content/Context;Landroid/net/Uri;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 668
    .local v4, "bmp":Landroid/graphics/Bitmap;
    :goto_3
    if-eqz v4, :cond_b

    .line 669
    const-string/jumbo v6, "mms_img"

    .line 670
    .local v6, "fileName":Ljava/lang/String;
    if-eqz p6, :cond_4

    .line 671
    const-string/jumbo v6, "location_"

    :cond_4
    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move/from16 v7, p5

    move/from16 v10, p7

    .line 673
    invoke-static/range {v3 .. v10}, Lcom/sonyericsson/conversations/util/MediaUtil;->writeBitmapToFile(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/String;IJZ)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v19

    .line 708
    .end local v4    # "bmp":Landroid/graphics/Bitmap;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v19    # "resizedUri":Landroid/net/Uri;
    :cond_5
    :goto_4
    invoke-static {v14}, Lcom/sonyericsson/conversations/util/MediaUtil;->closeStream(Ljava/io/Closeable;)V

    .line 711
    return-object v19

    .line 633
    .end local v8    # "srcFileSize":J
    .end local v12    # "dimensionsOK":Z
    .end local v13    # "fileSizeOK":Z
    .restart local v15    # "largeDimension":I
    .restart local v19    # "resizedUri":Landroid/net/Uri;
    .restart local v20    # "smallDimension":I
    :cond_6
    move/from16 p2, v20

    .line 634
    move/from16 p3, v15

    goto :goto_0

    .line 644
    .end local v15    # "largeDimension":I
    .end local v20    # "smallDimension":I
    .restart local v8    # "srcFileSize":J
    :cond_7
    const/4 v13, 0x0

    .restart local v13    # "fileSizeOK":Z
    goto :goto_1

    .line 646
    :cond_8
    const/4 v12, 0x0

    .restart local v12    # "dimensionsOK":Z
    goto :goto_2

    .line 645
    .end local v12    # "dimensionsOK":Z
    :cond_9
    const/4 v12, 0x0

    .restart local v12    # "dimensionsOK":Z
    goto :goto_2

    .line 660
    :cond_a
    :try_start_1
    invoke-static {v14}, Lcom/sonyericsson/conversations/util/MediaUtil;->closeStream(Ljava/io/Closeable;)V

    .line 661
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v14

    .line 662
    const/4 v2, 0x0

    move-object/from16 v0, v18

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 663
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-static {v14, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .restart local v4    # "bmp":Landroid/graphics/Bitmap;
    goto :goto_3

    .line 676
    :cond_b
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Could not decode bitmap"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 705
    .end local v4    # "bmp":Landroid/graphics/Bitmap;
    .end local v8    # "srcFileSize":J
    .end local v12    # "dimensionsOK":Z
    .end local v13    # "fileSizeOK":Z
    .end local v14    # "is":Ljava/io/InputStream;
    .end local v18    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v17

    .line 706
    .local v17, "oom":Ljava/lang/OutOfMemoryError;
    :try_start_2
    new-instance v2, Lcom/sonyericsson/conversations/util/ResizeException;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/sonyericsson/conversations/util/ResizeException;-><init>(I)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 707
    .end local v17    # "oom":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v2

    .line 708
    invoke-static {v14}, Lcom/sonyericsson/conversations/util/MediaUtil;->closeStream(Ljava/io/Closeable;)V

    .line 707
    throw v2

    .line 679
    .restart local v8    # "srcFileSize":J
    .restart local v12    # "dimensionsOK":Z
    .restart local v13    # "fileSizeOK":Z
    .restart local v14    # "is":Ljava/io/InputStream;
    .restart local v18    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_c
    :try_start_3
    invoke-static/range {p0 .. p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v16

    .line 680
    .local v16, "mimeType":Ljava/lang/String;
    if-eqz v16, :cond_e

    invoke-static/range {v16 .. v16}, Lcom/sonyericsson/conversations/util/MediaUtil;->isBmpImageType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 686
    invoke-static {v14}, Lcom/sonyericsson/conversations/util/MediaUtil;->closeStream(Ljava/io/Closeable;)V

    .line 687
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v14

    .line 688
    const/4 v2, 0x0

    move-object/from16 v0, v18

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 689
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-static {v14, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 690
    .restart local v4    # "bmp":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_5

    .line 691
    const-string/jumbo v6, "mms_img"

    .line 692
    .restart local v6    # "fileName":Ljava/lang/String;
    if-eqz p6, :cond_d

    .line 693
    const-string/jumbo v6, "location_"

    :cond_d
    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move/from16 v7, p5

    move/from16 v10, p7

    .line 695
    invoke-static/range {v3 .. v10}, Lcom/sonyericsson/conversations/util/MediaUtil;->writeBitmapToFile(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/String;IJZ)Landroid/net/Uri;

    move-result-object v19

    .local v19, "resizedUri":Landroid/net/Uri;
    goto :goto_4

    .line 699
    .end local v4    # "bmp":Landroid/graphics/Bitmap;
    .end local v6    # "fileName":Ljava/lang/String;
    .local v19, "resizedUri":Landroid/net/Uri;
    :cond_e
    if-eqz v16, :cond_f

    .line 700
    move-object/from16 v19, p1

    .local v19, "resizedUri":Landroid/net/Uri;
    goto :goto_4

    .line 702
    .local v19, "resizedUri":Landroid/net/Uri;
    :cond_f
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Could not decode bitmap"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public static resizeImage(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 7
    .param p0, "original"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/file/UnableToResizeImageException;,
            Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;,
            Lcom/sonymobile/jms/file/UnableToDecodeImageException;
        }
    .end annotation

    .prologue
    .line 1087
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/Apis;->getImFileApi()Lcom/sonymobile/jms/file/ImFileApi;

    move-result-object v1

    .line 1089
    .local v1, "imFileApi":Lcom/sonymobile/jms/file/ImFileApi;
    invoke-interface {v1, p0}, Lcom/sonymobile/jms/file/ImFileApi;->getRecommendedScaleFactor(Landroid/net/Uri;)I

    move-result v3

    .line 1090
    .local v3, "scaleFactor":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1091
    sget-boolean v4, Lcom/sonyericsson/conversations/util/MediaUtil;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1092
    const-string/jumbo v4, "Image was already within required dimension."

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 1095
    :cond_0
    return-object p0

    .line 1098
    :cond_1
    :try_start_0
    invoke-interface {v1, p0, v3}, Lcom/sonymobile/jms/file/ImFileApi;->resizeImage(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2

    .line 1099
    .local v2, "resizedImage":Landroid/net/Uri;
    sget-boolean v4, Lcom/sonyericsson/conversations/util/MediaUtil;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 1100
    const-string/jumbo v4, "ImageModel created with scale factor "

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sonymobile/conversations/util/LogUtil;->add(I)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    .line 1101
    const-string/jumbo v5, " for "

    .line 1100
    invoke-virtual {v4, v5}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1103
    :cond_2
    return-object v2

    .line 1104
    .end local v2    # "resizedImage":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 1105
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    new-instance v4, Lcom/sonymobile/jms/file/UnableToResizeImageException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Out of memory when resizing image with scale factor "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1106
    const-string/jumbo v6, "!"

    .line 1105
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sonymobile/jms/file/UnableToResizeImageException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static resizeImageWithMemoryChecking(Landroid/content/Context;Landroid/net/Uri;IIZIZZ)Landroid/net/Uri;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "maxHeight"    # I
    .param p3, "maxWidth"    # I
    .param p4, "adaptToOrientation"    # Z
    .param p5, "maxFileSize"    # I
    .param p6, "isLocation"    # Z
    .param p7, "keepGeotag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;,
            Lcom/sonyericsson/conversations/util/ResizeException;
        }
    .end annotation

    .prologue
    .line 512
    :try_start_0
    invoke-static/range {p0 .. p7}, Lcom/sonyericsson/conversations/util/MediaUtil;->resizeImage(Landroid/content/Context;Landroid/net/Uri;IIZIZZ)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/sonyericsson/conversations/util/ResizeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 515
    :catch_0
    move-exception v8

    .line 516
    .local v8, "re":Lcom/sonyericsson/conversations/util/ResizeException;
    invoke-virtual {v8}, Lcom/sonyericsson/conversations/util/ResizeException;->getResizeError()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 517
    invoke-static {p2, p3}, Lcom/sonyericsson/conversations/util/MediaUtil;->getSmallerResolution(II)Ljava/lang/String;

    move-result-object v9

    .line 518
    .local v9, "tmpResolution":Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Out of memory, try smaller resolution:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 520
    invoke-static {v9}, Lcom/sonyericsson/conversations/util/MediaUtil;->getResolutionHeight(Ljava/lang/String;)I

    move-result v2

    .line 521
    .local v2, "nextHeight":I
    invoke-static {v9}, Lcom/sonyericsson/conversations/util/MediaUtil;->getResolutionWidth(Ljava/lang/String;)I

    move-result v3

    .local v3, "nextWidth":I
    move-object v0, p0

    move-object v1, p1

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    .line 522
    invoke-static/range {v0 .. v7}, Lcom/sonyericsson/conversations/util/MediaUtil;->resizeImageWithMemoryChecking(Landroid/content/Context;Landroid/net/Uri;IIZIZZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 526
    .end local v2    # "nextHeight":I
    .end local v3    # "nextWidth":I
    .end local v9    # "tmpResolution":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "There is no retry policy for the image resizing exception."

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 527
    throw v8
.end method

.method public static resizeVideo(Landroid/content/Context;Ljava/util/List;Lcom/sonyericsson/conversations/videotranscoder/VideoResizeProgressListener;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/sonyericsson/conversations/videotranscoder/VideoResizeProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/sonyericsson/conversations/videotranscoder/VideoResizeProgressListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 973
    .local p1, "originalUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v9, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;

    invoke-direct {v9}, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;-><init>()V

    .line 974
    .local v9, "transcoder":Lcom/sonyericsson/conversations/videotranscoder/TransCoder;
    const/16 v10, 0x280

    const/16 v11, 0x1e0

    invoke-virtual {v9, v10, v11}, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->setSize(II)V

    .line 975
    const v10, 0x124f80

    invoke-virtual {v9, v10}, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->setVideoBitrate(I)V

    .line 976
    invoke-virtual {v9}, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->setKeepAspectRatio()V

    .line 978
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "originalUri$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 979
    .local v6, "originalUri":Landroid/net/Uri;
    invoke-static {p0, v6}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 980
    .local v5, "mimeType":Ljava/lang/String;
    invoke-static {v5}, Lcom/sonymobile/conversations/util/MimeTypeUtil;->isVideo(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 981
    invoke-interface {p2, v6}, Lcom/sonyericsson/conversations/videotranscoder/VideoResizeProgressListener;->onVideoResizeCompleted(Landroid/net/Uri;)V

    goto :goto_0

    .line 986
    :cond_0
    :try_start_0
    invoke-static {p0, v6}, Lcom/sonyericsson/conversations/util/MediaUtil;->isVideoResizeNeeded(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 987
    invoke-interface {p2, v6}, Lcom/sonyericsson/conversations/videotranscoder/VideoResizeProgressListener;->onVideoResizeCompleted(Landroid/net/Uri;)V
    :try_end_0
    .catch Lcom/sonyericsson/conversations/ui/ParseDataException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 990
    :catch_0
    move-exception v2

    .line 991
    .local v2, "e":Lcom/sonyericsson/conversations/ui/ParseDataException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Could not get resolution for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 992
    const-string/jumbo v11, ". Trying to resize."

    .line 991
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError()V

    .line 995
    .end local v2    # "e":Lcom/sonyericsson/conversations/ui/ParseDataException;
    :cond_1
    const/4 v8, 0x0

    .line 997
    .local v8, "resizedUri":Landroid/net/Uri;
    :try_start_1
    invoke-static {p0, v6}, Lcom/sonyericsson/conversations/util/MediaUtil;->getVideoDuration(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    .line 998
    .local v0, "duration":J
    invoke-interface {p2, v6, v0, v1}, Lcom/sonyericsson/conversations/videotranscoder/VideoResizeProgressListener;->onStartVideoResize(Landroid/net/Uri;J)V

    .line 999
    invoke-virtual {v9, p0, v6, p2}, Lcom/sonyericsson/conversations/videotranscoder/TransCoder;->transcode(Landroid/content/Context;Landroid/net/Uri;Lcom/sonyericsson/conversations/videotranscoder/VideoResizeProgressListener;)Landroid/net/Uri;
    :try_end_1
    .catch Lcom/sonyericsson/conversations/videotranscoder/TranscodingFailedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/sonyericsson/conversations/videotranscoder/CompressionFailedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sonyericsson/conversations/ui/ParseDataException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 1028
    .local v8, "resizedUri":Landroid/net/Uri;
    if-nez v8, :cond_5

    .line 1029
    new-instance v10, Lcom/sonyericsson/conversations/videotranscoder/TranscodingFailedException;

    const-string/jumbo v11, "Unknown"

    invoke-direct {v10, v11}, Lcom/sonyericsson/conversations/videotranscoder/TranscodingFailedException;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, v10, v6}, Lcom/sonyericsson/conversations/util/MediaUtil;->handleResizeFailure(Landroid/content/Context;Lcom/sonyericsson/conversations/videotranscoder/VideoResizeProgressListener;Ljava/lang/Exception;Landroid/net/Uri;)V

    .line 1031
    return-void

    .line 1016
    .end local v0    # "duration":J
    .local v8, "resizedUri":Landroid/net/Uri;
    :catch_1
    move-exception v2

    .line 1017
    .restart local v2    # "e":Lcom/sonyericsson/conversations/ui/ParseDataException;
    sget-boolean v10, Lcom/sonyericsson/conversations/util/MediaUtil;->DEBUG:Z

    if-eqz v10, :cond_2

    .line 1018
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/ParseDataException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1020
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed to get duration of video. Original file will be used: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1019
    invoke-static {v10}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 1024
    :cond_2
    invoke-static {p0, p2, v2, v6}, Lcom/sonyericsson/conversations/util/MediaUtil;->handleResizeFailure(Landroid/content/Context;Lcom/sonyericsson/conversations/videotranscoder/VideoResizeProgressListener;Ljava/lang/Exception;Landroid/net/Uri;)V

    .line 1025
    return-void

    .line 1008
    .end local v2    # "e":Lcom/sonyericsson/conversations/ui/ParseDataException;
    :catch_2
    move-exception v3

    .line 1009
    .local v3, "e":Lcom/sonyericsson/conversations/videotranscoder/CompressionFailedException;
    sget-boolean v10, Lcom/sonyericsson/conversations/util/MediaUtil;->DEBUG:Z

    if-eqz v10, :cond_3

    .line 1010
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/videotranscoder/CompressionFailedException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1011
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Problem while compressing the file. Original file will be used: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 1014
    :cond_3
    invoke-static {p0, p2, v3, v6}, Lcom/sonyericsson/conversations/util/MediaUtil;->handleResizeFailure(Landroid/content/Context;Lcom/sonyericsson/conversations/videotranscoder/VideoResizeProgressListener;Ljava/lang/Exception;Landroid/net/Uri;)V

    .line 1015
    return-void

    .line 1000
    .end local v3    # "e":Lcom/sonyericsson/conversations/videotranscoder/CompressionFailedException;
    :catch_3
    move-exception v4

    .line 1001
    .local v4, "e":Lcom/sonyericsson/conversations/videotranscoder/TranscodingFailedException;
    sget-boolean v10, Lcom/sonyericsson/conversations/util/MediaUtil;->DEBUG:Z

    if-eqz v10, :cond_4

    .line 1002
    invoke-virtual {v4}, Lcom/sonyericsson/conversations/videotranscoder/TranscodingFailedException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1003
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Problem while transcoding the file. Original file will be used: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 1006
    :cond_4
    invoke-static {p0, p2, v4, v6}, Lcom/sonyericsson/conversations/util/MediaUtil;->handleResizeFailure(Landroid/content/Context;Lcom/sonyericsson/conversations/videotranscoder/VideoResizeProgressListener;Ljava/lang/Exception;Landroid/net/Uri;)V

    .line 1007
    return-void

    .line 1033
    .end local v4    # "e":Lcom/sonyericsson/conversations/videotranscoder/TranscodingFailedException;
    .restart local v0    # "duration":J
    .local v8, "resizedUri":Landroid/net/Uri;
    :cond_5
    invoke-interface {p2, v8}, Lcom/sonyericsson/conversations/videotranscoder/VideoResizeProgressListener;->onVideoResizeCompleted(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 971
    .end local v0    # "duration":J
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v6    # "originalUri":Landroid/net/Uri;
    .end local v8    # "resizedUri":Landroid/net/Uri;
    :cond_6
    return-void
.end method

.method public static saveBitmapToFile(Landroid/graphics/Bitmap;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "uriIn"    # Landroid/net/Uri;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1971
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 1972
    :cond_0
    return-object v6

    .line 1974
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1975
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "outStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1976
    .end local v2    # "outStream":Ljava/io/OutputStream;
    .local v3, "outStream":Ljava/io/OutputStream;
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1977
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1982
    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v4, v6

    :goto_0
    if-eqz v4, :cond_3

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1979
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v2, v3

    .line 1980
    .end local v3    # "outStream":Ljava/io/OutputStream;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Problem with saving bitmap to file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 1981
    return-object v6

    .line 1982
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "outStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v4

    goto :goto_0

    .line 1978
    :cond_3
    return-object p1

    .line 1982
    .end local v3    # "outStream":Ljava/io/OutputStream;
    .restart local v2    # "outStream":Ljava/io/OutputStream;
    :catch_2
    move-exception v4

    .end local v2    # "outStream":Ljava/io/OutputStream;
    :goto_2
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    :goto_3
    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_4
    if-eqz v5, :cond_6

    :try_start_6
    throw v5

    .line 1979
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 1982
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v7

    if-nez v5, :cond_5

    move-object v5, v7

    goto :goto_4

    :cond_5
    if-eq v5, v7, :cond_4

    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_6
    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .restart local v2    # "outStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v5, v6

    goto :goto_3

    .end local v2    # "outStream":Ljava/io/OutputStream;
    .restart local v3    # "outStream":Ljava/io/OutputStream;
    :catchall_2
    move-exception v4

    move-object v5, v6

    move-object v2, v3

    .end local v3    # "outStream":Ljava/io/OutputStream;
    .local v2, "outStream":Ljava/io/OutputStream;
    goto :goto_3

    .end local v2    # "outStream":Ljava/io/OutputStream;
    .restart local v3    # "outStream":Ljava/io/OutputStream;
    :catch_5
    move-exception v4

    move-object v2, v3

    .end local v3    # "outStream":Ljava/io/OutputStream;
    .restart local v2    # "outStream":Ljava/io/OutputStream;
    goto :goto_2
.end method

.method public static scaleAndRotate(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "orientation"    # I
    .param p4, "filter"    # Z

    .prologue
    const/4 v1, 0x0

    .line 180
    if-eqz p0, :cond_0

    if-gez p1, :cond_1

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can not call method with null or negative values."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_1
    if-ltz p2, :cond_0

    .line 185
    packed-switch p3, :pswitch_data_0

    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Not a valid orientation!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :pswitch_0
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 192
    int-to-float v2, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 191
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 204
    .local v7, "scale_factor":F
    :goto_0
    invoke-static {p3}, Lcom/sonyericsson/conversations/util/ExifUtil;->getTransformationMatrix(I)Landroid/graphics/Matrix;

    move-result-object v5

    .line 205
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v7, v7}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 206
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p0

    move v2, v1

    move v6, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 198
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v7    # "scale_factor":F
    :pswitch_1
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 199
    int-to-float v2, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 198
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .restart local v7    # "scale_factor":F
    goto :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static shrinkToDimension(Landroid/content/Context;Landroid/net/Uri;IIII)Landroid/graphics/Bitmap;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "maxHeight"    # I
    .param p3, "maxWidth"    # I
    .param p4, "srcHeight"    # I
    .param p5, "srcWidth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonyericsson/conversations/util/ResizeException;
        }
    .end annotation

    .prologue
    .line 426
    const/4 v1, 0x0

    .line 428
    .local v1, "bmp":Landroid/graphics/Bitmap;
    invoke-static {p0}, Lcom/sonyericsson/conversations/util/MediaUtil;->getContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object v2

    .line 429
    .local v2, "cr":Landroid/content/ContentResolver;
    if-nez v2, :cond_0

    .line 430
    new-instance v12, Ljava/io/IOException;

    const-string/jumbo v13, "Could not decode bitmap because cr is null"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 433
    :cond_0
    if-eqz p1, :cond_a

    .line 436
    const/4 v4, 0x0

    .line 438
    .local v4, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 439
    .local v9, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v12, -0x1

    move/from16 v0, p4

    if-eq v0, v12, :cond_1

    const/4 v12, -0x1

    move/from16 v0, p5

    if-ne v0, v12, :cond_2

    .line 441
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 442
    .local v4, "is":Ljava/io/InputStream;
    const/4 v12, 0x1

    iput-boolean v12, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 443
    const/4 v12, 0x0

    invoke-static {v4, v12, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 444
    iget v0, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 p4, v0

    .line 445
    iget v0, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 p5, v0

    .line 446
    if-eqz v4, :cond_2

    .line 447
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 453
    .end local v4    # "is":Ljava/io/InputStream;
    :cond_2
    if-lez p2, :cond_7

    add-int v12, p4, p2

    add-int/lit8 v12, v12, -0x1

    div-int v3, v12, p2

    .line 454
    .local v3, "heightFactor":I
    :goto_0
    if-lez p3, :cond_8

    add-int v12, p5, p3

    add-int/lit8 v12, v12, -0x1

    div-int v11, v12, p3

    .line 456
    .local v11, "widthFactor":I
    :goto_1
    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v12

    iput v12, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 457
    const/4 v12, 0x0

    iput-boolean v12, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 459
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 460
    .restart local v4    # "is":Ljava/io/InputStream;
    const/4 v12, 0x0

    invoke-static {v4, v12, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 462
    .local v1, "bmp":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_5

    .line 468
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 469
    .local v5, "newHeight":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 470
    .local v6, "newWidth":I
    if-lez p2, :cond_9

    move/from16 v0, p2

    if-le v5, v0, :cond_9

    .line 472
    :goto_2
    const/high16 v10, 0x3f800000    # 1.0f

    .line 473
    .local v10, "requiredScaling":F
    if-lez p2, :cond_3

    move/from16 v0, p2

    if-le v5, v0, :cond_3

    .line 474
    move/from16 v0, p2

    int-to-float v12, v0

    int-to-float v13, v5

    div-float v10, v12, v13

    .line 476
    :cond_3
    if-lez p3, :cond_4

    move/from16 v0, p3

    if-le v6, v0, :cond_4

    .line 477
    move/from16 v0, p3

    int-to-float v12, v0

    int-to-float v13, v6

    div-float/2addr v12, v13

    invoke-static {v10, v12}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 480
    :cond_4
    int-to-float v12, v6

    mul-float/2addr v12, v10

    float-to-int v12, v12

    .line 481
    int-to-float v13, v5

    mul-float/2addr v13, v10

    float-to-int v13, v13

    const/4 v14, 0x0

    .line 479
    invoke-static {v1, v12, v13, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 482
    .local v7, "newbmp":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 483
    move-object v1, v7

    .line 487
    .end local v5    # "newHeight":I
    .end local v6    # "newWidth":I
    .end local v7    # "newbmp":Landroid/graphics/Bitmap;
    .end local v10    # "requiredScaling":F
    :cond_5
    sget-boolean v12, Lcom/sonyericsson/conversations/util/MediaUtil;->DEBUG:Z

    if-eqz v12, :cond_6

    .line 488
    if-eqz v1, :cond_6

    .line 489
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Image dimensions shrunk from ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 490
    const-string/jumbo v13, "] to ["

    .line 489
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 490
    const-string/jumbo v13, ","

    .line 489
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 490
    const-string/jumbo v13, "]"

    .line 489
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    :cond_6
    invoke-static {v4}, Lcom/sonyericsson/conversations/util/MediaUtil;->closeStream(Ljava/io/Closeable;)V

    .line 499
    if-nez v1, :cond_a

    .line 500
    new-instance v12, Ljava/io/IOException;

    const-string/jumbo v13, "Could not decode bitmap"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 453
    .end local v3    # "heightFactor":I
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v11    # "widthFactor":I
    .local v1, "bmp":Landroid/graphics/Bitmap;
    :cond_7
    const/4 v3, 0x1

    .restart local v3    # "heightFactor":I
    goto/16 :goto_0

    .line 454
    :cond_8
    const/4 v11, 0x1

    .restart local v11    # "widthFactor":I
    goto/16 :goto_1

    .line 470
    .local v1, "bmp":Landroid/graphics/Bitmap;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "newHeight":I
    .restart local v6    # "newWidth":I
    :cond_9
    if-lez p3, :cond_5

    .line 471
    move/from16 v0, p3

    if-le v6, v0, :cond_5

    goto/16 :goto_2

    .line 493
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    .end local v3    # "heightFactor":I
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "newHeight":I
    .end local v6    # "newWidth":I
    .end local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v11    # "widthFactor":I
    :catch_0
    move-exception v8

    .line 494
    .local v8, "oom":Ljava/lang/OutOfMemoryError;
    :try_start_1
    new-instance v12, Lcom/sonyericsson/conversations/util/ResizeException;

    const/4 v13, 0x3

    invoke-direct {v12, v13}, Lcom/sonyericsson/conversations/util/ResizeException;-><init>(I)V

    throw v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 495
    .end local v8    # "oom":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v12

    .line 496
    invoke-static {v4}, Lcom/sonyericsson/conversations/util/MediaUtil;->closeStream(Ljava/io/Closeable;)V

    .line 495
    throw v12

    .line 504
    :cond_a
    return-object v1
.end method

.method private static writeBitmapToFile(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/String;IJZ)Landroid/net/Uri;
    .locals 33
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "maxFileSize"    # I
    .param p5, "srcFileSize"    # J
    .param p7, "keepGeotag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonyericsson/conversations/util/ResizeException;
        }
    .end annotation

    .prologue
    .line 1159
    const/16 v26, 0x0

    .line 1160
    .local v26, "resizedUri":Landroid/net/Uri;
    const/16 v25, 0x64

    .line 1161
    .local v25, "quality":I
    const-wide/16 v30, 0x1

    .line 1162
    .local v30, "sizeJpg":J
    const-wide/16 v28, 0x1

    .line 1163
    .local v28, "sizeBmpFull":J
    move-object/from16 v4, p1

    .line 1164
    .local v4, "bmpOrig":Landroid/graphics/Bitmap;
    const/16 v21, 0x1

    .line 1166
    .local v21, "firstTime":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/util/MediaUtil;->getCompressFormat(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v17

    .line 1168
    .local v17, "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    if-eqz p1, :cond_0

    .line 1169
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v5

    int-to-long v10, v5

    mul-long v28, v6, v10

    .line 1172
    move/from16 v0, p4

    int-to-long v6, v0

    cmp-long v5, p5, v6

    if-lez v5, :cond_0

    .line 1173
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 1174
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    const/4 v7, 0x0

    .line 1173
    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1178
    :cond_0
    const/16 v27, 0x0

    .line 1179
    .local v27, "rotatedBmp":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_3

    .line 1180
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/util/ExifUtil;->getOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v24

    .line 1181
    .local v24, "orientation":I
    invoke-static/range {v24 .. v24}, Lcom/sonyericsson/conversations/util/ExifUtil;->getTransformationMatrix(I)Landroid/graphics/Matrix;

    move-result-object v9

    .line 1182
    .local v9, "m":Landroid/graphics/Matrix;
    invoke-virtual {v9}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1183
    if-eqz v4, :cond_1

    .line 1184
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1185
    const/4 v10, 0x0

    .line 1184
    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 1187
    .end local v27    # "rotatedBmp":Landroid/graphics/Bitmap;
    :cond_1
    if-eqz v27, :cond_3

    .line 1188
    move-object/from16 v0, p1

    if-eq v0, v4, :cond_2

    .line 1189
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1191
    :cond_2
    move-object/from16 v4, v27

    .line 1195
    .end local v9    # "m":Landroid/graphics/Matrix;
    .end local v24    # "orientation":I
    :cond_3
    sget-boolean v5, Lcom/sonyericsson/conversations/util/MediaUtil;->DEBUG:Z

    if-eqz v5, :cond_4

    .line 1196
    const-string/jumbo v5, "writeBitmapToFile, Starting jpeg compression"

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->i(Ljava/lang/String;)V

    .line 1197
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeBitmapToFile, Bmp file size (kB): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v6, 0x400

    div-long v6, v28, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->i(Ljava/lang/String;)V

    .line 1198
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeBitmapToFile, File size on disc (kB): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v6, 0x400

    div-long v6, p5, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->i(Ljava/lang/String;)V

    .line 1199
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeBitmapToFile, Max file size (kB): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    div-int/lit16 v6, v0, 0x400

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->i(Ljava/lang/String;)V

    .line 1202
    :cond_4
    new-instance v16, Lcom/sonyericsson/conversations/util/MediaUtil$ComprRatio;

    invoke-direct/range {v16 .. v16}, Lcom/sonyericsson/conversations/util/MediaUtil$ComprRatio;-><init>()V

    .line 1205
    .local v16, "cr":Lcom/sonyericsson/conversations/util/MediaUtil$ComprRatio;
    :goto_0
    if-nez p1, :cond_a

    .line 1283
    .end local v26    # "resizedUri":Landroid/net/Uri;
    :cond_5
    :goto_1
    if-eqz p1, :cond_6

    .line 1284
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1285
    :cond_6
    if-eqz v4, :cond_7

    .line 1286
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1288
    :cond_7
    sget-boolean v5, Lcom/sonyericsson/conversations/util/MediaUtil;->DEBUG:Z

    if-eqz v5, :cond_8

    .line 1289
    const-string/jumbo v5, "writeBitmapToFile, Jpeg compression ended"

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->i(Ljava/lang/String;)V

    .line 1291
    :cond_8
    if-eqz v26, :cond_1b

    .line 1292
    sget-boolean v5, Lcom/sonyericsson/conversations/util/MediaUtil;->DEBUG:Z

    if-eqz v5, :cond_9

    .line 1293
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeBitmapToFile, Image compressed (from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v6, 0x400

    div-long v6, p5, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1294
    const-string/jumbo v6, "kB to "

    .line 1293
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1294
    const-wide/16 v6, 0x400

    div-long v6, v30, v6

    .line 1293
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1294
    const-string/jumbo v6, "kB), to satisfy max size argument ("

    .line 1293
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1295
    move/from16 v0, p4

    div-int/lit16 v6, v0, 0x400

    .line 1293
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1295
    const-string/jumbo v6, "kB), quality level: "

    .line 1293
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1296
    :cond_9
    return-object v26

    .line 1207
    .restart local v26    # "resizedUri":Landroid/net/Uri;
    :cond_a
    const/16 v19, 0x0

    .line 1208
    .local v19, "file":Ljava/io/File;
    const/16 v22, 0x0

    .line 1210
    .local v22, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, v17

    if-ne v0, v5, :cond_e

    .line 1211
    const-string/jumbo v20, ".png"

    .line 1212
    .local v20, "fileExtension":Ljava/lang/String;
    :goto_2
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/conversations/util/MediaUtil;->getTempDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v19

    .line 1213
    .local v19, "file":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->deleteOnExit()V

    .line 1214
    new-instance v23, Ljava/io/FileOutputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1218
    .local v23, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v25

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .end local v22    # "fos":Ljava/io/FileOutputStream;
    move-result v5

    if-eqz v5, :cond_13

    .line 1219
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->length()J

    move-result-wide v30

    .line 1221
    sget-boolean v5, Lcom/sonyericsson/conversations/util/MediaUtil;->DEBUG:Z

    if-eqz v5, :cond_b

    .line 1222
    if-nez v21, :cond_b

    .line 1223
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeBitmapToFile, Compressed image size (kB): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1224
    const-wide/16 v6, 0x400

    .line 1223
    div-long v6, v30, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1224
    const-string/jumbo v6, " at quality: "

    .line 1223
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->i(Ljava/lang/String;)V

    .line 1225
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeBitmapToFile, Compression ratio: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1226
    move-wide/from16 v0, v28

    long-to-double v6, v0

    move-wide/from16 v0, v30

    long-to-double v10, v0

    div-double/2addr v6, v10

    .line 1225
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1226
    const-string/jumbo v6, " at quality: "

    .line 1225
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->i(Ljava/lang/String;)V

    .line 1233
    :cond_b
    move/from16 v0, p4

    int-to-long v6, v0

    cmp-long v5, v30, v6

    if-gtz v5, :cond_f

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, v17

    if-ne v0, v5, :cond_f

    .line 1236
    :cond_c
    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v26

    .line 1268
    .local v26, "resizedUri":Landroid/net/Uri;
    invoke-static/range {v23 .. v23}, Lcom/sonyericsson/conversations/util/MediaUtil;->closeStream(Ljava/io/Closeable;)V

    .line 1270
    if-eqz p2, :cond_d

    if-eqz p7, :cond_d

    if-eqz v26, :cond_d

    if-eqz v19, :cond_d

    .line 1271
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-static {v0, v5, v1}, Lcom/sonyericsson/conversations/util/MediaUtil;->copyLocationInformationToResizedImage(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;)V

    .line 1274
    :cond_d
    if-nez v26, :cond_5

    if-eqz v19, :cond_5

    .line 1278
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    move-result v18

    .local v18, "deleted":Z
    goto/16 :goto_1

    .line 1211
    .end local v18    # "deleted":Z
    .end local v20    # "fileExtension":Ljava/lang/String;
    .end local v23    # "fos":Ljava/io/FileOutputStream;
    .local v19, "file":Ljava/io/File;
    .restart local v22    # "fos":Ljava/io/FileOutputStream;
    .local v26, "resizedUri":Landroid/net/Uri;
    :cond_e
    :try_start_2
    const-string/jumbo v20, ".jpg"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .restart local v20    # "fileExtension":Ljava/lang/String;
    goto/16 :goto_2

    .line 1234
    .end local v22    # "fos":Ljava/io/FileOutputStream;
    .local v19, "file":Ljava/io/File;
    .restart local v23    # "fos":Ljava/io/FileOutputStream;
    :cond_f
    move/from16 v0, p4

    int-to-long v6, v0

    cmp-long v5, v30, v6

    if-gtz v5, :cond_10

    if-eqz v21, :cond_c

    .line 1238
    :cond_10
    :try_start_3
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, v17

    if-ne v0, v5, :cond_15

    .line 1239
    move/from16 v0, p4

    int-to-long v6, v0

    cmp-long v5, v30, v6

    if-lez v5, :cond_15

    .line 1241
    new-instance v5, Lcom/sonyericsson/conversations/util/ResizeException;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Lcom/sonyericsson/conversations/util/ResizeException;-><init>(I)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1267
    :catchall_0
    move-exception v5

    move-object/from16 v22, v23

    .line 1268
    .end local v19    # "file":Ljava/io/File;
    .end local v20    # "fileExtension":Ljava/lang/String;
    .end local v23    # "fos":Ljava/io/FileOutputStream;
    :goto_3
    invoke-static/range {v22 .. v22}, Lcom/sonyericsson/conversations/util/MediaUtil;->closeStream(Ljava/io/Closeable;)V

    .line 1270
    if-eqz p2, :cond_11

    if-eqz p7, :cond_11

    .line 1274
    :cond_11
    if-eqz v19, :cond_12

    .line 1278
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    move-result v18

    .line 1267
    :cond_12
    throw v5

    .line 1268
    .restart local v19    # "file":Ljava/io/File;
    .restart local v20    # "fileExtension":Ljava/lang/String;
    .restart local v23    # "fos":Ljava/io/FileOutputStream;
    :cond_13
    invoke-static/range {v23 .. v23}, Lcom/sonyericsson/conversations/util/MediaUtil;->closeStream(Ljava/io/Closeable;)V

    .line 1270
    if-eqz p2, :cond_14

    if-eqz p7, :cond_14

    .line 1274
    :cond_14
    if-eqz v19, :cond_5

    .line 1278
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    move-result v18

    .restart local v18    # "deleted":Z
    goto/16 :goto_1

    .line 1249
    .end local v18    # "deleted":Z
    :cond_15
    if-eqz v21, :cond_1a

    .line 1252
    move-wide/from16 v0, v30

    long-to-double v12, v0

    move-wide/from16 v0, v28

    long-to-double v14, v0

    move/from16 v11, p4

    :try_start_4
    invoke-static/range {v11 .. v16}, Lcom/sonyericsson/conversations/util/MediaUtil;->getStartQuality(IDDLcom/sonyericsson/conversations/util/MediaUtil$ComprRatio;)I

    move-result v25

    .line 1253
    move-object/from16 v0, p1

    if-eq v0, v4, :cond_16

    .line 1254
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1255
    move-object/from16 p1, v4

    .line 1257
    :cond_16
    const/16 v21, 0x0

    .line 1258
    sget-boolean v5, Lcom/sonyericsson/conversations/util/MediaUtil;->DEBUG:Z

    if-eqz v5, :cond_17

    .line 1259
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeBitmapToFile, Start value for compression quality: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->i(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1268
    :cond_17
    :goto_4
    invoke-static/range {v23 .. v23}, Lcom/sonyericsson/conversations/util/MediaUtil;->closeStream(Ljava/io/Closeable;)V

    .line 1270
    if-eqz p2, :cond_18

    if-eqz p7, :cond_18

    .line 1274
    :cond_18
    if-eqz v19, :cond_19

    .line 1278
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    move-result v18

    .line 1281
    :cond_19
    if-ltz v25, :cond_5

    goto/16 :goto_0

    .line 1264
    :cond_1a
    move-wide/from16 v0, v30

    long-to-double v11, v0

    move-wide/from16 v0, v28

    long-to-double v13, v0

    move/from16 v10, p4

    move/from16 v15, v25

    :try_start_5
    invoke-static/range {v10 .. v16}, Lcom/sonyericsson/conversations/util/MediaUtil;->getNextQuality(IDDILcom/sonyericsson/conversations/util/MediaUtil$ComprRatio;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v25

    goto :goto_4

    .line 1298
    .end local v19    # "file":Ljava/io/File;
    .end local v20    # "fileExtension":Ljava/lang/String;
    .end local v23    # "fos":Ljava/io/FileOutputStream;
    .end local v26    # "resizedUri":Landroid/net/Uri;
    :cond_1b
    if-gez v25, :cond_1d

    .line 1299
    sget-boolean v5, Lcom/sonyericsson/conversations/util/MediaUtil;->DEBUG:Z

    if-eqz v5, :cond_1c

    .line 1300
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeBitmapToFile, Resize criteria not met, Q="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1301
    :cond_1c
    new-instance v5, Lcom/sonyericsson/conversations/util/ResizeException;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Lcom/sonyericsson/conversations/util/ResizeException;-><init>(I)V

    throw v5

    .line 1303
    :cond_1d
    sget-boolean v5, Lcom/sonyericsson/conversations/util/MediaUtil;->DEBUG:Z

    if-eqz v5, :cond_1e

    .line 1304
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeBitmapToFile, Unknown resize error, Q="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1305
    :cond_1e
    new-instance v5, Lcom/sonyericsson/conversations/util/ResizeException;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/sonyericsson/conversations/util/ResizeException;-><init>(I)V

    throw v5

    .line 1267
    .restart local v22    # "fos":Ljava/io/FileOutputStream;
    .restart local v26    # "resizedUri":Landroid/net/Uri;
    :catchall_1
    move-exception v5

    goto/16 :goto_3
.end method
