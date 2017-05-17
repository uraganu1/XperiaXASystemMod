.class public Lcom/sonymobile/rcs/core/content/ContentManager;
.super Ljava/lang/Object;
.source "ContentManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGenericLiveAudioContent()Lcom/sonymobile/rcs/core/content/LiveAudioContent;
    .locals 2

    .prologue
    .line 302
    new-instance v0, Lcom/sonymobile/rcs/core/content/LiveAudioContent;

    const-string/jumbo v1, "audio/*"

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/core/content/LiveAudioContent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createGenericLiveVideoContent()Lcom/sonymobile/rcs/core/content/LiveVideoContent;
    .locals 2

    .prologue
    .line 293
    new-instance v0, Lcom/sonymobile/rcs/core/content/LiveVideoContent;

    const-string/jumbo v1, "video/*"

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/core/content/LiveVideoContent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createLiveAudioContent(Ljava/lang/String;)Lcom/sonymobile/rcs/core/content/LiveAudioContent;
    .locals 3
    .param p0, "codec"    # Ljava/lang/String;

    .prologue
    .line 284
    new-instance v0, Lcom/sonymobile/rcs/core/content/LiveAudioContent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "audio/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/core/content/LiveAudioContent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createLiveAudioContentFromSdp([B)Lcom/sonymobile/rcs/core/content/LiveAudioContent;
    .locals 13
    .param p0, "sdp"    # [B

    .prologue
    const/4 v12, 0x0

    .line 356
    new-instance v7, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;

    invoke-direct {v7, p0}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;-><init>([B)V

    .line 357
    .local v7, "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getMediaDescriptions()Ljava/util/Vector;

    move-result-object v6

    .local v6, "media":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    const/4 v8, 0x0

    .line 360
    .local v8, "result":Lcom/sonymobile/rcs/core/content/LiveAudioContent;
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v10

    if-eqz v10, :cond_0

    const/4 v1, 0x0

    .line 365
    .local v1, "desc":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    const/4 v3, 0x0

    .local v3, "found":Z
    const/4 v4, 0x0

    .line 367
    .end local v1    # "desc":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    .local v4, "i":I
    :goto_0
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v10

    if-lt v4, v10, :cond_1

    .line 375
    :goto_1
    if-nez v3, :cond_3

    .line 387
    .end local v8    # "result":Lcom/sonymobile/rcs/core/content/LiveAudioContent;
    :goto_2
    return-object v8

    .end local v3    # "found":Z
    .end local v4    # "i":I
    .restart local v8    # "result":Lcom/sonymobile/rcs/core/content/LiveAudioContent;
    :cond_0
    const/4 v10, 0x0

    .line 361
    return-object v10

    .line 368
    .restart local v3    # "found":Z
    .restart local v4    # "i":I
    :cond_1
    invoke-virtual {v6, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    .line 369
    .local v1, "desc":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    iget-object v10, v1, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->name:Ljava/lang/String;

    const-string/jumbo v11, "audio"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 367
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 370
    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    .end local v1    # "desc":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    :cond_3
    const-string/jumbo v10, "rtpmap"

    .line 376
    invoke-virtual {v1, v10}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 379
    .local v9, "rtpmap":Ljava/lang/String;
    iget-object v10, v1, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->payload:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    iget-object v11, v1, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->payload:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 380
    .local v2, "encoding":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .local v0, "codec":Ljava/lang/String;
    const-string/jumbo v10, "/"

    .line 381
    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .local v5, "index":I
    const/4 v10, -0x1

    .line 382
    if-ne v5, v10, :cond_4

    .line 385
    :goto_3
    invoke-static {v0}, Lcom/sonymobile/rcs/core/content/ContentManager;->createLiveAudioContent(Ljava/lang/String;)Lcom/sonymobile/rcs/core/content/LiveAudioContent;

    move-result-object v8

    .local v8, "result":Lcom/sonymobile/rcs/core/content/LiveAudioContent;
    goto :goto_2

    .line 383
    .local v8, "result":Lcom/sonymobile/rcs/core/content/LiveAudioContent;
    :cond_4
    invoke-virtual {v2, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static createLiveVideoContent(Ljava/lang/String;)Lcom/sonymobile/rcs/core/content/LiveVideoContent;
    .locals 3
    .param p0, "codec"    # Ljava/lang/String;

    .prologue
    .line 274
    new-instance v0, Lcom/sonymobile/rcs/core/content/LiveVideoContent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "video/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/core/content/LiveVideoContent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createLiveVideoContentFromSdp([B)Lcom/sonymobile/rcs/core/content/LiveVideoContent;
    .locals 13
    .param p0, "sdp"    # [B

    .prologue
    const/4 v12, 0x0

    .line 313
    new-instance v7, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;

    invoke-direct {v7, p0}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;-><init>([B)V

    .line 314
    .local v7, "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getMediaDescriptions()Ljava/util/Vector;

    move-result-object v6

    .local v6, "media":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    const/4 v8, 0x0

    .line 317
    .local v8, "result":Lcom/sonymobile/rcs/core/content/LiveVideoContent;
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v10

    if-eqz v10, :cond_0

    const/4 v1, 0x0

    .line 322
    .local v1, "desc":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    const/4 v3, 0x0

    .local v3, "found":Z
    const/4 v4, 0x0

    .line 324
    .end local v1    # "desc":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    .local v4, "i":I
    :goto_0
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v10

    if-lt v4, v10, :cond_1

    .line 332
    :goto_1
    if-nez v3, :cond_3

    .line 344
    .end local v8    # "result":Lcom/sonymobile/rcs/core/content/LiveVideoContent;
    :goto_2
    return-object v8

    .end local v3    # "found":Z
    .end local v4    # "i":I
    .restart local v8    # "result":Lcom/sonymobile/rcs/core/content/LiveVideoContent;
    :cond_0
    const/4 v10, 0x0

    .line 318
    return-object v10

    .line 325
    .restart local v3    # "found":Z
    .restart local v4    # "i":I
    :cond_1
    invoke-virtual {v6, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    .line 326
    .local v1, "desc":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    iget-object v10, v1, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->name:Ljava/lang/String;

    const-string/jumbo v11, "video"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 324
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 327
    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    .end local v1    # "desc":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    :cond_3
    const-string/jumbo v10, "rtpmap"

    .line 333
    invoke-virtual {v1, v10}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 336
    .local v9, "rtpmap":Ljava/lang/String;
    iget-object v10, v1, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->payload:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    iget-object v11, v1, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->payload:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, "encoding":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .local v0, "codec":Ljava/lang/String;
    const-string/jumbo v10, "/"

    .line 338
    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .local v5, "index":I
    const/4 v10, -0x1

    .line 339
    if-ne v5, v10, :cond_4

    .line 342
    :goto_3
    invoke-static {v0}, Lcom/sonymobile/rcs/core/content/ContentManager;->createLiveVideoContent(Ljava/lang/String;)Lcom/sonymobile/rcs/core/content/LiveVideoContent;

    move-result-object v8

    .local v8, "result":Lcom/sonymobile/rcs/core/content/LiveVideoContent;
    goto :goto_2

    .line 340
    .local v8, "result":Lcom/sonymobile/rcs/core/content/LiveVideoContent;
    :cond_4
    invoke-virtual {v2, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static createMmContentFromFilename(Ljava/lang/String;Ljava/lang/String;J)Lcom/sonymobile/rcs/core/content/MmContent;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "size"    # J

    .prologue
    .line 164
    invoke-static {p0}, Lcom/sonymobile/rcs/utils/FileUtils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "mime":Ljava/lang/String;
    invoke-static {p1, v1, p2, p3}, Lcom/sonymobile/rcs/core/content/ContentManager;->createMmContentFromMime(Ljava/lang/String;Ljava/lang/String;J)Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v0

    .line 166
    .local v0, "content":Lcom/sonymobile/rcs/core/content/MmContent;
    invoke-virtual {v0, p0}, Lcom/sonymobile/rcs/core/content/MmContent;->setName(Ljava/lang/String;)V

    .line 168
    return-object v0
.end method

.method public static createMmContentFromMime(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)Lcom/sonymobile/rcs/core/content/MmContent;
    .locals 8
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "mime"    # Ljava/lang/String;
    .param p2, "size"    # J
    .param p4, "filename"    # Ljava/lang/String;

    .prologue
    .line 181
    if-nez p1, :cond_0

    .line 204
    new-instance v0, Lcom/sonymobile/rcs/core/content/FileContent;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/sonymobile/rcs/core/content/FileContent;-><init>(Landroid/net/Uri;JLjava/lang/String;)V

    return-object v0

    :cond_0
    const-string/jumbo v0, "image/"

    .line 182
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "video/"

    .line 186
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "audio/"

    .line 190
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "text/vcard"

    .line 194
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "application/vnd.gsma.rcspushlocation+xml"

    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 206
    new-instance v1, Lcom/sonymobile/rcs/core/content/FileContent;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sonymobile/rcs/core/content/FileContent;-><init>(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V

    return-object v1

    .line 184
    :cond_1
    new-instance v1, Lcom/sonymobile/rcs/core/content/PhotoContent;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sonymobile/rcs/core/content/PhotoContent;-><init>(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V

    return-object v1

    .line 188
    :cond_2
    new-instance v1, Lcom/sonymobile/rcs/core/content/VideoContent;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sonymobile/rcs/core/content/VideoContent;-><init>(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V

    return-object v1

    .line 192
    :cond_3
    new-instance v1, Lcom/sonymobile/rcs/core/content/AudioContent;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sonymobile/rcs/core/content/AudioContent;-><init>(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V

    return-object v1

    .line 196
    :cond_4
    new-instance v0, Lcom/sonymobile/rcs/core/content/VisitCardContent;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/sonymobile/rcs/core/content/VisitCardContent;-><init>(Landroid/net/Uri;JLjava/lang/String;)V

    return-object v0

    .line 200
    :cond_5
    new-instance v0, Lcom/sonymobile/rcs/core/content/GeolocContent;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/sonymobile/rcs/core/content/GeolocContent;-><init>(Landroid/net/Uri;JLjava/lang/String;)V

    return-object v0
.end method

.method public static createMmContentFromMime(Ljava/lang/String;Ljava/lang/String;J)Lcom/sonymobile/rcs/core/content/MmContent;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "mime"    # Ljava/lang/String;
    .param p2, "size"    # J

    .prologue
    .line 218
    if-nez p1, :cond_0

    .line 241
    new-instance v0, Lcom/sonymobile/rcs/core/content/FileContent;

    invoke-direct {v0, p0, p2, p3}, Lcom/sonymobile/rcs/core/content/FileContent;-><init>(Ljava/lang/String;J)V

    return-object v0

    :cond_0
    const-string/jumbo v0, "image/"

    .line 219
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "video/"

    .line 223
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "audio/"

    .line 227
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "text/vcard"

    .line 231
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "application/vnd.gsma.rcspushlocation+xml"

    .line 235
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 243
    new-instance v0, Lcom/sonymobile/rcs/core/content/FileContent;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sonymobile/rcs/core/content/FileContent;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0

    .line 221
    :cond_1
    new-instance v0, Lcom/sonymobile/rcs/core/content/PhotoContent;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sonymobile/rcs/core/content/PhotoContent;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0

    .line 225
    :cond_2
    new-instance v0, Lcom/sonymobile/rcs/core/content/VideoContent;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sonymobile/rcs/core/content/VideoContent;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0

    .line 229
    :cond_3
    new-instance v0, Lcom/sonymobile/rcs/core/content/AudioContent;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sonymobile/rcs/core/content/AudioContent;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0

    .line 233
    :cond_4
    new-instance v0, Lcom/sonymobile/rcs/core/content/VisitCardContent;

    invoke-direct {v0, p0, p2, p3}, Lcom/sonymobile/rcs/core/content/VisitCardContent;-><init>(Ljava/lang/String;J)V

    return-object v0

    .line 237
    :cond_5
    new-instance v0, Lcom/sonymobile/rcs/core/content/GeolocContent;

    invoke-direct {v0, p0, p2, p3}, Lcom/sonymobile/rcs/core/content/GeolocContent;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method

.method public static createMmContentFromMime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/sonymobile/rcs/core/content/MmContent;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "mime"    # Ljava/lang/String;
    .param p3, "size"    # J

    .prologue
    .line 258
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    invoke-static {p0, p1, p3, p4}, Lcom/sonymobile/rcs/core/content/ContentManager;->createMmContentFromFilename(Ljava/lang/String;Ljava/lang/String;J)Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v0

    .line 263
    .local v0, "content":Lcom/sonymobile/rcs/core/content/MmContent;
    :goto_0
    invoke-virtual {v0, p0}, Lcom/sonymobile/rcs/core/content/MmContent;->setName(Ljava/lang/String;)V

    .line 264
    return-object v0

    .line 259
    .end local v0    # "content":Lcom/sonymobile/rcs/core/content/MmContent;
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/sonymobile/rcs/core/content/ContentManager;->createMmContentFromMime(Ljava/lang/String;Ljava/lang/String;J)Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v0

    .restart local v0    # "content":Lcom/sonymobile/rcs/core/content/MmContent;
    goto :goto_0
.end method

.method public static createMmContentFromSdp(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Lcom/sonymobile/rcs/core/content/MmContent;
    .locals 15
    .param p0, "invite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 398
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getSdpContent()Ljava/lang/String;

    move-result-object v9

    .line 399
    .local v9, "remoteSdp":Ljava/lang/String;
    new-instance v8, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-direct {v8, v13}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;-><init>([B)V

    .line 400
    .local v8, "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getMediaDescriptions()Ljava/util/Vector;

    move-result-object v6

    .local v6, "media":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    const/4 v13, 0x0

    .line 401
    invoke-virtual {v6, v13}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    .local v1, "desc":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    const-string/jumbo v13, "file-selector"

    .line 402
    invoke-virtual {v1, v13}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v0

    .line 403
    .local v0, "attr1":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v3

    .local v3, "fileSelectorValue":Ljava/lang/String;
    const-string/jumbo v13, "type:"

    const-string/jumbo v14, "application/octet-stream"

    .line 404
    invoke-static {v3, v13, v14}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->extractParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "mime":Ljava/lang/String;
    const-string/jumbo v13, "size:"

    const-string/jumbo v14, "-1"

    .line 406
    invoke-static {v3, v13, v14}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->extractParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .local v10, "size":J
    const-string/jumbo v13, "name:"

    const-string/jumbo v14, ""

    .line 407
    invoke-static {v3, v13, v14}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->extractParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 408
    .local v4, "filename":Ljava/lang/String;
    invoke-static {v4, v7}, Lcom/sonymobile/rcs/core/content/ContentManager;->generateUrlForReceivedContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 409
    .local v12, "url":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "file://"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-static {v13, v10, v11, v4}, Lcom/sonymobile/rcs/core/content/ContentManager;->createMmContentFromUri(Landroid/net/Uri;JLjava/lang/String;)Lcom/sonymobile/rcs/core/content/MmContent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 410
    .local v5, "mContent":Lcom/sonymobile/rcs/core/content/MmContent;
    return-object v5

    .end local v0    # "attr1":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .end local v1    # "desc":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    .end local v3    # "fileSelectorValue":Ljava/lang/String;
    .end local v4    # "filename":Ljava/lang/String;
    .end local v5    # "mContent":Lcom/sonymobile/rcs/core/content/MmContent;
    .end local v6    # "media":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    .end local v7    # "mime":Ljava/lang/String;
    .end local v8    # "parser":Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
    .end local v9    # "remoteSdp":Ljava/lang/String;
    .end local v10    # "size":J
    .end local v12    # "url":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const/4 v13, 0x0

    .line 412
    return-object v13
.end method

.method public static createMmContentFromUri(Landroid/net/Uri;JLjava/lang/String;)Lcom/sonymobile/rcs/core/content/MmContent;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "size"    # J
    .param p3, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/sonymobile/rcs/utils/FileUtils;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "mime":Ljava/lang/String;
    invoke-static {p0, v0, p1, p2, p3}, Lcom/sonymobile/rcs/core/content/ContentManager;->createMmContentFromMime(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v1

    return-object v1
.end method

.method public static generateUrlForReceivedContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "mime"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x2e

    const/4 v6, 0x0

    .line 61
    if-eqz p1, :cond_2

    const-string/jumbo v4, "image"

    .line 63
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "video"

    .line 65
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 68
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getFileRootDirectory()Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "path":Ljava/lang/String;
    :goto_0
    if-nez v3, :cond_5

    :cond_0
    :goto_1
    const-string/jumbo v1, ""

    .line 82
    .local v1, "extension":Ljava/lang/String;
    if-nez p0, :cond_6

    .line 87
    :cond_1
    :goto_2
    move-object v0, p0

    .local v0, "destination":Ljava/lang/String;
    const/4 v2, 0x1

    .line 89
    .local v2, "i":I
    :goto_3
    invoke-static {}, Lcom/sonymobile/rcs/platform/file/FileFactory;->getFactory()Lcom/sonymobile/rcs/platform/file/FileFactory;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/platform/file/FileFactory;->fileExists(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 62
    .end local v0    # "destination":Ljava/lang/String;
    .end local v1    # "extension":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "path":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getFileRootDirectory()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "path":Ljava/lang/String;
    goto :goto_0

    .line 64
    .end local v3    # "path":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getPhotoRootDirectory()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "path":Ljava/lang/String;
    goto :goto_0

    .line 66
    .end local v3    # "path":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getVideoRootDirectory()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "path":Ljava/lang/String;
    goto :goto_0

    .line 71
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_0

    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 82
    .restart local v1    # "extension":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    .line 90
    .restart local v0    # "destination":Ljava/lang/String;
    .restart local v2    # "i":I
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3
.end method
