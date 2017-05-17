.class public Lcom/sonymobile/jms/file/FileTooBigException;
.super Ljava/lang/Exception;
.source "FileTooBigException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    return-void
.end method

.method public static isFileExceedsMaxSizeException(Lcom/sonymobile/rcs/service/api/client/ClientApiException;)Z
    .locals 2
    .param p0, "e"    # Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    .prologue
    const-string/jumbo v0, "File exceeds max size"

    .line 17
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
