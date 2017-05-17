.class public Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;
.super Lcom/sonymobile/rcs/core/ims/protocol/sdp/Parser;
.source "SdpParser.java"


# instance fields
.field private bin:Ljava/io/ByteArrayInputStream;

.field public mediaDescriptions:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;",
            ">;"
        }
    .end annotation
.end field

.field public sessionDescription:Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/Parser;-><init>()V

    .line 37
    new-instance v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;

    invoke-direct {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->sessionDescription:Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;

    .line 42
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->mediaDescriptions:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->bin:Ljava/io/ByteArrayInputStream;

    .line 55
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->bin:Ljava/io/ByteArrayInputStream;

    .line 56
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->bin:Ljava/io/ByteArrayInputStream;

    const-string/jumbo v1, "v="

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getToken(Ljava/io/ByteArrayInputStream;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->parseSessionDescription()V

    .line 58
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->parseMediaDescriptions()V

    goto :goto_0
.end method

.method private parseMediaDescriptions()V
    .locals 21

    .prologue
    .line 178
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->bin:Ljava/io/ByteArrayInputStream;

    move-object/from16 v19, v0

    const-string/jumbo v20, "m="

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getToken(Ljava/io/ByteArrayInputStream;Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 298
    return-void

    .line 179
    :cond_1
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 182
    .local v5, "descs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->bin:Ljava/io/ByteArrayInputStream;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getLine(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v10

    .local v10, "line":Ljava/lang/String;
    const/16 v19, 0x20

    .line 183
    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .local v7, "end":I
    const/16 v19, 0x0

    .line 184
    move/from16 v0, v19

    invoke-virtual {v10, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 186
    .local v12, "name":Ljava/lang/String;
    add-int/lit8 v17, v7, 0x1

    .local v17, "start":I
    const/16 v19, 0x20

    .line 187
    move/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 188
    move/from16 v0, v17

    invoke-virtual {v10, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 190
    .local v15, "port":I
    add-int/lit8 v17, v7, 0x1

    const/16 v19, 0x20

    .line 191
    move/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 192
    move/from16 v0, v17

    invoke-virtual {v10, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 195
    .local v16, "protocol":Ljava/lang/String;
    add-int/lit8 v17, v7, 0x1

    const/16 v19, 0x20

    .line 196
    move/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    :goto_0
    const/16 v19, -0x1

    .line 197
    move/from16 v0, v19

    if-ne v7, v0, :cond_5

    .line 203
    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 204
    .local v14, "payload":Ljava/lang/String;
    new-instance v19, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v0, v12, v15, v1, v14}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->bin:Ljava/io/ByteArrayInputStream;

    move-object/from16 v19, v0

    const-string/jumbo v20, "i="

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getToken(Ljava/io/ByteArrayInputStream;Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 215
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->bin:Ljava/io/ByteArrayInputStream;

    move-object/from16 v19, v0

    const-string/jumbo v20, "c="

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getToken(Ljava/io/ByteArrayInputStream;Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 223
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->bin:Ljava/io/ByteArrayInputStream;

    move-object/from16 v19, v0

    const-string/jumbo v20, "b="

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getToken(Ljava/io/ByteArrayInputStream;Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->bin:Ljava/io/ByteArrayInputStream;

    move-object/from16 v19, v0

    const-string/jumbo v20, "k="

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getToken(Ljava/io/ByteArrayInputStream;Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_b

    .line 253
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->bin:Ljava/io/ByteArrayInputStream;

    move-object/from16 v19, v0

    const-string/jumbo v20, "a="

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getToken(Ljava/io/ByteArrayInputStream;Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_c

    const/4 v8, 0x0

    .line 294
    .local v8, "i":I
    :goto_1
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_0

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->mediaDescriptions:Ljava/util/Vector;

    move-object/from16 v20, v0

    invoke-virtual {v5, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 294
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 198
    .end local v8    # "i":I
    .end local v14    # "payload":Ljava/lang/String;
    :cond_5
    move/from16 v0, v17

    invoke-virtual {v10, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 199
    .restart local v14    # "payload":Ljava/lang/String;
    new-instance v19, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v0, v12, v15, v1, v14}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 200
    add-int/lit8 v17, v7, 0x1

    const/16 v19, 0x20

    .line 201
    move/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    goto/16 :goto_0

    .line 208
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->bin:Ljava/io/ByteArrayInputStream;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getLine(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v11

    .local v11, "mediaTitle":Ljava/lang/String;
    const/4 v8, 0x0

    .line 209
    .restart local v8    # "i":I
    :goto_2
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_2

    .line 210
    invoke-virtual {v5, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    move-object/from16 v0, v19

    iput-object v11, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->mediaTitle:Ljava/lang/String;

    .line 209
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 216
    .end local v8    # "i":I
    .end local v11    # "mediaTitle":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->bin:Ljava/io/ByteArrayInputStream;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getLine(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v4

    .local v4, "connectionInfo":Ljava/lang/String;
    const/4 v8, 0x0

    .line 217
    .restart local v8    # "i":I
    :goto_3
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_3

    .line 218
    invoke-virtual {v5, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->connectionInfo:Ljava/lang/String;

    .line 217
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 224
    .end local v4    # "connectionInfo":Ljava/lang/String;
    .end local v8    # "i":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->bin:Ljava/io/ByteArrayInputStream;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getLine(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v10

    const/16 v19, 0x3a

    .line 225
    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 226
    .local v9, "index":I
    if-lez v9, :cond_3

    .line 227
    add-int/lit8 v19, v9, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .local v18, "valueAttribute":Ljava/lang/String;
    const-string/jumbo v19, "AS"

    .line 228
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_9

    const-string/jumbo v19, "RS"

    .line 232
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_a

    const-string/jumbo v19, "RR"

    .line 236
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_3

    const/4 v8, 0x0

    .line 237
    .restart local v8    # "i":I
    :goto_4
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_3

    .line 238
    invoke-virtual {v5, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->receiverBandwidthInfo:Ljava/lang/String;

    .line 237
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .end local v8    # "i":I
    :cond_9
    const/4 v8, 0x0

    .line 229
    .restart local v8    # "i":I
    :goto_5
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_3

    .line 230
    invoke-virtual {v5, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->bandwidthInfo:Ljava/lang/String;

    .line 229
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .end local v8    # "i":I
    :cond_a
    const/4 v8, 0x0

    .line 233
    .restart local v8    # "i":I
    :goto_6
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_3

    .line 234
    invoke-virtual {v5, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->senderBandwidthInfo:Ljava/lang/String;

    .line 233
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 246
    .end local v8    # "i":I
    .end local v9    # "index":I
    .end local v18    # "valueAttribute":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->bin:Ljava/io/ByteArrayInputStream;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getLine(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v6

    .local v6, "encryptionKey":Ljava/lang/String;
    const/4 v8, 0x0

    .line 247
    .restart local v8    # "i":I
    :goto_7
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_4

    .line 248
    invoke-virtual {v5, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    move-object/from16 v0, v19

    iput-object v6, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->encryptionKey:Ljava/lang/String;

    .line 247
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 254
    .end local v6    # "encryptionKey":Ljava/lang/String;
    .end local v8    # "i":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->bin:Ljava/io/ByteArrayInputStream;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getLine(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v10

    const/16 v19, 0x3a

    .line 255
    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 256
    .restart local v9    # "index":I
    if-lez v9, :cond_4

    const/16 v19, 0x0

    .line 257
    move/from16 v0, v19

    invoke-virtual {v10, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 258
    .local v13, "nameAttribute":Ljava/lang/String;
    add-int/lit8 v19, v9, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .line 259
    .restart local v18    # "valueAttribute":Ljava/lang/String;
    new-instance v3, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-object/from16 v0, v18

    invoke-direct {v3, v13, v0}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v3, "attribute":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    const-string/jumbo v19, "rtpmap"

    .line 261
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_10

    :cond_d
    const-string/jumbo v19, "framesize"

    .line 269
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_12

    :cond_e
    const-string/jumbo v19, "fmtp"

    .line 277
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_14

    :cond_f
    const/4 v8, 0x0

    .line 286
    .restart local v8    # "i":I
    :goto_8
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_4

    .line 287
    invoke-virtual {v5, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->mediaAttributes:Ljava/util/Vector;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 286
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .end local v8    # "i":I
    :cond_10
    const/16 v19, 0x20

    .line 261
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_d

    const/4 v8, 0x0

    .line 264
    .restart local v8    # "i":I
    :goto_9
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_4

    .line 265
    invoke-virtual {v5, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->payload:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_11

    .line 264
    :goto_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 266
    :cond_11
    invoke-virtual {v5, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->mediaAttributes:Ljava/util/Vector;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_a

    .end local v8    # "i":I
    :cond_12
    const/16 v19, 0x20

    .line 269
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_e

    const/4 v8, 0x0

    .line 272
    .restart local v8    # "i":I
    :goto_b
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_4

    .line 273
    invoke-virtual {v5, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->payload:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_13

    .line 272
    :goto_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 274
    :cond_13
    invoke-virtual {v5, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->mediaAttributes:Ljava/util/Vector;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_c

    .end local v8    # "i":I
    :cond_14
    const/16 v19, 0x20

    .line 277
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_f

    const/4 v8, 0x0

    .line 280
    .restart local v8    # "i":I
    :goto_d
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_4

    .line 281
    invoke-virtual {v5, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->payload:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_15

    .line 280
    :goto_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    .line 282
    :cond_15
    invoke-virtual {v5, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->mediaAttributes:Ljava/util/Vector;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_e
.end method

.method private parseSessionDescription()V
    .locals 12

    .prologue
    const/16 v11, 0x3a

    const/4 v10, 0x0

    .line 67
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->sessionDescription:Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;

    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->bin:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v9}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getLine(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;->version:Ljava/lang/String;

    .line 70
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->bin:Ljava/io/ByteArrayInputStream;

    const-string/jumbo v9, "o="

    invoke-virtual {p0, v8, v9}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getToken(Ljava/io/ByteArrayInputStream;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 75
    :goto_0
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->bin:Ljava/io/ByteArrayInputStream;

    const-string/jumbo v9, "s="

    invoke-virtual {p0, v8, v9}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getToken(Ljava/io/ByteArrayInputStream;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 80
    :goto_1
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->bin:Ljava/io/ByteArrayInputStream;

    const-string/jumbo v9, "i="

    invoke-virtual {p0, v8, v9}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getToken(Ljava/io/ByteArrayInputStream;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 85
    :goto_2
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->bin:Ljava/io/ByteArrayInputStream;

    const-string/jumbo v9, "u="

    invoke-virtual {p0, v8, v9}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getToken(Ljava/io/ByteArrayInputStream;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 90
    :goto_3
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->bin:Ljava/io/ByteArrayInputStream;

    const-string/jumbo v9, "e="

    invoke-virtual {p0, v8, v9}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getToken(Ljava/io/ByteArrayInputStream;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 95
    :goto_4
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->bin:Ljava/io/ByteArrayInputStream;

    const-string/jumbo v9, "p="

    invoke-virtual {p0, v8, v9}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getToken(Ljava/io/ByteArrayInputStream;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 100
    :goto_5
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->bin:Ljava/io/ByteArrayInputStream;

    const-string/jumbo v9, "c="

    invoke-virtual {p0, v8, v9}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getToken(Ljava/io/ByteArrayInputStream;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 105
    :cond_0
    :goto_6
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->bin:Ljava/io/ByteArrayInputStream;

    const-string/jumbo v9, "b="

    invoke-virtual {p0, v8, v9}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getToken(Ljava/io/ByteArrayInputStream;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 123
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->sessionDescription:Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;

    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    iput-object v9, v8, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;->timeDescriptions:Ljava/util/Vector;

    .line 124
    :goto_7
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->bin:Ljava/io/ByteArrayInputStream;

    const-string/jumbo v9, "t="

    invoke-virtual {p0, v8, v9}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getToken(Ljava/io/ByteArrayInputStream;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 130
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->bin:Ljava/io/ByteArrayInputStream;

    const-string/jumbo v9, "z="

    invoke-virtual {p0, v8, v9}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getToken(Ljava/io/ByteArrayInputStream;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 135
    :goto_8
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->bin:Ljava/io/ByteArrayInputStream;

    const-string/jumbo v9, "k="

    invoke-virtual {p0, v8, v9}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getToken(Ljava/io/ByteArrayInputStream;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_f

    .line 140
    :goto_9
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->sessionDescription:Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;

    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    iput-object v9, v8, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;->sessionAttributes:Ljava/util/Vector;

    .line 141
    :cond_1
    :goto_a
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->bin:Ljava/io/ByteArrayInputStream;

    const-string/jumbo v9, "a="

    invoke-virtual {p0, v8, v9}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getToken(Ljava/io/ByteArrayInputStream;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 151
    return-void

    .line 71
    :cond_2
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->sessionDescription:Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;

    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->bin:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v9}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getLine(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;->origin:Ljava/lang/String;

    goto/16 :goto_0

    .line 76
    :cond_3
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->sessionDescription:Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;

    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->bin:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v9}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getLine(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;->sessionName:Ljava/lang/String;

    goto/16 :goto_1

    .line 81
    :cond_4
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->sessionDescription:Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;

    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->bin:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v9}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getLine(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;->sessionInfo:Ljava/lang/String;

    goto/16 :goto_2

    .line 86
    :cond_5
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->sessionDescription:Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;

    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->bin:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v9}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getLine(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;->uri:Ljava/lang/String;

    goto/16 :goto_3

    .line 91
    :cond_6
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->sessionDescription:Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;

    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->bin:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v9}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getLine(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;->email:Ljava/lang/String;

    goto/16 :goto_4

    .line 96
    :cond_7
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->sessionDescription:Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;

    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->bin:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v9}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getLine(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;->phone:Ljava/lang/String;

    goto/16 :goto_5

    .line 101
    :cond_8
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->sessionDescription:Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;

    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->bin:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v9}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getLine(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;->connectionInfo:Ljava/lang/String;

    goto/16 :goto_6

    .line 106
    :cond_9
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->bin:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v8}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getLine(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "line":Ljava/lang/String;
    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 108
    .local v1, "index":I
    if-lez v1, :cond_0

    .line 109
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .local v7, "valueAttribute":Ljava/lang/String;
    const-string/jumbo v8, "AS"

    .line 110
    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string/jumbo v8, "RS"

    .line 112
    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string/jumbo v8, "RR"

    .line 114
    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 117
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->sessionDescription:Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;

    iput-object v7, v8, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;->bandwidthInfo:Ljava/lang/String;

    goto/16 :goto_6

    .line 111
    :cond_a
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->sessionDescription:Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;

    iput-object v7, v8, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;->bandwidthInfo:Ljava/lang/String;

    goto/16 :goto_6

    .line 113
    :cond_b
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->sessionDescription:Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;

    iput-object v7, v8, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;->mSenderBandwidthInfo:Ljava/lang/String;

    goto/16 :goto_6

    .line 115
    :cond_c
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->sessionDescription:Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;

    iput-object v7, v8, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;->mReceiverBandwidthInfo:Ljava/lang/String;

    goto/16 :goto_6

    .line 125
    .end local v1    # "index":I
    .end local v2    # "line":Ljava/lang/String;
    .end local v7    # "valueAttribute":Ljava/lang/String;
    :cond_d
    invoke-direct {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->parseTimeDescription()Lcom/sonymobile/rcs/core/ims/protocol/sdp/TimeDescription;

    move-result-object v5

    .line 126
    .local v5, "timeDescription":Lcom/sonymobile/rcs/core/ims/protocol/sdp/TimeDescription;
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->sessionDescription:Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;

    iget-object v8, v8, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;->timeDescriptions:Ljava/util/Vector;

    invoke-virtual {v8, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 131
    .end local v5    # "timeDescription":Lcom/sonymobile/rcs/core/ims/protocol/sdp/TimeDescription;
    :cond_e
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->sessionDescription:Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;

    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->bin:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v9}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getLine(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;->timezoneAdjustment:Ljava/lang/String;

    goto/16 :goto_8

    .line 136
    :cond_f
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->sessionDescription:Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;

    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->bin:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v9}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getLine(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;->encryptionKey:Ljava/lang/String;

    goto/16 :goto_9

    .line 142
    :cond_10
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->bin:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v8}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getLine(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, "sessionAttribute":Ljava/lang/String;
    invoke-virtual {v4, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 144
    .restart local v1    # "index":I
    if-lez v1, :cond_1

    .line 145
    invoke-virtual {v4, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "name":Ljava/lang/String;
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 147
    .local v6, "value":Ljava/lang/String;
    new-instance v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    invoke-direct {v0, v3, v6}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .local v0, "attribute":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->sessionDescription:Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;

    iget-object v8, v8, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;->sessionAttributes:Ljava/util/Vector;

    invoke-virtual {v8, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_a
.end method

.method private parseTimeDescription()Lcom/sonymobile/rcs/core/ims/protocol/sdp/TimeDescription;
    .locals 4

    .prologue
    .line 159
    new-instance v1, Lcom/sonymobile/rcs/core/ims/protocol/sdp/TimeDescription;

    invoke-direct {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/TimeDescription;-><init>()V

    .line 162
    .local v1, "td":Lcom/sonymobile/rcs/core/ims/protocol/sdp/TimeDescription;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->bin:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getLine(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sonymobile/rcs/core/ims/protocol/sdp/TimeDescription;->timeActive:Ljava/lang/String;

    .line 165
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, v1, Lcom/sonymobile/rcs/core/ims/protocol/sdp/TimeDescription;->repeatTimes:Ljava/util/Vector;

    .line 166
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->bin:Ljava/io/ByteArrayInputStream;

    const-string/jumbo v3, "r="

    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getToken(Ljava/io/ByteArrayInputStream;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 171
    return-object v1

    .line 167
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->bin:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->getLine(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "repeatTime":Ljava/lang/String;
    iget-object v2, v1, Lcom/sonymobile/rcs/core/ims/protocol/sdp/TimeDescription;->repeatTimes:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic getLine(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/Parser;->getLine(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaDescription(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 322
    .local v0, "description":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->mediaDescriptions:Ljava/util/Vector;

    if-nez v3, :cond_1

    .line 331
    .end local v0    # "description":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0    # "description":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    :cond_1
    const/4 v2, 0x0

    .line 323
    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->mediaDescriptions:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 324
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->mediaDescriptions:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    .line 325
    .local v1, "entry":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    iget-object v3, v1, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 323
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 326
    :cond_2
    move-object v0, v1

    .local v0, "description":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    goto :goto_0
.end method

.method public getMediaDescriptions()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->mediaDescriptions:Ljava/util/Vector;

    return-object v0
.end method

.method public getMediaDescriptions(Ljava/lang/String;)Ljava/util/Vector;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 341
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 342
    .local v2, "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;>;"
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->mediaDescriptions:Ljava/util/Vector;

    if-nez v3, :cond_1

    .line 350
    :cond_0
    return-object v2

    :cond_1
    const/4 v1, 0x0

    .line 343
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->mediaDescriptions:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 344
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->mediaDescriptions:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    .line 345
    .local v0, "entry":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
    iget-object v3, v0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 343
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 346
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getSessionAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 307
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->sessionDescription:Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;

    if-nez v0, :cond_0

    .line 310
    return-object v1

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SdpParser;->sessionDescription:Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;->getSessionAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getToken(Ljava/io/ByteArrayInputStream;Ljava/lang/String;)Z
    .locals 1
    .param p1, "x0"    # Ljava/io/ByteArrayInputStream;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-super {p0, p1, p2}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/Parser;->getToken(Ljava/io/ByteArrayInputStream;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic ungetToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/Parser;->ungetToken(Ljava/lang/String;)V

    return-void
.end method
