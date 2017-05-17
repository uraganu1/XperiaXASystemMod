.class public Lcom/android/mms/model/CarrierContentRestriction;
.super Ljava/lang/Object;
.source "CarrierContentRestriction.java"

# interfaces
.implements Lcom/android/mms/model/ContentRestriction;


# static fields
.field private static final sSupportedAudioTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSupportedImageTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSupportedVideoTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    invoke-static {}, Lcom/google/android/mms/ContentType;->getImageTypes()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedImageTypes:Ljava/util/ArrayList;

    .line 52
    invoke-static {}, Lcom/google/android/mms/ContentType;->getAudioTypes()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedAudioTypes:Ljava/util/ArrayList;

    .line 53
    sget-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedAudioTypes:Ljava/util/ArrayList;

    const-string/jumbo v1, "audio/ogg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-static {}, Lcom/google/android/mms/ContentType;->getVideoTypes()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedVideoTypes:Ljava/util/ArrayList;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkAudioContentType(Ljava/lang/String;)V
    .locals 3
    .param p1, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 94
    if-nez p1, :cond_0

    .line 95
    new-instance v0, Lcom/android/mms/ContentRestrictionException;

    const-string/jumbo v1, "Null content type to be check"

    invoke-direct {v0, v1}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    sget-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedAudioTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    new-instance v0, Lcom/android/mms/UnsupportContentTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported audio content type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mms/UnsupportContentTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1
    return-void
.end method

.method public checkImageContentType(Ljava/lang/String;)V
    .locals 3
    .param p1, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 84
    new-instance v0, Lcom/android/mms/ContentRestrictionException;

    const-string/jumbo v1, "Null content type to be check"

    invoke-direct {v0, v1}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    sget-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedImageTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    new-instance v0, Lcom/android/mms/UnsupportContentTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported image content type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mms/UnsupportContentTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    return-void
.end method

.method public checkMessageSize(IILandroid/content/ContentResolver;)V
    .locals 5
    .param p1, "messageSize"    # I
    .param p2, "increaseSize"    # I
    .param p3, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 62
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 63
    :cond_0
    new-instance v2, Lcom/android/mms/ContentRestrictionException;

    const-string/jumbo v3, "Negative message size or increase size"

    invoke-direct {v2, v3}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :cond_1
    add-int v1, p1, p2

    .line 66
    .local v1, "newSize":I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v0

    .line 67
    .local v0, "maxMessageSize":I
    if-ltz v1, :cond_2

    if-le v1, v0, :cond_3

    .line 68
    :cond_2
    new-instance v2, Lcom/android/mms/ExceedMessageSizeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exceed message size limitationexpect:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 69
    const-string/jumbo v4, ", actually:"

    .line 68
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    :cond_3
    return-void
.end method

.method public checkResolution(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v0

    if-gt p1, v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v0

    if-le p2, v0, :cond_2

    .line 77
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v0

    if-gt p1, v0, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v0

    if-le p2, v0, :cond_2

    .line 78
    :cond_1
    new-instance v0, Lcom/android/mms/ResolutionException;

    const-string/jumbo v1, "content resolution exceeds restriction."

    invoke-direct {v0, v1}, Lcom/android/mms/ResolutionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_2
    return-void
.end method

.method public checkVideoContentType(Ljava/lang/String;)V
    .locals 3
    .param p1, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 106
    new-instance v0, Lcom/android/mms/ContentRestrictionException;

    const-string/jumbo v1, "Null content type to be check"

    invoke-direct {v0, v1}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    sget-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedVideoTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    new-instance v0, Lcom/android/mms/UnsupportContentTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported video content type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mms/UnsupportContentTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    return-void
.end method
