.class public Lcom/sonymobile/rcs/core/content/GeolocContent;
.super Lcom/sonymobile/rcs/core/content/MmContent;
.source "GeolocContent.java"


# direct methods
.method public constructor <init>(Landroid/net/Uri;JLjava/lang/String;)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "size"    # J
    .param p4, "filename"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v3, "application/vnd.gsma.rcspushlocation+xml"

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-object v6, p4

    .line 80
    invoke-direct/range {v1 .. v6}, Lcom/sonymobile/rcs/core/content/MmContent;-><init>(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "size"    # J

    .prologue
    const-string/jumbo v0, "application/vnd.gsma.rcspushlocation+xml"

    .line 47
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/sonymobile/rcs/core/content/MmContent;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J[B)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "size"    # J
    .param p4, "geolocDoc"    # [B

    .prologue
    const-string/jumbo v0, "application/vnd.gsma.rcspushlocation+xml"

    .line 58
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/sonymobile/rcs/core/content/MmContent;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 60
    invoke-virtual {p0, p4}, Lcom/sonymobile/rcs/core/content/GeolocContent;->setData([B)V

    .line 61
    return-void
.end method
