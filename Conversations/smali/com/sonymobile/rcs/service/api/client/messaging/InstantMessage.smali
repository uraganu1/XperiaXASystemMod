.class public Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
.super Ljava/lang/Object;
.source "InstantMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private displayName:Ljava/lang/String;

.field private imdnDisplayedRequested:Z

.field private imdn_record_route:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private msgId:Ljava/lang/String;

.field private receiptAt:Ljava/util/Date;

.field private remote:Ljava/lang/String;

.field private serverReceiptAt:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 177
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage$1;

    invoke-direct {v0}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage$1;-><init>()V

    sput-object v0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->imdnDisplayedRequested:Z

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->remote:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->displayName:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->message:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->msgId:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->imdnDisplayedRequested:Z

    .line 141
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->receiptAt:Ljava/util/Date;

    .line 142
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->serverReceiptAt:Ljava/util/Date;

    .line 143
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 140
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Date;Ljava/util/Date;Ljava/lang/String;)V
    .locals 1
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "remote"    # Ljava/lang/String;
    .param p3, "displayName"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "imdnDisplayedRequested"    # Z
    .param p6, "currentDate"    # Ljava/util/Date;
    .param p7, "serverReceiptAt"    # Ljava/util/Date;
    .param p8, "route"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->imdnDisplayedRequested:Z

    .line 120
    iput-object p1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->msgId:Ljava/lang/String;

    .line 121
    iput-object p2, p0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->remote:Ljava/lang/String;

    .line 122
    iput-object p3, p0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->displayName:Ljava/lang/String;

    .line 123
    iput-object p4, p0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->message:Ljava/lang/String;

    .line 124
    iput-boolean p5, p0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->imdnDisplayedRequested:Z

    .line 125
    iput-object p6, p0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->receiptAt:Ljava/util/Date;

    .line 126
    iput-object p7, p0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->serverReceiptAt:Ljava/util/Date;

    .line 127
    iput-object p8, p0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->imdn_record_route:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "remote"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "imdnDisplayedRequested"    # Z
    .param p5, "displayName"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->imdnDisplayedRequested:Z

    .line 95
    iput-object p1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->msgId:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->remote:Ljava/lang/String;

    .line 97
    iput-object p5, p0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->displayName:Ljava/lang/String;

    .line 98
    iput-object p3, p0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->message:Ljava/lang/String;

    .line 99
    iput-boolean p4, p0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->imdnDisplayedRequested:Z

    .line 100
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 101
    .local v0, "date":Ljava/util/Date;
    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->receiptAt:Ljava/util/Date;

    .line 102
    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->serverReceiptAt:Ljava/util/Date;

    .line 103
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 152
    return v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->receiptAt:Ljava/util/Date;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getIMDNRecordRoute()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->imdn_record_route:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->msgId:Ljava/lang/String;

    return-object v0
.end method

.method public getRemote()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->remote:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->serverReceiptAt:Ljava/util/Date;

    return-object v0
.end method

.method public getTextMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->message:Ljava/lang/String;

    return-object v0
.end method

.method public isImdnDisplayedRequested()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->imdnDisplayedRequested:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 162
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->remote:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->message:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->msgId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->imdnDisplayedRequested:Z

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->receiptAt:Ljava/util/Date;

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 168
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->serverReceiptAt:Ljava/util/Date;

    if-eqz v0, :cond_2

    .line 171
    :goto_2
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->serverReceiptAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 172
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 166
    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->receiptAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_1

    .line 169
    :cond_2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->serverReceiptAt:Ljava/util/Date;

    goto :goto_2
.end method
