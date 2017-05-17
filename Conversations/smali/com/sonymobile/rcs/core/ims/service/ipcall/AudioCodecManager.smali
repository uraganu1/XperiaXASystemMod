.class public Lcom/sonymobile/rcs/core/ims/service/ipcall/AudioCodecManager;
.super Ljava/lang/Object;
.source "AudioCodecManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAudioCodecFromSdp(Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;)Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;
    .locals 14
    .param p0, "media"    # Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    .prologue
    :try_start_0
    const-string/jumbo v12, "rtpmap"

    .line 75
    invoke-virtual {p0, v12}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 78
    .local v9, "rtpmap":Ljava/lang/String;
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->payload:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    iget-object v13, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->payload:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v9, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 80
    .local v6, "encoding":Ljava/lang/String;
    move-object v2, v6

    .local v2, "codecName":Ljava/lang/String;
    const-string/jumbo v12, "/"

    .line 82
    invoke-virtual {v6, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .local v8, "index":I
    const/4 v12, -0x1

    .line 83
    if-ne v8, v12, :cond_1

    :goto_0
    const-string/jumbo v12, "samplerate"

    .line 88
    invoke-virtual {p0, v12}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v0

    .local v0, "attr":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    const/16 v10, 0x3e80

    .line 90
    .local v10, "sampleRate":I
    if-nez v0, :cond_2

    :goto_1
    const-string/jumbo v12, "fmtp"

    .line 105
    invoke-virtual {p0, v12}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v7

    .local v7, "fmtp":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    const-string/jumbo v3, ""

    .line 107
    .local v3, "codecParameters":Ljava/lang/String;
    if-nez v7, :cond_5

    .line 116
    :cond_0
    :goto_2
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;

    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->payload:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-direct {v1, v2, v12, v3, v10}, Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 120
    .local v1, "audioCodec":Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;
    return-object v1

    .end local v0    # "attr":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .end local v1    # "audioCodec":Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;
    .end local v3    # "codecParameters":Ljava/lang/String;
    .end local v7    # "fmtp":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .end local v10    # "sampleRate":I
    :cond_1
    const/4 v12, 0x0

    .line 84
    invoke-virtual {v6, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 92
    .restart local v0    # "attr":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .restart local v10    # "sampleRate":I
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 93
    .local v11, "value":Ljava/lang/String;
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->payload:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v12, -0x1

    .line 94
    if-ne v8, v12, :cond_4

    .line 97
    :cond_3
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    goto :goto_1

    .line 94
    :cond_4
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    iget-object v13, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->payload:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-le v12, v13, :cond_3

    .line 95
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->payload:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v8

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    goto :goto_1

    .line 108
    .end local v11    # "value":Ljava/lang/String;
    .restart local v3    # "codecParameters":Ljava/lang/String;
    .restart local v7    # "fmtp":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    :cond_5
    :try_start_2
    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 110
    .restart local v11    # "value":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    iget-object v13, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->payload:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-le v12, v13, :cond_0

    .line 111
    iget-object v12, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->payload:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x0

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    goto :goto_2

    .line 120
    .end local v0    # "attr":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .end local v2    # "codecName":Ljava/lang/String;
    .end local v3    # "codecParameters":Ljava/lang/String;
    .end local v6    # "encoding":Ljava/lang/String;
    .end local v7    # "fmtp":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .end local v8    # "index":I
    .end local v9    # "rtpmap":Ljava/lang/String;
    .end local v10    # "sampleRate":I
    .end local v11    # "value":Ljava/lang/String;
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/NullPointerException;
    const/4 v12, 0x0

    .line 122
    return-object v12

    .end local v5    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v4

    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v12, 0x0

    .line 124
    return-object v12

    .line 101
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v0    # "attr":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .restart local v2    # "codecName":Ljava/lang/String;
    .restart local v6    # "encoding":Ljava/lang/String;
    .restart local v8    # "index":I
    .restart local v9    # "rtpmap":Ljava/lang/String;
    .restart local v10    # "sampleRate":I
    :catch_2
    move-exception v12

    goto :goto_1
.end method

.method public static extractAudioCodecsFromSdp(Ljava/util/Vector;)Ljava/util/Vector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;",
            ">;)",
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "medias":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .local v2, "list":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;>;"
    const/4 v1, 0x0

    .line 136
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 142
    return-object v2

    .line 137
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    invoke-static {v3}, Lcom/sonymobile/rcs/core/ims/service/ipcall/AudioCodecManager;->createAudioCodecFromSdp(Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;)Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;

    move-result-object v0

    .line 138
    .local v0, "codec":Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;
    if-nez v0, :cond_1

    .line 136
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static negociateAudioCodec([Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;Ljava/util/Vector;)Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;
    .locals 11
    .param p0, "supportedCodecs"    # [Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;",
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;",
            ">;)",
            "Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;"
        }
    .end annotation

    .prologue
    .local p1, "proposedCodecs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;>;"
    const/4 v6, 0x0

    .local v6, "selectedCodec":Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;
    const/4 v4, -0x1

    .local v4, "pref":I
    const/4 v2, 0x0

    .line 45
    .end local v6    # "selectedCodec":Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;
    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v7

    if-lt v2, v7, :cond_0

    .line 62
    return-object v6

    .line 46
    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;

    .local v5, "proposedCodec":Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;
    const/4 v3, 0x0

    .line 47
    .local v3, "j":I
    :goto_1
    array-length v7, p0

    if-lt v3, v7, :cond_1

    .line 45
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    :cond_1
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;

    aget-object v7, p0, v3

    invoke-direct {v0, v7}, Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;-><init>(Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;)V

    .line 49
    .local v0, "audioCodec":Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    sub-int v1, v7, v3

    .line 51
    .local v1, "audioCodecPref":I
    invoke-virtual {v5, v0}, Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;->compare(Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 47
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 52
    :cond_3
    if-le v1, v4, :cond_2

    .line 53
    move v4, v1

    .line 54
    new-instance v6, Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;->getCodecName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;->getPayload()I

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v5}, Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;->getPayload()I

    move-result v7

    :goto_3
    invoke-virtual {v5}, Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;->getCodecParams()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;->getCodecParams()Ljava/lang/String;

    move-result-object v8

    :goto_4
    invoke-virtual {v5}, Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;->getSamplerate()I

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v5}, Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;->getSamplerate()I

    move-result v9

    :goto_5
    invoke-direct {v6, v10, v7, v8, v9}, Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .local v6, "selectedCodec":Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;
    goto :goto_2

    .end local v6    # "selectedCodec":Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;
    :cond_4
    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;->getPayload()I

    move-result v7

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;->getCodecParams()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/media/audio/AudioCodec;->getSamplerate()I

    move-result v9

    goto :goto_5
.end method
