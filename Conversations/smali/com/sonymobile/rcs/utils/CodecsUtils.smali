.class public Lcom/sonymobile/rcs/utils/CodecsUtils;
.super Ljava/lang/Object;
.source "CodecsUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVideoCodecProfile1b([Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;)Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;
    .locals 7
    .param p0, "mediaCodecs"    # [Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "arr$":[Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-lt v1, v2, :cond_0

    const/4 v5, 0x0

    .line 144
    return-object v5

    .line 137
    :cond_0
    aget-object v3, v0, v1

    .line 138
    .local v3, "mediaCodec":Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;
    new-instance v4, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    invoke-direct {v4, v3}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;-><init>(Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;)V

    .local v4, "videoCodec":Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;
    const-string/jumbo v5, "42900b"

    .line 139
    invoke-virtual {v4}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getCodecParams()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/rcs/core/ims/protocol/rtp/codec/video/h264/H264Config;->getCodecProfileLevelId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    :cond_1
    return-object v4
.end method
