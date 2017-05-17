.class public Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoCodecManager;
.super Ljava/lang/Object;
.source "VideoCodecManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToString(III)Ljava/lang/String;
    .locals 3
    .param p0, "profileIdc"    # I
    .param p1, "profileIop"    # I
    .param p2, "levelIdc"    # I

    .prologue
    const/4 v2, 0x0

    .line 347
    if-eqz p1, :cond_0

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 348
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createVideoCodecFromSdp(Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;)Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;
    .locals 21
    .param p0, "media"    # Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    .prologue
    :try_start_0
    const-string/jumbo v4, "rtpmap"

    .line 364
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v18

    .line 367
    .local v18, "rtpmap":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->payload:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->payload:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v4, v8

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 369
    .local v14, "encoding":Ljava/lang/String;
    move-object v3, v14

    .local v3, "codecName":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "clockRate":I
    const-string/jumbo v4, "/"

    .line 373
    invoke-virtual {v14, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    .local v17, "index":I
    const/4 v4, -0x1

    .line 374
    move/from16 v0, v17

    if-ne v0, v4, :cond_2

    :goto_0
    const/4 v9, 0x0

    .local v9, "videoWidth":I
    const/4 v10, 0x0

    .local v10, "videoHeight":I
    const/4 v7, 0x0

    .local v7, "frameRate":I
    const-string/jumbo v4, "framesize"

    .line 383
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v16

    .line 384
    .local v16, "frameSize":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    if-nez v16, :cond_3

    :cond_0
    :goto_1
    const-string/jumbo v4, "framerate"

    .line 400
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v11

    .line 401
    .local v11, "attr":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    if-nez v11, :cond_4

    :goto_2
    const-string/jumbo v4, "fmtp"

    .line 410
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v15

    .local v15, "fmtp":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    const-string/jumbo v6, ""

    .line 412
    .local v6, "codecParameters":Ljava/lang/String;
    if-nez v15, :cond_5

    .line 421
    :cond_1
    :goto_3
    new-instance v2, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->payload:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;-><init>(Ljava/lang/String;IILjava/lang/String;IIII)V

    .line 423
    .local v2, "videoCodec":Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;
    return-object v2

    .end local v2    # "videoCodec":Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;
    .end local v6    # "codecParameters":Ljava/lang/String;
    .end local v7    # "frameRate":I
    .end local v9    # "videoWidth":I
    .end local v10    # "videoHeight":I
    .end local v11    # "attr":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .end local v15    # "fmtp":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .end local v16    # "frameSize":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    :cond_2
    const/4 v4, 0x0

    .line 375
    move/from16 v0, v17

    invoke-virtual {v14, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 376
    add-int/lit8 v4, v17, 0x1

    invoke-virtual {v14, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    goto :goto_0

    .line 386
    .restart local v7    # "frameRate":I
    .restart local v9    # "videoWidth":I
    .restart local v10    # "videoHeight":I
    .restart local v16    # "frameSize":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    :cond_3
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v20

    .line 387
    .local v20, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->payload:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const/16 v4, 0x2d

    .line 388
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    .local v19, "separator":I
    const/4 v4, -0x1

    .line 389
    move/from16 v0, v17

    if-eq v0, v4, :cond_0

    const/4 v4, -0x1

    move/from16 v0, v19

    if-eq v0, v4, :cond_0

    .line 390
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->payload:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v4, v4, v17

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 392
    add-int/lit8 v4, v19, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    goto :goto_1

    .line 403
    .end local v19    # "separator":I
    .end local v20    # "value":Ljava/lang/String;
    .restart local v11    # "attr":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    :cond_4
    :try_start_2
    invoke-virtual {v11}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v7

    goto :goto_2

    .line 413
    .restart local v6    # "codecParameters":Ljava/lang/String;
    .restart local v15    # "fmtp":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    :cond_5
    :try_start_3
    invoke-virtual {v15}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v20

    .line 415
    .restart local v20    # "value":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->payload:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-le v4, v8, :cond_1

    .line 416
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->payload:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x0

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v6

    goto/16 :goto_3

    .line 423
    .end local v3    # "codecName":Ljava/lang/String;
    .end local v5    # "clockRate":I
    .end local v6    # "codecParameters":Ljava/lang/String;
    .end local v7    # "frameRate":I
    .end local v9    # "videoWidth":I
    .end local v10    # "videoHeight":I
    .end local v11    # "attr":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .end local v14    # "encoding":Ljava/lang/String;
    .end local v15    # "fmtp":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .end local v16    # "frameSize":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .end local v17    # "index":I
    .end local v18    # "rtpmap":Ljava/lang/String;
    .end local v20    # "value":Ljava/lang/String;
    :catch_0
    move-exception v13

    .local v13, "e":Ljava/lang/NullPointerException;
    const/4 v4, 0x0

    .line 425
    return-object v4

    .end local v13    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v12

    .local v12, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v4, 0x0

    .line 427
    return-object v4

    .line 406
    .end local v12    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v3    # "codecName":Ljava/lang/String;
    .restart local v5    # "clockRate":I
    .restart local v7    # "frameRate":I
    .restart local v9    # "videoWidth":I
    .restart local v10    # "videoHeight":I
    .restart local v11    # "attr":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .restart local v14    # "encoding":Ljava/lang/String;
    .restart local v16    # "frameSize":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .restart local v17    # "index":I
    .restart local v18    # "rtpmap":Ljava/lang/String;
    :catch_2
    move-exception v4

    goto/16 :goto_2

    .line 396
    .end local v11    # "attr":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    :catch_3
    move-exception v4

    goto/16 :goto_1
.end method

.method public static extractVideoCodecsFromSdp(Ljava/util/Vector;)Ljava/util/Vector;
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
            "Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 438
    .local p0, "medias":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .local v2, "list":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;>;"
    const/4 v1, 0x0

    .line 439
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 445
    return-object v2

    .line 440
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    invoke-static {v3}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoCodecManager;->createVideoCodecFromSdp(Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;)Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    move-result-object v0

    .line 441
    .local v0, "codec":Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;
    if-nez v0, :cond_1

    .line 439
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 442
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static getProfileLevelIdFromCodecParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "codecParams"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v2, "profile-level-id"

    .line 207
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, "indexOfProfileLevelId":I
    const/4 v2, -0x1

    .line 208
    if-eq v0, v2, :cond_0

    const-string/jumbo v2, "profile-level-id"

    .line 211
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    add-int/lit8 v1, v2, 0x1

    .line 212
    .local v1, "startIndex":I
    add-int/lit8 v2, v1, 0x6

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .end local v1    # "startIndex":I
    :cond_0
    const/4 v2, 0x0

    .line 209
    return-object v2
.end method

.method private static getProfileParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "supportedProfileLevelId"    # Ljava/lang/String;
    .param p1, "sPropParameter"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 227
    if-eqz p1, :cond_0

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "profile-level-id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "packetization-mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 228
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "profile-level-id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "packetization-mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSelectedProfile(Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;)Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;
    .locals 32
    .param p0, "proposedCodec"    # Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    .prologue
    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getCodecName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "H264"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getCodecParams()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoCodecManager;->getProfileLevelIdFromCodecParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 243
    .local v29, "profileLevelId":Ljava/lang/String;
    if-nez v29, :cond_2

    :cond_0
    const/4 v2, 0x0

    .line 244
    return-object v2

    .end local v29    # "profileLevelId":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .line 240
    return-object v2

    .line 243
    .restart local v29    # "profileLevelId":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getCodecParams()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoCodecManager;->getSpropParameterSets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .local v30, "sPropParameter":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 247
    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v27

    .local v27, "profileIdc":I
    const/4 v2, 0x2

    const/4 v3, 0x4

    .line 248
    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v28

    .local v28, "profileIop":I
    const/4 v2, 0x4

    const/4 v3, 0x6

    .line 249
    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v25

    .local v25, "levelIdc":I
    const/16 v2, 0x42

    .line 250
    move/from16 v0, v27

    if-ne v0, v2, :cond_4

    const/16 v31, 0x0

    .line 254
    .local v31, "supportedProfileLevelId":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/utils/NetworkUtils;->getNetworkAccessType()I

    move-result v26

    .line 255
    .local v26, "networkAccessType":I
    sget v2, Lcom/sonymobile/rcs/utils/NetworkUtils;->NETWORK_ACCESS_WIFI:I

    move/from16 v0, v26

    if-ne v0, v2, :cond_5

    :cond_3
    const/16 v23, 0x1

    .line 257
    .local v23, "isHighBandWidth":Z
    :goto_0
    if-nez v23, :cond_6

    const v17, 0xfa00

    .local v17, "bitrate":I
    :goto_1
    const/16 v9, 0xb0

    .local v9, "width":I
    const/16 v10, 0x90

    .line 265
    .local v10, "height":I
    packed-switch v25, :pswitch_data_0

    const/4 v2, 0x0

    .line 342
    return-object v2

    .end local v9    # "width":I
    .end local v10    # "height":I
    .end local v17    # "bitrate":I
    .end local v23    # "isHighBandWidth":Z
    .end local v26    # "networkAccessType":I
    .end local v31    # "supportedProfileLevelId":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    .line 251
    return-object v2

    .line 255
    .restart local v26    # "networkAccessType":I
    .restart local v31    # "supportedProfileLevelId":Ljava/lang/String;
    :cond_5
    sget v2, Lcom/sonymobile/rcs/utils/NetworkUtils;->NETWORK_ACCESS_4G:I

    move/from16 v0, v26

    if-eq v0, v2, :cond_3

    const/16 v23, 0x0

    goto :goto_0

    .restart local v23    # "isHighBandWidth":Z
    :cond_6
    const v17, 0x17700

    .line 257
    goto :goto_1

    .line 267
    .restart local v9    # "width":I
    .restart local v10    # "height":I
    .restart local v17    # "bitrate":I
    :pswitch_0
    if-nez v23, :cond_7

    .line 289
    :pswitch_1
    if-nez v23, :cond_b

    :pswitch_2
    const/16 v2, 0xb

    .line 312
    move/from16 v0, v25

    if-gt v0, v2, :cond_f

    const/16 v2, 0x42

    .line 316
    move/from16 v0, v28

    and-int/lit16 v3, v0, 0x90

    const/16 v4, 0xb

    invoke-static {v2, v3, v4}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoCodecManager;->convertToString(III)Ljava/lang/String;

    move-result-object v31

    .line 319
    .local v31, "supportedProfileLevelId":Ljava/lang/String;
    :goto_2
    new-instance v11, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getCodecName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getPayload()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getClockRate()I

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getClockRate()I

    move-result v14

    :goto_3
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoCodecManager;->getProfileParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0xf

    const/16 v18, 0xb0

    const/16 v19, 0x90

    invoke-direct/range {v11 .. v19}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;-><init>(Ljava/lang/String;IILjava/lang/String;IIII)V

    return-object v11

    .line 273
    .local v31, "supportedProfileLevelId":Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getWidth()I

    move-result v2

    const/16 v3, 0x140

    if-eq v2, v3, :cond_8

    const/16 v24, 0x0

    .line 275
    .local v24, "isProposedResolutionQVGA":Z
    :goto_4
    if-nez v24, :cond_9

    :goto_5
    const/16 v2, 0x42

    .line 279
    move/from16 v0, v28

    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0xc

    invoke-static {v2, v3, v4}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoCodecManager;->convertToString(III)Ljava/lang/String;

    move-result-object v31

    .line 281
    .local v31, "supportedProfileLevelId":Ljava/lang/String;
    new-instance v2, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getCodecName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getPayload()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getClockRate()I

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getClockRate()I

    move-result v5

    :goto_6
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoCodecManager;->getProfileParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xf

    const v8, 0x2af80

    invoke-direct/range {v2 .. v10}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;-><init>(Ljava/lang/String;IILjava/lang/String;IIII)V

    return-object v2

    .end local v24    # "isProposedResolutionQVGA":Z
    .local v31, "supportedProfileLevelId":Ljava/lang/String;
    :cond_8
    const/16 v24, 0x1

    .line 273
    goto :goto_4

    .restart local v24    # "isProposedResolutionQVGA":Z
    :cond_9
    const/16 v9, 0x140

    const/16 v10, 0xf0

    .line 277
    goto :goto_5

    .local v31, "supportedProfileLevelId":Ljava/lang/String;
    :cond_a
    const v5, 0x15f90

    .line 281
    goto :goto_6

    .line 296
    .end local v24    # "isProposedResolutionQVGA":Z
    .local v31, "supportedProfileLevelId":Ljava/lang/String;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getWidth()I

    move-result v2

    const/16 v3, 0x140

    if-eq v2, v3, :cond_c

    const/16 v24, 0x0

    .line 298
    .restart local v24    # "isProposedResolutionQVGA":Z
    :goto_7
    if-nez v24, :cond_d

    :goto_8
    const/16 v2, 0x42

    .line 302
    move/from16 v0, v28

    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0xc

    invoke-static {v2, v3, v4}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoCodecManager;->convertToString(III)Ljava/lang/String;

    move-result-object v31

    .line 304
    .local v31, "supportedProfileLevelId":Ljava/lang/String;
    new-instance v2, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getCodecName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getPayload()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getClockRate()I

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getClockRate()I

    move-result v5

    :goto_9
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoCodecManager;->getProfileParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xf

    const v8, 0x2af80

    invoke-direct/range {v2 .. v10}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;-><init>(Ljava/lang/String;IILjava/lang/String;IIII)V

    return-object v2

    .end local v24    # "isProposedResolutionQVGA":Z
    .local v31, "supportedProfileLevelId":Ljava/lang/String;
    :cond_c
    const/16 v24, 0x1

    .line 296
    goto :goto_7

    .restart local v24    # "isProposedResolutionQVGA":Z
    :cond_d
    const/16 v9, 0x140

    const/16 v10, 0xf0

    .line 300
    goto :goto_8

    .local v31, "supportedProfileLevelId":Ljava/lang/String;
    :cond_e
    const v5, 0x15f90

    .line 304
    goto :goto_9

    .end local v24    # "isProposedResolutionQVGA":Z
    .local v31, "supportedProfileLevelId":Ljava/lang/String;
    :cond_f
    const/16 v2, 0x42

    .line 313
    move/from16 v0, v28

    and-int/lit16 v3, v0, 0x80

    or-int/lit16 v3, v3, 0x90

    const/16 v4, 0xb

    invoke-static {v2, v3, v4}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoCodecManager;->convertToString(III)Ljava/lang/String;

    move-result-object v31

    .local v31, "supportedProfileLevelId":Ljava/lang/String;
    goto/16 :goto_2

    :cond_10
    const v14, 0x15f90

    .line 319
    goto/16 :goto_3

    .local v31, "supportedProfileLevelId":Ljava/lang/String;
    :pswitch_3
    const/16 v20, 0x0

    .local v20, "flag0":I
    const/16 v21, 0x0

    .local v21, "flag1":I
    const/16 v22, 0x0

    .line 329
    .local v22, "flag3":I
    move/from16 v0, v28

    and-int/lit16 v0, v0, 0x80

    move/from16 v20, v0

    const/16 v2, 0xa

    .line 330
    move/from16 v0, v25

    if-le v0, v2, :cond_11

    .line 333
    :goto_a
    move/from16 v0, v28

    and-int/lit16 v0, v0, 0x90

    move/from16 v22, v0

    const/16 v2, 0x42

    .line 334
    or-int v3, v20, v21

    or-int v3, v3, v22

    const/16 v4, 0xa

    invoke-static {v2, v3, v4}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoCodecManager;->convertToString(III)Ljava/lang/String;

    move-result-object v31

    .line 336
    .local v31, "supportedProfileLevelId":Ljava/lang/String;
    new-instance v11, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getCodecName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getPayload()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getClockRate()I

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getClockRate()I

    move-result v14

    :goto_b
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoCodecManager;->getProfileParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0xf

    const/16 v18, 0xb0

    const/16 v19, 0x90

    invoke-direct/range {v11 .. v19}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;-><init>(Ljava/lang/String;IILjava/lang/String;IIII)V

    return-object v11

    .line 331
    .local v31, "supportedProfileLevelId":Ljava/lang/String;
    :cond_11
    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xc0

    move/from16 v21, v0

    goto :goto_a

    .local v31, "supportedProfileLevelId":Ljava/lang/String;
    :cond_12
    const v14, 0x15f90

    .line 336
    goto :goto_b

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getSpropParameterSets(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "proposedCodec"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v3, ";"

    .line 216
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "parameters":[Ljava/lang/String;
    array-length v1, v2

    .local v1, "length":I
    const/4 v0, 0x0

    .line 218
    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    const/4 v3, 0x0

    .line 223
    return-object v3

    .line 219
    :cond_0
    aget-object v3, v2, v0

    const-string/jumbo v4, "sprop-parameter-sets"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_1
    aget-object v3, v2, v0

    return-object v3
.end method

.method public static negociateVideoCodec(Ljava/util/Vector;)Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;",
            ">;)",
            "Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;"
        }
    .end annotation

    .prologue
    .local p0, "proposedCodecs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;>;"
    const/4 v0, 0x0

    .line 189
    .local v0, "selectedCodec":Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;
    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v0    # "selectedCodec":Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;
    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 195
    :cond_0
    if-eqz v0, :cond_2

    .line 203
    :goto_1
    return-object v0

    .line 189
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    .line 190
    .local v10, "proposedCodec":Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;
    invoke-static {v10}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/VideoCodecManager;->getSelectedProfile(Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;)Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    move-result-object v0

    .line 191
    .local v0, "selectedCodec":Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;
    if-nez v0, :cond_0

    goto :goto_0

    .line 196
    .end local v0    # "selectedCodec":Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;
    .end local v10    # "proposedCodec":Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;
    :cond_2
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    const-string/jumbo v1, "H264"

    const/16 v2, 0x5f

    const v3, 0x15f90

    const-string/jumbo v4, "profile-level-id=42800a;packetization-mode=1"

    const/16 v5, 0xa

    const v6, 0xcb20

    const/16 v7, 0xb0

    const/16 v8, 0x90

    invoke-direct/range {v0 .. v8}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;-><init>(Ljava/lang/String;IILjava/lang/String;IIII)V

    .restart local v0    # "selectedCodec":Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;
    goto :goto_1
.end method

.method public static negociateVideoCodec([Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;Ljava/util/Vector;)Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;
    .locals 16
    .param p0, "supportedCodecs"    # [Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;",
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;",
            ">;)",
            "Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;"
        }
    .end annotation

    .prologue
    .local p1, "proposedCodecs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;>;"
    const/4 v0, 0x0

    .line 147
    .local v0, "selectedCodec":Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;
    move-object/from16 v9, p0

    .local v9, "arr$":[Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;
    array-length v12, v9

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-lt v10, v12, :cond_0

    .line 170
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    .end local v0    # "selectedCodec":Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;
    const-string/jumbo v1, "H264"

    const/16 v2, 0x5f

    const v3, 0x15f90

    const-string/jumbo v4, "profile-level-id=42800a;packetization-mode=1"

    const/16 v5, 0xa

    const v6, 0xcb20

    const/16 v7, 0xb0

    const/16 v8, 0x90

    invoke-direct/range {v0 .. v8}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;-><init>(Ljava/lang/String;IILjava/lang/String;IIII)V

    .line 178
    .local v0, "selectedCodec":Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;
    return-object v0

    .line 147
    .local v0, "selectedCodec":Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;
    :cond_0
    aget-object v15, v9, v10

    .line 148
    .local v15, "supportedMediaCodec":Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 147
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 148
    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    .line 149
    .local v13, "proposedCodec":Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;
    new-instance v14, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    invoke-direct {v14, v15}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;-><init>(Lcom/sonymobile/rcs/service/api/client/media/MediaCodec;)V

    .line 150
    .local v14, "supportedCodec":Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;
    invoke-virtual {v13, v14}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->compare(Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;

    .end local v0    # "selectedCodec":Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;
    invoke-virtual {v13}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getCodecName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getPayload()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v13}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getPayload()I

    move-result v2

    :goto_1
    invoke-virtual {v13}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getClockRate()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v13}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getClockRate()I

    move-result v3

    :goto_2
    invoke-virtual {v13}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getCodecParams()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v13}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getCodecParams()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {v13}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getFramerate()I

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v13}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getFramerate()I

    move-result v5

    :goto_4
    invoke-virtual {v13}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getBitrate()I

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v13}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getBitrate()I

    move-result v6

    :goto_5
    invoke-virtual {v13}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getWidth()I

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v13}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getWidth()I

    move-result v7

    :goto_6
    invoke-virtual {v13}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getHeight()I

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v13}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getHeight()I

    move-result v8

    :goto_7
    invoke-direct/range {v0 .. v8}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;-><init>(Ljava/lang/String;IILjava/lang/String;IIII)V

    return-object v0

    :cond_3
    invoke-virtual {v14}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getPayload()I

    move-result v2

    goto :goto_1

    :cond_4
    invoke-virtual {v14}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getClockRate()I

    move-result v3

    goto :goto_2

    :cond_5
    invoke-virtual {v14}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getCodecParams()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_6
    invoke-virtual {v14}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getFramerate()I

    move-result v5

    goto :goto_4

    :cond_7
    invoke-virtual {v14}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getBitrate()I

    move-result v6

    goto :goto_5

    :cond_8
    invoke-virtual {v14}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getWidth()I

    move-result v7

    goto :goto_6

    :cond_9
    invoke-virtual {v14}, Lcom/sonymobile/rcs/service/api/client/media/video/VideoCodec;->getHeight()I

    move-result v8

    goto :goto_7
.end method
