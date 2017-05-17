.class public Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;
.super Ljava/lang/Object;
.source "SessionDescription.java"


# instance fields
.field public bandwidthInfo:Ljava/lang/String;

.field public connectionInfo:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public encryptionKey:Ljava/lang/String;

.field public mReceiverBandwidthInfo:Ljava/lang/String;

.field public mSenderBandwidthInfo:Ljava/lang/String;

.field public origin:Ljava/lang/String;

.field public phone:Ljava/lang/String;

.field public sessionAttributes:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;",
            ">;"
        }
    .end annotation
.end field

.field public sessionInfo:Ljava/lang/String;

.field public sessionName:Ljava/lang/String;

.field public timeDescriptions:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/rcs/core/ims/protocol/sdp/TimeDescription;",
            ">;"
        }
    .end annotation
.end field

.field public timezoneAdjustment:Ljava/lang/String;

.field public uri:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSessionAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 74
    .local v0, "attribute":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;->sessionAttributes:Ljava/util/Vector;

    if-nez v3, :cond_1

    .line 84
    .end local v0    # "attribute":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0    # "attribute":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    :cond_1
    const/4 v2, 0x0

    .line 75
    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;->sessionAttributes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 76
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/SessionDescription;->sessionAttributes:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    .line 77
    .local v1, "entry":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 78
    :cond_2
    move-object v0, v1

    .local v0, "attribute":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    goto :goto_0
.end method
