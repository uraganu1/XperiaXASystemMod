.class public Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;
.super Ljava/lang/Object;
.source "MediaDescription.java"


# instance fields
.field public bandwidthInfo:Ljava/lang/String;

.field public connectionInfo:Ljava/lang/String;

.field public encryptionKey:Ljava/lang/String;

.field public mediaAttributes:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;",
            ">;"
        }
    .end annotation
.end field

.field public mediaTitle:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public payload:Ljava/lang/String;

.field public payloadType:I

.field public port:I

.field public protocol:Ljava/lang/String;

.field public receiverBandwidthInfo:Ljava/lang/String;

.field public senderBandwidthInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "protocol"    # Ljava/lang/String;
    .param p4, "payload"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->mediaAttributes:Ljava/util/Vector;

    .line 114
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->name:Ljava/lang/String;

    .line 115
    iput p2, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->port:I

    .line 116
    iput-object p3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->protocol:Ljava/lang/String;

    .line 117
    iput-object p4, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->payload:Ljava/lang/String;

    .line 119
    :try_start_0
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->payloadType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, -0x1

    .line 121
    iput v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->payloadType:I

    goto :goto_0
.end method


# virtual methods
.method public getMediaAttribute(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 127
    .local v0, "attribute":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->mediaAttributes:Ljava/util/Vector;

    if-nez v3, :cond_1

    .line 137
    .end local v0    # "attribute":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0    # "attribute":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    :cond_1
    const/4 v2, 0x0

    .line 128
    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->mediaAttributes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 129
    iget-object v3, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->mediaAttributes:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;

    .line 130
    .local v1, "entry":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 131
    :cond_2
    move-object v0, v1

    .local v0, "attribute":Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaAttribute;
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MediaDescription [name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", payloadType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->payloadType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->payload:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mediaTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->mediaTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", connectionInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->connectionInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", bandwidthInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->bandwidthInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", senderBandwidthInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->senderBandwidthInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", receiverBandwidthInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->receiverBandwidthInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", encryptionKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->encryptionKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mediaAttributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sdp/MediaDescription;->mediaAttributes:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
