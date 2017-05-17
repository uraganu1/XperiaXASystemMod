.class public Lcom/sonymobile/rcs/core/ims/protocol/rtp/format/video/H264VideoFormat;
.super Lcom/sonymobile/rcs/core/ims/protocol/rtp/format/video/VideoFormat;
.source "H264VideoFormat.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-string/jumbo v0, "H264"

    const/16 v1, 0x60

    .line 42
    invoke-direct {p0, v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/rtp/format/video/VideoFormat;-><init>(Ljava/lang/String;I)V

    .line 43
    return-void
.end method
