.class public Lcom/sonymobile/rcs/core/ims/protocol/rtp/format/video/VideoFormat;
.super Lcom/sonymobile/rcs/core/ims/protocol/rtp/format/Format;
.source "VideoFormat.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "codec"    # Ljava/lang/String;
    .param p2, "payload"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/rcs/core/ims/protocol/rtp/format/Format;-><init>(Ljava/lang/String;I)V

    .line 35
    return-void
.end method
