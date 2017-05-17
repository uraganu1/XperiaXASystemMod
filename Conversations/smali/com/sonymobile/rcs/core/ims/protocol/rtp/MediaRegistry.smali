.class public Lcom/sonymobile/rcs/core/ims/protocol/rtp/MediaRegistry;
.super Ljava/lang/Object;
.source "MediaRegistry.java"


# static fields
.field private static SUPPORTED_CODECS:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/rcs/core/ims/protocol/rtp/format/Format;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sonymobile/rcs/core/ims/protocol/rtp/MediaRegistry;->SUPPORTED_CODECS:Ljava/util/Hashtable;

    .line 44
    sget-object v0, Lcom/sonymobile/rcs/core/ims/protocol/rtp/MediaRegistry;->SUPPORTED_CODECS:Ljava/util/Hashtable;

    const-string/jumbo v1, "H264"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sonymobile/rcs/core/ims/protocol/rtp/format/video/H264VideoFormat;

    invoke-direct {v2}, Lcom/sonymobile/rcs/core/ims/protocol/rtp/format/video/H264VideoFormat;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/sonymobile/rcs/core/ims/protocol/rtp/MediaRegistry;->SUPPORTED_CODECS:Ljava/util/Hashtable;

    const-string/jumbo v1, "AMR-WB"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sonymobile/rcs/core/ims/protocol/rtp/format/audio/AmrWbAudioFormat;

    invoke-direct {v2}, Lcom/sonymobile/rcs/core/ims/protocol/rtp/format/audio/AmrWbAudioFormat;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSupportedVideoFormats()Ljava/util/Vector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/rcs/core/ims/protocol/rtp/format/video/VideoFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 55
    .local v2, "list":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/rcs/core/ims/protocol/rtp/format/video/VideoFormat;>;"
    sget-object v3, Lcom/sonymobile/rcs/core/ims/protocol/rtp/MediaRegistry;->SUPPORTED_CODECS:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/sonymobile/rcs/core/ims/protocol/rtp/format/Format;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_1

    .line 61
    return-object v2

    .line 56
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/protocol/rtp/format/Format;

    .line 57
    .local v1, "fmt":Lcom/sonymobile/rcs/core/ims/protocol/rtp/format/Format;
    instance-of v3, v1, Lcom/sonymobile/rcs/core/ims/protocol/rtp/format/video/VideoFormat;

    if-eqz v3, :cond_0

    .line 58
    check-cast v1, Lcom/sonymobile/rcs/core/ims/protocol/rtp/format/video/VideoFormat;

    .end local v1    # "fmt":Lcom/sonymobile/rcs/core/ims/protocol/rtp/format/Format;
    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static isCodecSupported(Ljava/lang/String;)Z
    .locals 3
    .param p0, "codec"    # Ljava/lang/String;

    .prologue
    .line 97
    sget-object v1, Lcom/sonymobile/rcs/core/ims/protocol/rtp/MediaRegistry;->SUPPORTED_CODECS:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/rcs/core/ims/protocol/rtp/format/Format;

    .line 98
    .local v0, "format":Lcom/sonymobile/rcs/core/ims/protocol/rtp/format/Format;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
