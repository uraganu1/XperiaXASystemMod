.class public Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;
.super Ljava/lang/Object;
.source "SdpOrientationExtension.java"


# static fields
.field private static logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# instance fields
.field private extensionId:I

.field private uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;

    .line 60
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "extensionId"    # I
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p1, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;->extensionId:I

    .line 70
    iput-object p2, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;->uri:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public static create(Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;)Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;
    .locals 5
    .param p0, "mediaAttribute"    # Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    .prologue
    .line 102
    if-nez p0, :cond_1

    .line 103
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Invalid media attribute"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 107
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "values":[Ljava/lang/String;
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .end local v1    # "values":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 110
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Invalid media attribute value"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static create(Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;)Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;
    .locals 5
    .param p0, "videoMediaDescription"    # Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;

    .prologue
    const/4 v4, 0x0

    .line 123
    if-eqz p0, :cond_0

    const-string/jumbo v2, "extmap"

    .line 127
    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    move-result-object v0

    .line 129
    .local v0, "attribute":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    if-nez v0, :cond_1

    .line 137
    :goto_0
    return-object v4

    .line 124
    .end local v0    # "attribute":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Invalid videoMediaDescription"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 131
    .restart local v0    # "attribute":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    :cond_1
    :try_start_0
    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;->create(Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;)Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    .line 133
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Invalid SDP video orientation extension"

    invoke-virtual {v2, v3, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public getExtensionId()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/service/richcall/video/SdpOrientationExtension;->extensionId:I

    return v0
.end method
