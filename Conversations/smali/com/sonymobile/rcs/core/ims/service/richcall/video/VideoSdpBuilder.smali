.class public Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoSdpBuilder;
.super Ljava/lang/Object;
.source "VideoSdpBuilder.java"


# static fields
.field private static logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoSdpBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoSdpBuilder;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildSdpAnswer(Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;ILcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;)Ljava/lang/String;
    .locals 2
    .param p0, "codec"    # Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;
    .param p1, "localRtpPort"    # I
    .param p2, "inviteVideoMedia"    # Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    .prologue
    .line 170
    if-nez p2, :cond_1

    .line 178
    :cond_0
    invoke-static {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoSdpBuilder;->buildSdpWithoutOrientation(Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 171
    :cond_1
    invoke-static {p2}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;->create(Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;)Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;

    move-result-object v0

    .line 172
    .local v0, "extension":Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;
    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;->getExtensionId()I

    move-result v1

    invoke-static {p0, p1, v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoSdpBuilder;->buildSdpWithOrientationExtension(Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static buildSdpOfferWithOrientation([Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;I)Ljava/lang/String;
    .locals 3
    .param p0, "supportedCodecs"    # [Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;
    .param p1, "localRtpPort"    # I

    .prologue
    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoSdpBuilder;->buildSdpOfferWithoutOrientation([Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "a="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "extmap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " urn:3gpp:video-orientation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 107
    .local v0, "sdp":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static buildSdpOfferWithoutOrientation([Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;I)Ljava/lang/String;
    .locals 8
    .param p0, "supportedCodecs"    # [Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;
    .param p1, "localRtpPort"    # I

    .prologue
    .line 56
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v5, "result":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .local v1, "codecs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;>;"
    const/4 v3, 0x0

    .line 60
    .local v3, "i":I
    :goto_0
    array-length v6, p0

    if-lt v3, v6, :cond_1

    .line 64
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "m=video "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " RTP/AVP"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "\r\n"

    .line 68
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 70
    .local v2, "framerate":I
    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 75
    if-gtz v2, :cond_4

    .line 79
    :goto_3
    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    .line 90
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 61
    .end local v2    # "framerate":I
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    new-instance v6, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    aget-object v7, p0, v3

    invoke-direct {v6, v7}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;-><init>(Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;)V

    invoke-virtual {v1, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 60
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 65
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    .local v0, "codec":Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;
    const-string/jumbo v6, " "

    .line 66
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getPayload()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 70
    .end local v0    # "codec":Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;
    .restart local v2    # "framerate":I
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    .line 71
    .restart local v0    # "codec":Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;
    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getFramerate()I

    move-result v6

    if-le v6, v2, :cond_0

    .line 72
    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getFramerate()I

    move-result v2

    goto :goto_2

    .line 76
    .end local v0    # "codec":Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "a=framerate:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 79
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    .line 80
    .restart local v0    # "codec":Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "a=rtpmap:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getPayload()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getCodecName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getClockRate()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getWidth()I

    move-result v6

    if-nez v6, :cond_7

    .line 86
    :cond_6
    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "a=fmtp:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getPayload()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getCodecParams()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 82
    :cond_7
    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getHeight()I

    move-result v6

    if-eqz v6, :cond_6

    .line 83
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "a=framesize:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getPayload()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5
.end method

.method private static buildSdpWithOrientationExtension(Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;II)Ljava/lang/String;
    .locals 3
    .param p0, "codec"    # Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;
    .param p1, "localRtpPort"    # I
    .param p2, "extensionId"    # I

    .prologue
    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoSdpBuilder;->buildSdpWithoutOrientation(Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "a="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "extmap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " urn:3gpp:video-orientation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 155
    .local v0, "sdp":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static buildSdpWithoutOrientation(Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;I)Ljava/lang/String;
    .locals 4
    .param p0, "codec"    # Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;
    .param p1, "localRtpPort"    # I

    .prologue
    .line 118
    if-eqz p0, :cond_1

    .line 123
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    invoke-direct {v1, p0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;-><init>(Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;)V

    .line 124
    .local v1, "videoCodec":Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "m=video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " RTP/AVP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getPayload()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "a=rtpmap:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getPayload()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getCodecName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getClockRate()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 129
    .local v0, "sdp":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getWidth()I

    move-result v2

    if-nez v2, :cond_2

    .line 134
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getFramerate()I

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    const-string/jumbo v2, "a=fmtp:"

    .line 137
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getPayload()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getCodecParams()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 119
    .end local v0    # "sdp":Ljava/lang/StringBuilder;
    .end local v1    # "videoCodec":Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;
    :cond_1
    sget-object v2, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoSdpBuilder;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Invalid codec"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    const-string/jumbo v2, ""

    .line 120
    return-object v2

    .line 129
    .restart local v0    # "sdp":Ljava/lang/StringBuilder;
    .restart local v1    # "videoCodec":Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;
    :cond_2
    invoke-virtual {v1}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getHeight()I

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "a=framesize:"

    .line 130
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getPayload()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "a=framerate:"

    .line 135
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getFramerate()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method
