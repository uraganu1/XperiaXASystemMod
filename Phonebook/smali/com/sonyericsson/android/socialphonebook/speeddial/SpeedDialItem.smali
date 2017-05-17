.class public Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;
.super Ljava/lang/Object;
.source "SpeedDialItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem$1;
    }
.end annotation


# instance fields
.field final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContactId:J

.field private mContactName:Ljava/lang/String;

.field private mLookup:Ljava/lang/String;

.field private mPhoneDataId:J

.field private mPhoneLabel:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field private mPhoneType:I

.field private mPhotoId:J

.field private mSpeedDialItemId:J

.field private mSpeedDialPosition:I


# direct methods
.method public constructor <init>(JJLjava/lang/String;ILjava/lang/String;ILjava/lang/String;J)V
    .locals 1
    .param p1, "speedDialItemId"    # J
    .param p3, "phoneDataId"    # J
    .param p5, "contactName"    # Ljava/lang/String;
    .param p6, "speedDialPosition"    # I
    .param p7, "phoneNumber"    # Ljava/lang/String;
    .param p8, "phoneType"    # I
    .param p9, "phoneLabel"    # Ljava/lang/String;
    .param p10, "photoId"    # J

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem$1;-><init>(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;)V

    .line 17
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 94
    iput-wide p1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mSpeedDialItemId:J

    .line 95
    iput-wide p3, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mPhoneDataId:J

    .line 96
    iput-object p5, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mContactName:Ljava/lang/String;

    .line 97
    iput p6, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mSpeedDialPosition:I

    .line 98
    iput-object p7, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mPhoneNumber:Ljava/lang/String;

    .line 99
    iput p8, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mPhoneType:I

    .line 100
    iput-object p9, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mPhoneLabel:Ljava/lang/String;

    .line 101
    iput-wide p10, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mPhotoId:J

    .line 93
    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;ILjava/lang/String;ILjava/lang/String;JJLjava/lang/String;)V
    .locals 0
    .param p1, "speedDialItemId"    # J
    .param p3, "phoneDataId"    # J
    .param p5, "contactName"    # Ljava/lang/String;
    .param p6, "speedDialPosition"    # I
    .param p7, "phoneNumber"    # Ljava/lang/String;
    .param p8, "phoneType"    # I
    .param p9, "phoneLabel"    # Ljava/lang/String;
    .param p10, "photoId"    # J
    .param p12, "contactId"    # J
    .param p14, "lookup"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct/range {p0 .. p11}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;-><init>(JJLjava/lang/String;ILjava/lang/String;ILjava/lang/String;J)V

    .line 74
    iput-wide p12, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mContactId:J

    .line 75
    iput-object p14, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mLookup:Ljava/lang/String;

    .line 68
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem$1;-><init>(Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;)V

    .line 17
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mSpeedDialItemId:J

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mPhoneDataId:J

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mContactName:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mSpeedDialPosition:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mPhoneNumber:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mPhoneType:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mPhoneLabel:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mContactId:J

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mLookup:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mPhotoId:J

    .line 104
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public getContactId()J
    .locals 2

    .prologue
    .line 187
    iget-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mContactId:J

    return-wide v0
.end method

.method public getContactName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mContactName:Ljava/lang/String;

    return-object v0
.end method

.method public getLookup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mLookup:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneDataId()J
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mPhoneDataId:J

    return-wide v0
.end method

.method public getPhoneLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mPhoneLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mPhoneType:I

    return v0
.end method

.method public getPhotoId()J
    .locals 2

    .prologue
    .line 174
    iget-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mPhotoId:J

    return-wide v0
.end method

.method public getSpeedDialItemId()J
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mSpeedDialItemId:J

    return-wide v0
.end method

.method public getSpeedDialPosition()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mSpeedDialPosition:I

    return v0
.end method

.method public setContactId(J)V
    .locals 1
    .param p1, "contactId"    # J

    .prologue
    .line 191
    iput-wide p1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mContactId:J

    .line 190
    return-void
.end method

.method public setContactName(Ljava/lang/String;)V
    .locals 0
    .param p1, "contactName"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mContactName:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setLookup(Ljava/lang/String;)V
    .locals 0
    .param p1, "lookup"    # Ljava/lang/String;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mLookup:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setPhoneDataId(J)V
    .locals 1
    .param p1, "phoneDataId"    # J

    .prologue
    .line 130
    iput-wide p1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mPhoneDataId:J

    .line 129
    return-void
.end method

.method public setPhoneLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneLabel"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mPhoneLabel:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mPhoneNumber:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setPhoneType(I)V
    .locals 0
    .param p1, "phoneType"    # I

    .prologue
    .line 162
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mPhoneType:I

    .line 161
    return-void
.end method

.method public setPhotoId(J)V
    .locals 1
    .param p1, "photoId"    # J

    .prologue
    .line 178
    iput-wide p1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mPhotoId:J

    .line 177
    return-void
.end method

.method public setSpeedDialItemId(J)V
    .locals 1
    .param p1, "speedDialItemId"    # J

    .prologue
    .line 122
    iput-wide p1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mSpeedDialItemId:J

    .line 121
    return-void
.end method

.method public setSpeedDialPosition(I)V
    .locals 0
    .param p1, "speedDialPosition"    # I

    .prologue
    .line 146
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mSpeedDialPosition:I

    .line 145
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "destination"    # Landroid/os/Parcel;
    .param p2, "ignored"    # I

    .prologue
    .line 204
    iget-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mSpeedDialItemId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 205
    iget-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mPhoneDataId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mContactName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mSpeedDialPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mPhoneType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mPhoneLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    iget-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mContactId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 212
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mLookup:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    iget-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialItem;->mPhotoId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 203
    return-void
.end method
