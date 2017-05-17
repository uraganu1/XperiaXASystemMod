.class public Lcom/sonymobile/rcs/core/content/AudioContent;
.super Lcom/sonymobile/rcs/core/content/MmContent;
.source "AudioContent.java"


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "size"    # J
    .param p5, "fileName"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct/range {p0 .. p5}, Lcom/sonymobile/rcs/core/content/MmContent;-><init>(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/rcs/core/content/MmContent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "size"    # J

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/rcs/core/content/MmContent;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 44
    return-void
.end method
