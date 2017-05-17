.class public Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
.super Ljava/lang/Object;
.source "PhotoIcon.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private content:[B

.field private etag:Ljava/lang/String;

.field private height:I

.field private type:Ljava/lang/String;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon$1;

    invoke-direct {v0}, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon$1;-><init>()V

    sput-object v0, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v3, p0, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->content:[B

    const-string/jumbo v1, "image/jpeg"

    .line 38
    iput-object v1, p0, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->type:Ljava/lang/String;

    .line 43
    iput v2, p0, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->width:I

    .line 48
    iput v2, p0, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->height:I

    .line 53
    iput-object v3, p0, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->etag:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 88
    .local v0, "length":I
    if-gtz v0, :cond_0

    .line 92
    iput-object v3, p0, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->content:[B

    .line 94
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->width:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->height:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->type:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->etag:Ljava/lang/String;

    .line 98
    return-void

    .line 89
    :cond_0
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->content:[B

    .line 90
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->content:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_0
.end method

.method public constructor <init>([BIILjava/lang/String;)V
    .locals 3
    .param p1, "content"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "etag"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v2, p0, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->content:[B

    const-string/jumbo v0, "image/jpeg"

    .line 38
    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->type:Ljava/lang/String;

    .line 43
    iput v1, p0, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->width:I

    .line 48
    iput v1, p0, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->height:I

    .line 53
    iput-object v2, p0, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->etag:Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->content:[B

    .line 65
    iput p2, p0, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->width:I

    .line 66
    iput p3, p0, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->height:I

    .line 67
    iput-object p4, p0, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->etag:Ljava/lang/String;

    .line 68
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 107
    return v0
.end method

.method public getContent()[B
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->content:[B

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->height:I

    return v0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 2

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->content:[B

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 196
    return-wide v0

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->content:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->width:I

    return v0
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 0
    .param p1, "etag"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->etag:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->getSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", etag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->etag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->content:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    :goto_0
    iget v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->etag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->content:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->content:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0
.end method
