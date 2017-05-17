.class public Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityUtils;
.super Ljava/lang/Object;
.source "CapabilityUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildSdp(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 22
    .param p0, "ipAddress"    # Ljava/lang/String;
    .param p1, "richcall"    # Z

    .prologue
    const/4 v13, 0x0

    .line 415
    .local v13, "sdp":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 483
    .end local v13    # "sdp":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v13

    .line 416
    .restart local v13    # "sdp":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isVideoSharingSupported()Z

    move-result v15

    .line 419
    .local v15, "video":Z
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isImageSharingSupported()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    const/4 v11, 0x0

    .line 421
    .local v11, "image":Z
    :goto_1
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isGeoLocationPushSupported()Z

    move-result v9

    .line 423
    .local v9, "geoloc":Z
    or-int v2, v15, v11

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    .local v4, "mimeTypes":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "protocol":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "selector":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "maxSize":I
    const/4 v6, 0x0

    .line 431
    .local v6, "media":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    .line 433
    .local v17, "videoSharingConfig":Ljava/lang/StringBuffer;
    if-nez v15, :cond_6

    .line 454
    .end local v6    # "media":Ljava/lang/String;
    :goto_2
    if-eqz v11, :cond_8

    .line 455
    :cond_3
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 459
    .local v14, "supportedTransferFormats":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/sonymobile/rcs/utils/MimeManager;->getSupportedImageMimeTypes()Ljava/util/Vector;

    move-result-object v12

    .local v12, "mimeTypesVector":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 461
    .local v10, "i":I
    :goto_3
    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v10, v2, :cond_9

    .line 467
    if-nez v9, :cond_a

    .line 472
    :goto_4
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .local v4, "mimeTypes":Ljava/lang/String;
    const-string/jumbo v3, "TCP/MSRP"

    .local v3, "protocol":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 476
    .local v5, "selector":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/richcall/image/ImageTransferSession;->getMaxImageSharingSize()I

    move-result v7

    .end local v3    # "protocol":Ljava/lang/String;
    .end local v4    # "mimeTypes":Ljava/lang/String;
    .end local v5    # "selector":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v12    # "mimeTypesVector":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v14    # "supportedTransferFormats":Ljava/lang/StringBuffer;
    :goto_5
    move-object/from16 v2, p0

    .line 479
    invoke-static/range {v2 .. v7}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->buildCapabilitySDP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .local v13, "sdp":Ljava/lang/String;
    goto :goto_0

    .line 419
    .end local v7    # "maxSize":I
    .end local v9    # "geoloc":Z
    .end local v11    # "image":Z
    .end local v17    # "videoSharingConfig":Ljava/lang/StringBuffer;
    .local v13, "sdp":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->getExternalAvailableSpaceInBytes()J

    move-result-wide v18

    const-wide/32 v20, 0x300000

    cmp-long v2, v18, v20

    if-gtz v2, :cond_5

    const/4 v2, 0x1

    :goto_6
    if-nez v2, :cond_2

    const/4 v11, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    goto :goto_6

    .line 435
    .local v3, "protocol":Ljava/lang/String;
    .local v4, "mimeTypes":Ljava/lang/String;
    .local v5, "selector":Ljava/lang/String;
    .restart local v6    # "media":Ljava/lang/String;
    .restart local v7    # "maxSize":I
    .restart local v9    # "geoloc":Z
    .restart local v11    # "image":Z
    .restart local v17    # "videoSharingConfig":Ljava/lang/StringBuffer;
    :cond_6
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/protocol/rtp/MediaRegistry;->getSupportedVideoFormats()Ljava/util/Vector;

    move-result-object v16

    .local v16, "videoFormats":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/rtp/format/video/VideoFormat;>;"
    const/4 v10, 0x0

    .line 437
    .restart local v10    # "i":I
    :goto_7
    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v10, v2, :cond_7

    .line 450
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "media":Ljava/lang/String;
    goto :goto_2

    .line 438
    .local v6, "media":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonymobile/rcs/core/ims/protocol/rtp/format/video/VideoFormat;

    .line 439
    .local v8, "fmt":Lcom/sonymobile/rcs/core/ims/protocol/rtp/format/video/VideoFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "m=video 0 RTP/AVP "

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/protocol/rtp/format/video/VideoFormat;->getPayload()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v18, "\r\n"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 445
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "a=rtpmap:"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/protocol/rtp/format/video/VideoFormat;->getPayload()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v18, " "

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/protocol/rtp/format/video/VideoFormat;->getCodec()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v18, "\r\n"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 437
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 454
    .end local v6    # "media":Ljava/lang/String;
    .end local v8    # "fmt":Lcom/sonymobile/rcs/core/ims/protocol/rtp/format/video/VideoFormat;
    .end local v10    # "i":I
    .end local v16    # "videoFormats":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/rtp/format/video/VideoFormat;>;"
    :cond_8
    if-nez v9, :cond_3

    goto/16 :goto_5

    .line 462
    .restart local v10    # "i":I
    .restart local v12    # "mimeTypesVector":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v14    # "supportedTransferFormats":Ljava/lang/StringBuffer;
    :cond_9
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v18, " "

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 461
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    :cond_a
    const-string/jumbo v2, "application/vnd.gsma.rcspushlocation+xml"

    .line 468
    invoke-virtual {v14, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_4
.end method

.method public static extractCapabilities(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    .locals 26
    .param p0, "msg"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;

    .prologue
    .line 211
    new-instance v3, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    invoke-direct {v3}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;-><init>()V

    .line 212
    .local v3, "capabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->getFeatureTags()Ljava/util/ArrayList;

    move-result-object v20

    .line 213
    .local v20, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 214
    .local v11, "iPCall_RCSE":Z
    const/4 v10, 0x0

    .local v10, "iPCall_3GPP":Z
    const/4 v9, 0x0

    .line 215
    .local v9, "i":I
    :goto_0
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-lt v9, v0, :cond_1

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->getContentBytes()[B

    move-result-object v5

    .line 296
    .local v5, "content":[B
    if-nez v5, :cond_1a

    .line 347
    :cond_0
    :goto_1
    return-object v3

    .line 216
    .end local v5    # "content":[B
    :cond_1
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .local v19, "tag":Ljava/lang/String;
    const-string/jumbo v24, "+g.3gpp.cs-voice"

    .line 217
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_2

    const-string/jumbo v24, "urn%3Aurn-7%3A3gpp-application.ims.iari.gsma-is"

    .line 220
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_3

    const-string/jumbo v24, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.im"

    .line 223
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_4

    const-string/jumbo v24, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft"

    .line 226
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_5

    const-string/jumbo v24, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fthttp"

    .line 229
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_6

    const-string/jumbo v24, "+g.oma.sip-im"

    .line 232
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_7

    const-string/jumbo v24, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.dp"

    .line 236
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_8

    const-string/jumbo v24, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.sp"

    .line 239
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_9

    const-string/jumbo v24, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopush"

    .line 242
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_a

    const-string/jumbo v24, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.ftthumb"

    .line 245
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_b

    const-string/jumbo v24, "+g.gsma.rcs.ipcall"

    .line 248
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_c

    const-string/jumbo v24, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.mmtel\""

    .line 255
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_e

    const-string/jumbo v24, "video"

    .line 262
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_10

    const-string/jumbo v24, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.ftstandfw"

    .line 264
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_11

    const-string/jumbo v24, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fullsfgroupchat"

    .line 267
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_12

    const-string/jumbo v24, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callcomposer\""

    .line 270
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_13

    const-string/jumbo v24, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedmap\""

    .line 273
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_14

    const-string/jumbo v24, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedsketch\""

    .line 276
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_15

    const-string/jumbo v24, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callunanswered\""

    .line 279
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_16

    .line 282
    invoke-static/range {v19 .. v19}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityUtils;->isFeatureTagSupported(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_17

    const-string/jumbo v24, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.gsma-is\""

    .line 286
    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_18

    const-string/jumbo v24, "automata"

    .line 289
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_19

    .line 215
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 219
    :cond_2
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setVideoSharingSupport(Z)V

    goto :goto_2

    .line 222
    :cond_3
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setImageSharingSupport(Z)V

    goto :goto_2

    .line 225
    :cond_4
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setImSessionSupport(Z)V

    goto :goto_2

    .line 228
    :cond_5
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setFileTransferSupport(Z)V

    goto :goto_2

    .line 231
    :cond_6
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setFileTransferHttpSupport(Z)V

    goto :goto_2

    .line 234
    :cond_7
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setImSessionSupport(Z)V

    .line 235
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setFileTransferSupport(Z)V

    goto :goto_2

    .line 238
    :cond_8
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setPresenceDiscoverySupport(Z)V

    goto :goto_2

    .line 241
    :cond_9
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setSocialPresenceSupport(Z)V

    goto :goto_2

    .line 244
    :cond_a
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setGeolocationPushSupport(Z)V

    goto :goto_2

    .line 247
    :cond_b
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setFileTransferThumbnailSupport(Z)V

    goto :goto_2

    .line 250
    :cond_c
    if-nez v10, :cond_d

    .line 253
    const/4 v11, 0x1

    goto :goto_2

    .line 251
    :cond_d
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setIPVoiceCallSupport(Z)V

    goto :goto_2

    .line 257
    :cond_e
    if-nez v11, :cond_f

    .line 260
    const/4 v10, 0x1

    goto :goto_2

    .line 258
    :cond_f
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setIPVoiceCallSupport(Z)V

    goto :goto_2

    .line 263
    :cond_10
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setIPVideoCallSupport(Z)V

    goto :goto_2

    .line 266
    :cond_11
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setFileTransferStoreForwardSupport(Z)V

    goto/16 :goto_2

    .line 269
    :cond_12
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setGroupChatStoreForwardSupport(Z)V

    goto/16 :goto_2

    .line 272
    :cond_13
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setCallComposerSupport(Z)V

    goto/16 :goto_2

    .line 275
    :cond_14
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setSharedMapSupport(Z)V

    goto/16 :goto_2

    .line 278
    :cond_15
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setSharedSketchSupport(Z)V

    goto/16 :goto_2

    .line 281
    :cond_16
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setPostCallSupport(Z)V

    goto/16 :goto_2

    :cond_17
    const-string/jumbo v24, "="

    .line 284
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .local v22, "value":[Ljava/lang/String;
    const/16 v24, 0x1

    .line 285
    aget-object v24, v22, v24

    invoke-static/range {v24 .. v24}, Lcom/sonymobile/rcs/utils/StringUtils;->removeQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->addSupportedExtension(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 288
    .end local v22    # "value":[Ljava/lang/String;
    :cond_18
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setImageSharingSupport(Z)V

    goto/16 :goto_2

    .line 290
    :cond_19
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setSipAutomata(Z)V

    goto/16 :goto_2

    .line 297
    .end local v19    # "tag":Ljava/lang/String;
    .restart local v5    # "content":[B
    :cond_1a
    new-instance v17, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;-><init>([B)V

    .local v17, "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    const-string/jumbo v24, "video"

    .line 300
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getMediaDescriptions(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v16

    .line 301
    .local v16, "mediaVideo":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    new-instance v23, Ljava/util/Vector;

    invoke-direct/range {v23 .. v23}, Ljava/util/Vector;-><init>()V

    .local v23, "videoCodecs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 302
    :goto_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->size()I

    move-result v24

    move/from16 v0, v24

    if-lt v9, v0, :cond_1b

    .line 319
    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->size()I

    move-result v24

    if-eqz v24, :cond_1f

    :goto_4
    const-string/jumbo v24, "message"

    .line 325
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getMediaDescriptions(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v15

    .line 326
    .local v15, "mediaImage":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .local v12, "imgFormats":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 327
    :goto_5
    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v24

    move/from16 v0, v24

    if-lt v9, v0, :cond_20

    .line 341
    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v24

    if-nez v24, :cond_0

    .line 343
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setImageSharingSupport(Z)V

    goto/16 :goto_1

    .line 303
    .end local v12    # "imgFormats":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v15    # "mediaImage":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    :cond_1b
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    .local v6, "desc":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    const-string/jumbo v24, "rtpmap"

    .line 304
    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v2

    .line 305
    .local v2, "attr":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    if-nez v2, :cond_1d

    .line 302
    :cond_1c
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 306
    :cond_1d
    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v18

    .line 307
    .local v18, "rtpmap":Ljava/lang/String;
    iget-object v0, v6, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->payload:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    iget-object v0, v6, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->payload:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    add-int v24, v24, v25

    add-int/lit8 v24, v24, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 309
    .local v7, "encoding":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .local v4, "codec":Ljava/lang/String;
    const-string/jumbo v24, "/"

    .line 310
    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .local v13, "index":I
    const/16 v24, -0x1

    .line 311
    move/from16 v0, v24

    if-ne v13, v0, :cond_1e

    .line 314
    :goto_7
    invoke-static {v4}, Lcom/sonymobile/rcs/core/ims/protocol/rtp/MediaRegistry;->isCodecSupported(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1c

    .line 315
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_1e
    const/16 v24, 0x0

    .line 312
    move/from16 v0, v24

    invoke-virtual {v7, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    .line 321
    .end local v2    # "attr":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .end local v4    # "codec":Ljava/lang/String;
    .end local v6    # "desc":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    .end local v7    # "encoding":Ljava/lang/String;
    .end local v13    # "index":I
    .end local v18    # "rtpmap":Ljava/lang/String;
    :cond_1f
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setVideoSharingSupport(Z)V

    goto/16 :goto_4

    .line 328
    .restart local v12    # "imgFormats":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v15    # "mediaImage":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    :cond_20
    invoke-virtual {v15, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    .restart local v6    # "desc":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    const-string/jumbo v24, "accept-types"

    .line 329
    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v2

    .line 330
    .restart local v2    # "attr":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    if-nez v2, :cond_22

    .line 327
    :cond_21
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5

    .line 331
    :cond_22
    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .local v21, "types":[Ljava/lang/String;
    const/4 v14, 0x0

    .line 332
    .local v14, "j":I
    :goto_8
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v14, v0, :cond_21

    .line 333
    aget-object v8, v21, v14

    .line 334
    .local v8, "fmt":Ljava/lang/String;
    if-nez v8, :cond_24

    .line 332
    :cond_23
    :goto_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 334
    :cond_24
    invoke-static {v8}, Lcom/sonymobile/rcs/utils/MimeManager;->isMimeTypeSupported(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_23

    .line 336
    invoke-virtual {v12, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_9
.end method

.method public static getSupportedFeatureTags(ZZ)Ljava/util/List;
    .locals 10
    .param p0, "richcall"    # Z
    .param p1, "ipcall"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v3, ""

    .line 75
    .local v3, "tagsICSI":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isImSessionSupported()Z

    move-result v6

    if-nez v6, :cond_5

    .line 80
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isVideoSharingSupported()Z

    move-result v6

    if-nez v6, :cond_6

    .line 85
    :cond_0
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v1, "supportedTagList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isImSessionSupported()Z

    move-result v6

    if-nez v6, :cond_7

    .line 93
    :goto_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getMessagingUX()I

    move-result v6

    if-eq v6, v4, :cond_8

    .line 99
    :cond_1
    :goto_3
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isFileTransferSupported()Z

    move-result v6

    if-nez v6, :cond_9

    .line 104
    :goto_4
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isFileTransferHttpSupported()Z

    move-result v6

    if-nez v6, :cond_a

    .line 110
    :goto_5
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isImageSharingSupported()Z

    move-result v6

    if-nez v6, :cond_b

    .line 117
    :cond_2
    :goto_6
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isPresenceDiscoverySupported()Z

    move-result v4

    if-nez v4, :cond_f

    .line 122
    :goto_7
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isSocialPresenceSupported()Z

    move-result v4

    if-nez v4, :cond_10

    .line 127
    :goto_8
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isGeoLocationPushSupported()Z

    move-result v4

    if-nez v4, :cond_11

    .line 132
    :goto_9
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isFileTransferThumbnailSupported()Z

    move-result v4

    if-nez v4, :cond_12

    .line 137
    :goto_a
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isFileTransferStoreForwardSupported()Z

    move-result v4

    if-nez v4, :cond_13

    .line 142
    :goto_b
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isGroupChatStoreForwardSupported()Z

    move-result v4

    if-nez v4, :cond_14

    .line 147
    :goto_c
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isIPVoiceCallSupported()Z

    move-result v4

    if-nez v4, :cond_15

    .line 151
    :goto_d
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isIPVideoCallSupported()Z

    move-result v4

    if-nez v4, :cond_16

    .line 155
    :goto_e
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isCallComposerSupported()Z

    move-result v4

    if-nez v4, :cond_17

    .line 159
    :goto_f
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isSharedMapSupported()Z

    move-result v4

    if-nez v4, :cond_18

    .line 163
    :goto_10
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isSharedSketchSupported()Z

    move-result v4

    if-nez v4, :cond_19

    .line 167
    :goto_11
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isPostCallSupported()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 171
    :goto_12
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isSipAutomata()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 175
    :goto_13
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isGsmaExtToExtSupported()Z

    move-result v4

    if-nez v4, :cond_1c

    .line 181
    :cond_3
    :goto_14
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getSupportedRcsExtensions()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "exts":Ljava/lang/String;
    if-nez v0, :cond_1d

    .line 187
    :cond_4
    :goto_15
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1e

    .line 196
    :goto_16
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 200
    :goto_17
    return-object v2

    .end local v0    # "exts":Ljava/lang/String;
    .end local v1    # "supportedTagList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    const-string/jumbo v6, "+g.oma.sip-im"

    .line 76
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 80
    :cond_6
    if-eqz p0, :cond_0

    const-string/jumbo v6, "+g.3gpp.cs-voice"

    .line 81
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .restart local v1    # "supportedTagList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    const-string/jumbo v6, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.im"

    .line 89
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 93
    :cond_8
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getUserProfileImsDomain()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "vodafone"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "urn%3Aurn-7%3A3gpp-application.ims.iari.joyn.intmsg"

    .line 95
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_9
    const-string/jumbo v6, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft"

    .line 100
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_a
    const-string/jumbo v6, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fthttp"

    .line 105
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 110
    :cond_b
    if-eqz p0, :cond_d

    :cond_c
    invoke-static {}, Lcom/sonymobile/rcs/service/api/server/messaging/MessagingApiService;->getExternalAvailableSpaceInBytes()J

    move-result-wide v6

    const-wide/32 v8, 0x300000

    cmp-long v6, v6, v8

    if-gtz v6, :cond_e

    :goto_18
    if-nez v4, :cond_2

    const-string/jumbo v4, "urn%3Aurn-7%3A3gpp-application.ims.iari.gsma-is"

    .line 113
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 110
    :cond_d
    if-nez p1, :cond_c

    goto/16 :goto_6

    :cond_e
    move v4, v5

    goto :goto_18

    :cond_f
    const-string/jumbo v4, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.dp"

    .line 118
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_10
    const-string/jumbo v4, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.sp"

    .line 123
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_11
    const-string/jumbo v4, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopush"

    .line 128
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_12
    const-string/jumbo v4, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.ftthumb"

    .line 133
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    :cond_13
    const-string/jumbo v4, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.ftstandfw"

    .line 138
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    :cond_14
    const-string/jumbo v4, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fullsfgroupchat"

    .line 143
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_15
    const-string/jumbo v4, "+g.gsma.rcs.ipcall"

    .line 148
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "urn%3Aurn-7%3A3gpp-service.ims.icsi.mmtel,"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_d

    :cond_16
    const-string/jumbo v4, "video"

    .line 152
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 156
    :cond_17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callcomposer,"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_f

    .line 160
    :cond_18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedmap,"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_10

    .line 164
    :cond_19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedsketch,"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_11

    .line 168
    :cond_1a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callunanswered,"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_12

    :cond_1b
    const-string/jumbo v4, "automata"

    .line 172
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13

    .line 175
    :cond_1c
    invoke-static {}, Lcom/sonymobile/rcs/utils/JoynBrandingUtils;->isEnrichedCallingEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.rcs.extension,"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_14

    .line 182
    .restart local v0    # "exts":Ljava/lang/String;
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 183
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    :cond_1e
    const-string/jumbo v4, ","

    .line 188
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 191
    :goto_19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "+g.3gpp.icsi-ref=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 192
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16

    .line 189
    :cond_1f
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_19

    .line 197
    :cond_20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "+g.3gpp.iari-ref=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-static {v5, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17
.end method

.method private static isFeatureTagSupported(Ljava/lang/String;)Z
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs"

    .line 496
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 505
    :goto_0
    return v1

    .line 496
    :cond_1
    invoke-static {}, Lcom/sonymobile/rcs/utils/JoynBrandingUtils;->isEnrichedCallingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isGsmaExtToExtSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 496
    :cond_3
    invoke-static {}, Lcom/sonymobile/rcs/utils/JoynBrandingUtils;->isEnrichedCallingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method public static updateExternalSupportedFeatures(Landroid/content/Context;)V
    .locals 19
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 358
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 359
    .local v14, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v17, "com.sonymobile.rcs.capability.EXTENSION"

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v7, "intent":Landroid/content/Intent;
    const-string/jumbo v12, "+g.3gpp.iari-ref/*"

    .line 361
    .local v12, "mime":Ljava/lang/String;
    invoke-virtual {v7, v12}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v17, 0x40

    .line 362
    move/from16 v0, v17

    invoke-virtual {v14, v7, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 364
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .local v3, "extensions":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .line 365
    .local v5, "i":I
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-lt v5, v0, :cond_2

    .line 375
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    if-gtz v17, :cond_5

    .line 380
    :cond_0
    :goto_1
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v17

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setSupportedRcsExtensions(Ljava/lang/String;)V

    .line 382
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v17, "com.sonymobile.rcs.capability.EXTERNAL_SERVICES"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v8, "intentExternalServices":Landroid/content/Intent;
    const-string/jumbo v13, "+g.3gpp.icsi-ref/*"

    .line 384
    .local v13, "mimeICSI":Ljava/lang/String;
    invoke-virtual {v8, v13}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v17, 0x40

    .line 385
    move/from16 v0, v17

    invoke-virtual {v14, v8, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    .line 387
    .local v11, "listServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .local v4, "external_services":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .line 388
    :goto_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-lt v5, v0, :cond_6

    .line 396
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    if-gtz v17, :cond_8

    .line 399
    :cond_1
    :goto_3
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v17

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setSupportedRcsExternalServices(Ljava/lang/String;)V

    .line 404
    .end local v3    # "extensions":Ljava/lang/StringBuffer;
    .end local v4    # "external_services":Ljava/lang/StringBuffer;
    .end local v5    # "i":I
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "intentExternalServices":Landroid/content/Intent;
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "listServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v12    # "mime":Ljava/lang/String;
    .end local v13    # "mimeICSI":Ljava/lang/String;
    .end local v14    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_4
    return-void

    .line 366
    .restart local v3    # "extensions":Ljava/lang/StringBuffer;
    .restart local v5    # "i":I
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v10    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v12    # "mime":Ljava/lang/String;
    .restart local v14    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_2
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .local v6, "info":Landroid/content/pm/ResolveInfo;
    const/4 v9, 0x0

    .line 367
    .local v9, "j":I
    :goto_5
    iget-object v0, v6, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v17

    move/from16 v0, v17

    if-lt v9, v0, :cond_3

    .line 365
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 368
    :cond_3
    iget-object v0, v6, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v15

    .local v15, "tag":Ljava/lang/String;
    const-string/jumbo v17, "/"

    .line 369
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 370
    .local v16, "value":[Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "+g.3gpp.iari-ref=\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x1

    aget-object v18, v16, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityUtils;->isFeatureTagSupported(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 367
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 371
    :cond_4
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x1

    aget-object v18, v16, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 403
    .end local v3    # "extensions":Ljava/lang/StringBuffer;
    .end local v5    # "i":I
    .end local v6    # "info":Landroid/content/pm/ResolveInfo;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v9    # "j":I
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v12    # "mime":Ljava/lang/String;
    .end local v14    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v15    # "tag":Ljava/lang/String;
    .end local v16    # "value":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 402
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "extensions":Ljava/lang/StringBuffer;
    .restart local v5    # "i":I
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v10    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v12    # "mime":Ljava/lang/String;
    .restart local v14    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_5
    const/16 v17, 0x0

    .line 375
    :try_start_1
    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v17

    const/16 v18, 0x2c

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    const/16 v17, 0x0

    .line 376
    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 389
    .restart local v4    # "external_services":Ljava/lang/StringBuffer;
    .restart local v8    # "intentExternalServices":Landroid/content/Intent;
    .restart local v11    # "listServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v13    # "mimeICSI":Ljava/lang/String;
    :cond_6
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .restart local v6    # "info":Landroid/content/pm/ResolveInfo;
    const/4 v9, 0x0

    .line 390
    .restart local v9    # "j":I
    :goto_7
    iget-object v0, v6, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v17

    move/from16 v0, v17

    if-lt v9, v0, :cond_7

    .line 388
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 391
    :cond_7
    iget-object v0, v6, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "tag":Ljava/lang/String;
    const-string/jumbo v17, "/"

    .line 392
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 393
    .restart local v16    # "value":[Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x1

    aget-object v18, v16, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 390
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .end local v6    # "info":Landroid/content/pm/ResolveInfo;
    .end local v9    # "j":I
    .end local v15    # "tag":Ljava/lang/String;
    .end local v16    # "value":[Ljava/lang/String;
    :cond_8
    const/16 v17, 0x0

    .line 396
    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v17

    const/16 v18, 0x2c

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    const/16 v17, 0x0

    .line 397
    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method
