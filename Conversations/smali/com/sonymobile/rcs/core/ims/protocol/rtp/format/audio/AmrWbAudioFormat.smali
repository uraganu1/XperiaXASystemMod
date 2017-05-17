.class public Lcom/sonymobile/rcs/core/ims/protocol/rtp/format/audio/AmrWbAudioFormat;
.super Lcom/sonymobile/rcs/core/ims/protocol/rtp/format/audio/AudioFormat;
.source "AmrWbAudioFormat.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-string/jumbo v0, "AMR-WB"

    const/16 v1, 0x7e

    .line 42
    invoke-direct {p0, v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/rtp/format/audio/AudioFormat;-><init>(Ljava/lang/String;I)V

    .line 43
    return-void
.end method
