.class Lcom/bumptech/glide/load/engine/EngineKey;
.super Ljava/lang/Object;
.source "EngineKey.java"

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# instance fields
.field private final cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

.field private final decoder:Lcom/bumptech/glide/load/ResourceDecoder;

.field private final encoder:Lcom/bumptech/glide/load/ResourceEncoder;

.field private hashCode:I

.field private final height:I

.field private final id:Ljava/lang/String;

.field private originalKey:Lcom/bumptech/glide/load/Key;

.field private final signature:Lcom/bumptech/glide/load/Key;

.field private final sourceEncoder:Lcom/bumptech/glide/load/Encoder;

.field private stringKey:Ljava/lang/String;

.field private final transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

.field private final transformation:Lcom/bumptech/glide/load/Transformation;

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/ResourceEncoder;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/load/Encoder;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "signature"    # Lcom/bumptech/glide/load/Key;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "cacheDecoder"    # Lcom/bumptech/glide/load/ResourceDecoder;
    .param p6, "decoder"    # Lcom/bumptech/glide/load/ResourceDecoder;
    .param p7, "transformation"    # Lcom/bumptech/glide/load/Transformation;
    .param p8, "encoder"    # Lcom/bumptech/glide/load/ResourceEncoder;
    .param p9, "transcoder"    # Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
    .param p10, "sourceEncoder"    # Lcom/bumptech/glide/load/Encoder;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->id:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->signature:Lcom/bumptech/glide/load/Key;

    .line 36
    iput p3, p0, Lcom/bumptech/glide/load/engine/EngineKey;->width:I

    .line 37
    iput p4, p0, Lcom/bumptech/glide/load/engine/EngineKey;->height:I

    .line 38
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 39
    iput-object p6, p0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 40
    iput-object p7, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    .line 41
    iput-object p8, p0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    .line 42
    iput-object p9, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    .line 43
    iput-object p10, p0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    .line 44
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    if-eq p0, p1, :cond_1

    .line 58
    if-nez p1, :cond_2

    .line 59
    :cond_0
    return v2

    .line 56
    :cond_1
    return v3

    .line 58
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v1, v4, :cond_0

    move-object v0, p1

    .line 62
    check-cast v0, Lcom/bumptech/glide/load/engine/EngineKey;

    .line 64
    .local v0, "engineKey":Lcom/bumptech/glide/load/engine/EngineKey;
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/bumptech/glide/load/engine/EngineKey;->id:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 66
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->signature:Lcom/bumptech/glide/load/Key;

    iget-object v4, v0, Lcom/bumptech/glide/load/engine/EngineKey;->signature:Lcom/bumptech/glide/load/Key;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 68
    iget v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->height:I

    iget v4, v0, Lcom/bumptech/glide/load/engine/EngineKey;->height:I

    if-ne v1, v4, :cond_b

    .line 70
    iget v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->width:I

    iget v4, v0, Lcom/bumptech/glide/load/engine/EngineKey;->width:I

    if-ne v1, v4, :cond_c

    .line 72
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    if-eqz v1, :cond_d

    move v1, v2

    :goto_0
    iget-object v4, v0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    if-eqz v4, :cond_e

    move v4, v2

    :goto_1
    xor-int/2addr v1, v4

    if-nez v1, :cond_f

    .line 74
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    if-nez v1, :cond_10

    .line 76
    :cond_3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v1, :cond_11

    move v1, v2

    :goto_2
    iget-object v4, v0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v4, :cond_12

    move v4, v2

    :goto_3
    xor-int/2addr v1, v4

    if-nez v1, :cond_13

    .line 78
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-nez v1, :cond_14

    .line 80
    :cond_4
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v1, :cond_15

    move v1, v2

    :goto_4
    iget-object v4, v0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v4, :cond_16

    move v4, v2

    :goto_5
    xor-int/2addr v1, v4

    if-nez v1, :cond_17

    .line 82
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-nez v1, :cond_18

    .line 84
    :cond_5
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    if-eqz v1, :cond_19

    move v1, v2

    :goto_6
    iget-object v4, v0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    if-eqz v4, :cond_1a

    move v4, v2

    :goto_7
    xor-int/2addr v1, v4

    if-nez v1, :cond_1b

    .line 86
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    if-nez v1, :cond_1c

    .line 88
    :cond_6
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    if-eqz v1, :cond_1d

    move v1, v2

    :goto_8
    iget-object v4, v0, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    if-eqz v4, :cond_1e

    move v4, v2

    :goto_9
    xor-int/2addr v1, v4

    if-nez v1, :cond_1f

    .line 90
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    if-nez v1, :cond_20

    .line 92
    :cond_7
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    if-eqz v1, :cond_21

    move v1, v2

    :goto_a
    iget-object v4, v0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    if-eqz v4, :cond_22

    move v4, v2

    :goto_b
    xor-int/2addr v1, v4

    if-nez v1, :cond_23

    .line 94
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    if-nez v1, :cond_24

    .line 97
    :cond_8
    return v3

    .line 65
    :cond_9
    return v2

    .line 67
    :cond_a
    return v2

    .line 69
    :cond_b
    return v2

    .line 71
    :cond_c
    return v2

    :cond_d
    move v1, v3

    .line 72
    goto :goto_0

    :cond_e
    move v4, v3

    goto :goto_1

    .line 73
    :cond_f
    return v2

    .line 74
    :cond_10
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    invoke-interface {v1}, Lcom/bumptech/glide/load/Transformation;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    invoke-interface {v4}, Lcom/bumptech/glide/load/Transformation;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 75
    return v2

    :cond_11
    move v1, v3

    .line 76
    goto :goto_2

    :cond_12
    move v4, v3

    goto :goto_3

    .line 77
    :cond_13
    return v2

    .line 78
    :cond_14
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v1}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v4}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 79
    return v2

    :cond_15
    move v1, v3

    .line 80
    goto :goto_4

    :cond_16
    move v4, v3

    goto :goto_5

    .line 81
    :cond_17
    return v2

    .line 82
    :cond_18
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v1}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v4}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 83
    return v2

    :cond_19
    move v1, v3

    .line 84
    goto :goto_6

    :cond_1a
    move v4, v3

    goto :goto_7

    .line 85
    :cond_1b
    return v2

    .line 86
    :cond_1c
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    invoke-interface {v1}, Lcom/bumptech/glide/load/ResourceEncoder;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    invoke-interface {v4}, Lcom/bumptech/glide/load/ResourceEncoder;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 87
    return v2

    :cond_1d
    move v1, v3

    .line 88
    goto/16 :goto_8

    :cond_1e
    move v4, v3

    goto/16 :goto_9

    .line 89
    :cond_1f
    return v2

    .line 90
    :cond_20
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    invoke-interface {v1}, Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    invoke-interface {v4}, Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 91
    return v2

    :cond_21
    move v1, v3

    .line 92
    goto/16 :goto_a

    :cond_22
    move v4, v3

    goto/16 :goto_b

    .line 93
    :cond_23
    return v2

    .line 94
    :cond_24
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    invoke-interface {v1}, Lcom/bumptech/glide/load/Encoder;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    invoke-interface {v4}, Lcom/bumptech/glide/load/Encoder;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 95
    return v2
.end method

.method public getOriginalKey()Lcom/bumptech/glide/load/Key;
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->originalKey:Lcom/bumptech/glide/load/Key;

    if-eqz v0, :cond_0

    .line 50
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->originalKey:Lcom/bumptech/glide/load/Key;

    return-object v0

    .line 48
    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/engine/OriginalKey;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->signature:Lcom/bumptech/glide/load/Key;

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/engine/OriginalKey;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/Key;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->originalKey:Lcom/bumptech/glide/load/Key;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 102
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    if-eqz v0, :cond_0

    .line 114
    :goto_0
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    return v0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 104
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->signature:Lcom/bumptech/glide/load/Key;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 105
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->width:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 106
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->height:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 107
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 108
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 109
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 110
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 111
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 112
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    if-nez v2, :cond_6

    :goto_6
    add-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    invoke-interface {v0}, Lcom/bumptech/glide/load/Transformation;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    .line 110
    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/ResourceEncoder;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    .line 111
    :cond_5
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_5

    .line 112
    :cond_6
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    invoke-interface {v1}, Lcom/bumptech/glide/load/Encoder;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x2b

    const/16 v2, 0x27

    .line 119
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->stringKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 156
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->stringKey:Ljava/lang/String;

    return-object v0

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "EngineKey{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->signature:Lcom/bumptech/glide/load/Key;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "+["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    if-nez v0, :cond_4

    const-string/jumbo v0, ""

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    if-nez v0, :cond_5

    const-string/jumbo v0, ""

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    if-nez v0, :cond_6

    const-string/jumbo v0, ""

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->stringKey:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    invoke-interface {v0}, Lcom/bumptech/glide/load/Transformation;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/ResourceEncoder;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transcoder:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    invoke-interface {v0}, Lcom/bumptech/glide/load/Encoder;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 3
    .param p1, "messageDigest"    # Ljava/security/MessageDigest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 161
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->width:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/engine/EngineKey;->height:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 165
    .local v0, "dimensions":[B
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->signature:Lcom/bumptech/glide/load/Key;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/Key;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 166
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->id:Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 167
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 168
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-nez v1, :cond_0

    const-string/jumbo v1, ""

    :goto_0
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 169
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    if-nez v1, :cond_1

    const-string/jumbo v1, ""

    :goto_1
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 170
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    if-nez v1, :cond_2

    const-string/jumbo v1, ""

    :goto_2
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 171
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    if-nez v1, :cond_3

    const-string/jumbo v1, ""

    :goto_3
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 173
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    if-nez v1, :cond_4

    const-string/jumbo v1, ""

    :goto_4
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 174
    return-void

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v1}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v1}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 170
    :cond_2
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformation:Lcom/bumptech/glide/load/Transformation;

    invoke-interface {v1}, Lcom/bumptech/glide/load/Transformation;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 171
    :cond_3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    invoke-interface {v1}, Lcom/bumptech/glide/load/ResourceEncoder;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 173
    :cond_4
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->sourceEncoder:Lcom/bumptech/glide/load/Encoder;

    invoke-interface {v1}, Lcom/bumptech/glide/load/Encoder;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_4
.end method
