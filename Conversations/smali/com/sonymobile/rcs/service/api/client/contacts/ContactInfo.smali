.class public Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
.super Ljava/lang/Object;
.source "ContactInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private capabilities:Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

.field private contact:Ljava/lang/String;

.field private presenceInfo:Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

.field private rcsDisplayName:Ljava/lang/String;

.field private rcsStatus:I

.field private rcsStatusTimestamp:J

.field private registrationState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 208
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo$1;

    invoke-direct {v0}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo$1;-><init>()V

    sput-object v0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object v2, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->capabilities:Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    .line 104
    iput-object v2, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->presenceInfo:Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    .line 109
    iput-object v2, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->contact:Ljava/lang/String;

    const/4 v0, 0x0

    .line 114
    iput v0, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->registrationState:I

    const/4 v0, 0x1

    .line 119
    iput v0, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->rcsStatus:I

    const-wide/16 v0, 0x0

    .line 124
    iput-wide v0, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->rcsStatusTimestamp:J

    .line 129
    iput-object v2, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->rcsDisplayName:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object v4, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->capabilities:Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    .line 104
    iput-object v4, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->presenceInfo:Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    .line 109
    iput-object v4, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->contact:Ljava/lang/String;

    .line 114
    iput v1, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->registrationState:I

    const/4 v1, 0x1

    .line 119
    iput v1, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->rcsStatus:I

    const-wide/16 v2, 0x0

    .line 124
    iput-wide v2, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->rcsStatusTimestamp:J

    .line 129
    iput-object v4, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->rcsDisplayName:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    int-to-byte v0, v1

    .line 158
    .local v0, "flag":B
    if-gtz v0, :cond_0

    .line 161
    iput-object v4, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->capabilities:Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    .line 164
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    int-to-byte v0, v1

    .line 165
    if-gtz v0, :cond_1

    .line 168
    iput-object v4, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->presenceInfo:Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    .line 171
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->contact:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->rcsStatus:I

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->rcsStatusTimestamp:J

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->registrationState:I

    .line 178
    return-void

    .line 159
    :cond_0
    sget-object v1, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    iput-object v1, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->capabilities:Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    goto :goto_0

    .line 166
    :cond_1
    sget-object v1, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    iput-object v1, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->presenceInfo:Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    goto :goto_1
.end method

.method public constructor <init>(Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;

    .prologue
    const/4 v2, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object v2, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->capabilities:Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    .line 104
    iput-object v2, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->presenceInfo:Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    .line 109
    iput-object v2, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->contact:Ljava/lang/String;

    const/4 v0, 0x0

    .line 114
    iput v0, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->registrationState:I

    const/4 v0, 0x1

    .line 119
    iput v0, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->rcsStatus:I

    const-wide/16 v0, 0x0

    .line 124
    iput-wide v0, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->rcsStatusTimestamp:J

    .line 129
    iput-object v2, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->rcsDisplayName:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getContact()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->contact:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getRegistrationState()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->registrationState:I

    .line 145
    invoke-virtual {p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getRcsStatus()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->rcsStatus:I

    .line 146
    invoke-virtual {p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getRcsStatusTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->rcsStatusTimestamp:J

    .line 147
    iget-object v0, p1, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->capabilities:Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->capabilities:Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    .line 148
    invoke-virtual {p1}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->getPresenceInfo()Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->presenceInfo:Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    .line 149
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 187
    return v0
.end method

.method public getCapabilities()Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->capabilities:Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    return-object v0
.end method

.method public getContact()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->contact:Ljava/lang/String;

    return-object v0
.end method

.method public getPresenceInfo()Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->presenceInfo:Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    return-object v0
.end method

.method public getRcsContactDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->rcsDisplayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 371
    return-object v0

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->rcsDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getRcsStatus()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->rcsStatus:I

    return v0
.end method

.method public getRcsStatusTimestamp()J
    .locals 2

    .prologue
    .line 323
    iget-wide v0, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->rcsStatusTimestamp:J

    return-wide v0
.end method

.method public getRegistrationState()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->registrationState:I

    return v0
.end method

.method public isRcsContact()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 332
    iget v1, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->rcsStatus:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    :goto_0
    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    iget v1, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->rcsStatus:I

    if-ne v1, v0, :cond_0

    goto :goto_0
.end method

.method public setCapabilities(Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;)V
    .locals 0
    .param p1, "capabilities"    # Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->capabilities:Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    .line 225
    return-void
.end method

.method public setContact(Ljava/lang/String;)V
    .locals 0
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->contact:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public setPresenceInfo(Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->presenceInfo:Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    .line 243
    return-void
.end method

.method public setRcsContactDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->rcsDisplayName:Ljava/lang/String;

    .line 360
    return-void
.end method

.method public setRcsStatus(I)V
    .locals 0
    .param p1, "rcsStatus"    # I

    .prologue
    .line 278
    iput p1, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->rcsStatus:I

    .line 279
    return-void
.end method

.method public setRcsStatusTimestamp(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 314
    iput-wide p1, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->rcsStatusTimestamp:J

    .line 315
    return-void
.end method

.method public setRegistrationState(I)V
    .locals 0
    .param p1, "registrationState"    # I

    .prologue
    .line 296
    iput p1, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->registrationState:I

    .line 297
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Contact="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->contact:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->rcsStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->registrationState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Timestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->rcsStatusTimestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->capabilities:Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    if-nez v1, :cond_0

    .line 347
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->presenceInfo:Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    if-nez v1, :cond_1

    .line 350
    :goto_1
    return-object v0

    .line 345
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Capabilities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->capabilities:Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 348
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Presence="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->presenceInfo:Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 197
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->capabilities:Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 198
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->presenceInfo:Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 199
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->contact:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    iget v0, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->rcsStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget-wide v0, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->rcsStatusTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 202
    iget v0, p0, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->registrationState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    return-void
.end method
