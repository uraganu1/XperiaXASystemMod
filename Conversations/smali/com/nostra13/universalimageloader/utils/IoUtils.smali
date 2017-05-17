.class public final Lcom/nostra13/universalimageloader/utils/IoUtils;
.super Ljava/lang/Object;
.source "IoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 94
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;)Z
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "listener"    # Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v0, 0x8000

    .line 50
    invoke-static {p0, p1, p2, v0}, Lcom/nostra13/universalimageloader/utils/IoUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;I)Z

    move-result v0

    return v0
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;I)Z
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "listener"    # Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;
    .param p3, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 67
    .local v2, "current":I
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 69
    .local v3, "total":I
    new-array v0, p3, [B

    .line 71
    .local v0, "bytes":[B
    invoke-static {p2, v5, v3}, Lcom/nostra13/universalimageloader/utils/IoUtils;->shouldStopLoading(Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;II)Z

    move-result v4

    if-nez v4, :cond_1

    .line 72
    :cond_0
    invoke-virtual {p0, v0, v5, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .local v1, "count":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    .line 77
    const/4 v4, 0x1

    return v4

    .line 71
    .end local v1    # "count":I
    :cond_1
    return v5

    .line 73
    .restart local v1    # "count":I
    :cond_2
    invoke-virtual {p1, v0, v5, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 74
    add-int/2addr v2, v1

    .line 75
    invoke-static {p2, v2, v3}, Lcom/nostra13/universalimageloader/utils/IoUtils;->shouldStopLoading(Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;II)Z

    move-result v4

    if-eqz v4, :cond_0

    return v5
.end method

.method private static shouldStopLoading(Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;II)Z
    .locals 4
    .param p0, "listener"    # Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;
    .param p1, "current"    # I
    .param p2, "total"    # I

    .prologue
    const/4 v3, 0x0

    .line 81
    if-nez p0, :cond_1

    .line 89
    :cond_0
    return v3

    .line 82
    :cond_1
    invoke-interface {p0, p1, p2}, Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;->onBytesCopied(II)Z

    move-result v0

    .line 83
    .local v0, "shouldContinue":Z
    if-nez v0, :cond_0

    .line 84
    mul-int/lit8 v1, p1, 0x64

    div-int/2addr v1, p2

    const/16 v2, 0x4b

    if-ge v1, v2, :cond_0

    .line 85
    const/4 v1, 0x1

    return v1
.end method
