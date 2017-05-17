.class public Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;
.super Ljava/lang/Object;
.source "VideoCodec.java"


# instance fields
.field private mediaCodec:Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;)V
    .locals 0
    .param p1, "mediaCodec"    # Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->mediaCodec:Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;IIII)V
    .locals 2
    .param p1, "codecName"    # Ljava/lang/String;
    .param p2, "payload"    # I
    .param p3, "clockRate"    # I
    .param p4, "codecParams"    # Ljava/lang/String;
    .param p5, "framerate"    # I
    .param p6, "bitrate"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    invoke-direct {v0, p1}, Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->mediaCodec:Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    .line 89
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->mediaCodec:Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    const-string/jumbo v1, "payload"

    invoke-virtual {v0, v1, p2}, Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;->setIntParam(Ljava/lang/String;I)V

    .line 90
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->mediaCodec:Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    const-string/jumbo v1, "clockRate"

    invoke-virtual {v0, v1, p3}, Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;->setIntParam(Ljava/lang/String;I)V

    .line 91
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->mediaCodec:Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    const-string/jumbo v1, "codecParams"

    invoke-virtual {v0, v1, p4}, Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;->setStringParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->mediaCodec:Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    const-string/jumbo v1, "framerate"

    invoke-virtual {v0, v1, p5}, Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;->setIntParam(Ljava/lang/String;I)V

    .line 93
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->mediaCodec:Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    const-string/jumbo v1, "bitrate"

    invoke-virtual {v0, v1, p6}, Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;->setIntParam(Ljava/lang/String;I)V

    .line 94
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->mediaCodec:Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    const-string/jumbo v1, "codecWidth"

    invoke-virtual {v0, v1, p7}, Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;->setIntParam(Ljava/lang/String;I)V

    .line 95
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->mediaCodec:Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    const-string/jumbo v1, "codecHeight"

    invoke-virtual {v0, v1, p8}, Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;->setIntParam(Ljava/lang/String;I)V

    .line 96
    return-void
.end method


# virtual methods
.method public compare(Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;)Z
    .locals 3
    .param p1, "codec"    # Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    .prologue
    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, "ret":Z
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getCodecName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getCodecName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 222
    :cond_0
    :goto_0
    return v0

    .line 208
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 211
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getCodecName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "H264"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 217
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getCodecParams()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getCodecParams()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    const/4 v0, 0x1

    goto :goto_0

    .line 208
    :cond_4
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getWidth()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getWidth()I

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getHeight()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getHeight()I

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 212
    :cond_6
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getCodecParams()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/protocol/rtp/codec/video/h264/H264Config;->getCodecProfileLevelId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getCodecParams()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/protocol/rtp/codec/video/h264/H264Config;->getCodecProfileLevelId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 214
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getBitrate()I
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->mediaCodec:Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    const-string/jumbo v1, "bitrate"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;->getIntParam(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getClockRate()I
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->mediaCodec:Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    const-string/jumbo v1, "clockRate"

    const v2, 0x15f90

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;->getIntParam(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCodecName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->mediaCodec:Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;->getCodecName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCodecParams()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->mediaCodec:Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    const-string/jumbo v1, "codecParams"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFramerate()I
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->mediaCodec:Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    const-string/jumbo v1, "framerate"

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;->getIntParam(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->mediaCodec:Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    const-string/jumbo v1, "codecHeight"

    const/16 v2, 0x90

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;->getIntParam(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMediaCodec()Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->mediaCodec:Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    return-object v0
.end method

.method public getPayload()I
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->mediaCodec:Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    const-string/jumbo v1, "payload"

    const/16 v2, 0x60

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;->getIntParam(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->mediaCodec:Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    const-string/jumbo v1, "codecWidth"

    const/16 v2, 0xb0

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;->getIntParam(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Codec "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getCodecName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getPayload()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getClockRate()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getCodecParams()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getFramerate()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getBitrate()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
