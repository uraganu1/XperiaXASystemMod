.class public Lcom/sonymobile/rcs/core/content/VisitCardContent;
.super Lcom/sonymobile/rcs/core/content/MmContent;
.source "VisitCardContent.java"


# direct methods
.method public constructor <init>(Landroid/net/Uri;JLjava/lang/String;)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "size"    # J
    .param p4, "filename"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v3, "text/vcard"

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-object v6, p4

    .line 65
    invoke-direct/range {v1 .. v6}, Lcom/sonymobile/rcs/core/content/MmContent;-><init>(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "size"    # J

    .prologue
    const-string/jumbo v0, "text/vcard"

    .line 45
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/sonymobile/rcs/core/content/MmContent;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 46
    return-void
.end method
