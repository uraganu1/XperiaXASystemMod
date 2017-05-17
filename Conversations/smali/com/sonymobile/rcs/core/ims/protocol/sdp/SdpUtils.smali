.class public Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;
.super Ljava/lang/Object;
.source "SdpUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "sdp"    # Ljava/lang/StringBuffer;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 387
    if-nez p2, :cond_0

    .line 390
    :goto_0
    return-void

    .line 388
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static buildCapabilitySDP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 13
    .param p0, "ipAddress"    # Ljava/lang/String;
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "mimeTypes"    # Ljava/lang/String;
    .param p3, "selector"    # Ljava/lang/String;
    .param p4, "media"    # Ljava/lang/String;
    .param p5, "maxSize"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v6, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    .line 313
    invoke-static/range {v0 .. v12}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->buildSDP(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static buildChatSDP(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "ipAddress"    # Ljava/lang/String;
    .param p1, "localPort"    # I
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "acceptTypes"    # Ljava/lang/String;
    .param p4, "wrapperTypes"    # Ljava/lang/String;
    .param p5, "setup"    # Ljava/lang/String;
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "direction"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 223
    invoke-static/range {v0 .. v12}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->buildSDP(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static buildFileSDP(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 13
    .param p0, "ipAddress"    # Ljava/lang/String;
    .param p1, "localPort"    # I
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "acceptTypes"    # Ljava/lang/String;
    .param p4, "transferId"    # Ljava/lang/String;
    .param p5, "selector"    # Ljava/lang/String;
    .param p6, "disposition"    # Ljava/lang/String;
    .param p7, "setup"    # Ljava/lang/String;
    .param p8, "path"    # Ljava/lang/String;
    .param p9, "direction"    # Ljava/lang/String;
    .param p10, "maxSize"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v12, p10

    .line 286
    invoke-static/range {v0 .. v12}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->buildSDP(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static buildGroupChatSDP(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "ipAddress"    # Ljava/lang/String;
    .param p1, "localPort"    # I
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "acceptTypes"    # Ljava/lang/String;
    .param p4, "wrapperTypes"    # Ljava/lang/String;
    .param p5, "setup"    # Ljava/lang/String;
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "direction"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 252
    invoke-static/range {v0 .. v12}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->buildSDP(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildSDP(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "ipAddress"    # Ljava/lang/String;
    .param p1, "localPort"    # I
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "mimeTypes"    # Ljava/lang/String;
    .param p4, "wrapperTypes"    # Ljava/lang/String;
    .param p5, "transferId"    # Ljava/lang/String;
    .param p6, "selector"    # Ljava/lang/String;
    .param p7, "disposition"    # Ljava/lang/String;
    .param p8, "setup"    # Ljava/lang/String;
    .param p9, "path"    # Ljava/lang/String;
    .param p10, "direction"    # Ljava/lang/String;
    .param p11, "media"    # Ljava/lang/String;
    .param p12, "maxSize"    # I

    .prologue
    .line 337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->constructNTPtime(J)Ljava/lang/String;

    move-result-object v2

    .line 339
    .local v2, "ntpTime":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "v=0\r\no=- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->formatAddressType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "s=-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "c="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->formatAddressType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "t=0 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 344
    .local v3, "sdp":Ljava/lang/StringBuffer;
    if-nez p11, :cond_1

    .line 348
    :goto_0
    if-nez p2, :cond_2

    :goto_1
    const-string/jumbo v4, "a=accept-types:"

    .line 352
    invoke-static {v3, v4, p3}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "a=accept-wrapped-types:"

    .line 354
    invoke-static {v3, v4, p4}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "a=file-transfer-id:"

    .line 356
    invoke-static {v3, v4, p5}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "a=file-disposition:"

    .line 358
    invoke-static {v3, v4, p7}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    if-nez p6, :cond_3

    :cond_0
    const-string/jumbo v4, "a=file-selector"

    .line 365
    invoke-static {v3, v4, p6}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const-string/jumbo v4, "a=setup:"

    .line 368
    invoke-static {v3, v4, p8}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "a=path:"

    .line 370
    invoke-static {v3, v4, p9}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "TCP/TLS/MSRP"

    .line 372
    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    :goto_3
    const-string/jumbo v4, "a="

    .line 377
    move-object/from16 v0, p10

    invoke-static {v3, v4, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    if-gtz p12, :cond_5

    .line 383
    :goto_4
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object v4

    .line 345
    :cond_1
    move-object/from16 v0, p11

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 349
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "m=message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " *"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 360
    :cond_3
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    const-string/jumbo v4, "a=file-selector:"

    .line 362
    invoke-static {v3, v4, p6}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string/jumbo v4, "a=fingerprint:SHA-1 "

    .line 373
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/security/cert/KeyStoreManager;->getClientCertificateFingerprint()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 380
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "a=max-size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p12

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4
.end method

.method public static buildVideoSDP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "ipAddress"    # Ljava/lang/String;
    .param p1, "media"    # Ljava/lang/String;
    .param p2, "direction"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    move-object v9, v2

    move-object v10, p2

    move-object v11, p1

    move v12, v1

    .line 298
    invoke-static/range {v0 .. v12}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->buildSDP(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static extractFingerprint(Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;)Ljava/lang/String;
    .locals 2
    .param p0, "parser"    # Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    .param p1, "mediaDescription"    # Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    .prologue
    const/4 v0, 0x0

    .line 78
    .local v0, "fingerprint":Ljava/lang/String;
    if-nez p1, :cond_2

    .line 80
    :cond_0
    if-nez p0, :cond_3

    .line 83
    .end local v0    # "fingerprint":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    .restart local v0    # "fingerprint":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "fingerprint"

    .line 78
    invoke-virtual {p1, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 79
    new-instance v0, Ljava/lang/String;

    .end local v0    # "fingerprint":Ljava/lang/String;
    const-string/jumbo v1, "fingerprint"

    invoke-virtual {p1, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .local v0, "fingerprint":Ljava/lang/String;
    goto :goto_0

    .local v0, "fingerprint":Ljava/lang/String;
    :cond_3
    const-string/jumbo v1, "fingerprint"

    .line 80
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getSessionAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 81
    new-instance v0, Ljava/lang/String;

    .end local v0    # "fingerprint":Ljava/lang/String;
    const-string/jumbo v1, "fingerprint"

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getSessionAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .local v0, "fingerprint":Ljava/lang/String;
    goto :goto_0
.end method

.method public static extractRemoteHost(Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;)Ljava/lang/String;
    .locals 2
    .param p0, "sessionDescription"    # Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;
    .param p1, "mediaDescription"    # Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    .prologue
    const/4 v0, 0x0

    .line 145
    .local v0, "remoteHost":Ljava/lang/String;
    if-nez p1, :cond_2

    .line 151
    .end local v0    # "remoteHost":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 156
    :cond_1
    :goto_1
    return-object v0

    .line 145
    .restart local v0    # "remoteHost":Ljava/lang/String;
    :cond_2
    iget-object v1, p1, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->connectionInfo:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p1, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->connectionInfo:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->extractRemoteHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "remoteHost":Ljava/lang/String;
    goto :goto_0

    .line 151
    .end local v0    # "remoteHost":Ljava/lang/String;
    :cond_3
    if-eqz p0, :cond_1

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;->connectionInfo:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;->connectionInfo:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpUtils;->extractRemoteHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "remoteHost":Ljava/lang/String;
    goto :goto_1
.end method

.method public static extractRemoteHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "connectionInfo"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    const-string/jumbo v1, " "

    .line 61
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "tokens":[Ljava/lang/String;
    array-length v1, v0

    if-gt v1, v2, :cond_0

    const/4 v1, 0x0

    .line 65
    return-object v1

    .line 63
    :cond_0
    aget-object v1, v0, v2

    return-object v1
.end method

.method public static formatAddressType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-static {p0}, Lcom/sonymobile/rcs/utils/IpAddressUtils;->isIPv6(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "IN IP4 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 167
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "IN IP6 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
