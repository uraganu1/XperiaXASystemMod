.class public Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;
.super Ljava/lang/Object;
.source "AudioCodec.java"


# instance fields
.field private mediaCodec:Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;)V
    .locals 0
    .param p1, "mediaCodec"    # Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;->mediaCodec:Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .param p1, "codecName"    # Ljava/lang/String;
    .param p2, "payload"    # I
    .param p3, "codecParams"    # Ljava/lang/String;
    .param p4, "samplerate"    # I

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    invoke-direct {v0, p1}, Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;->mediaCodec:Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    .line 61
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;->mediaCodec:Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    const-string/jumbo v1, "payload"

    invoke-virtual {v0, v1, p2}, Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;->setIntParam(Ljava/lang/String;I)V

    .line 62
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;->mediaCodec:Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    const-string/jumbo v1, "codecParams"

    invoke-virtual {v0, v1, p3}, Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;->setStringParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;->mediaCodec:Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    const-string/jumbo v1, "samplerate"

    invoke-virtual {v0, v1, p4}, Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;->setIntParam(Ljava/lang/String;I)V

    .line 64
    return-void
.end method


# virtual methods
.method public compare(Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;)Z
    .locals 3
    .param p1, "codec"    # Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;

    .prologue
    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, "ret":Z
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;->getCodecName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;->getCodecName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    :goto_0
    return v0

    .line 129
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCodecName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;->mediaCodec:Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;->getCodecName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCodecParams()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;->mediaCodec:Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    const-string/jumbo v1, "codecParams"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaCodec()Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;->mediaCodec:Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    return-object v0
.end method

.method public getPayload()I
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;->mediaCodec:Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    const-string/jumbo v1, "payload"

    const/16 v2, 0x60

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;->getIntParam(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSamplerate()I
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;->mediaCodec:Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;

    const-string/jumbo v1, "samplerate"

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;->getIntParam(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Codec "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;->getCodecName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;->getPayload()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;->getCodecParams()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;->getSamplerate()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
