.class public Lcom/sonymobile/rcs/core/content/FileContent;
.super Lcom/sonymobile/rcs/core/content/MmContent;
.source "FileContent.java"


# direct methods
.method public constructor <init>(Landroid/net/Uri;JLjava/lang/String;)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "size"    # J
    .param p4, "filename"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v3, "application/octet-stream"

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-object v6, p4

    .line 66
    invoke-direct/range {v1 .. v6}, Lcom/sonymobile/rcs/core/content/MmContent;-><init>(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "size"    # J
    .param p5, "filename"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct/range {p0 .. p5}, Lcom/sonymobile/rcs/core/content/MmContent;-><init>(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "size"    # J

    .prologue
    const-string/jumbo v0, "application/octet-stream"

    .line 46
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/sonymobile/rcs/core/content/MmContent;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "size"    # J

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/rcs/core/content/MmContent;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 78
    return-void
.end method
