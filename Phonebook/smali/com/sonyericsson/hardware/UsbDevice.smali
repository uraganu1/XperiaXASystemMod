.class public final Lcom/sonyericsson/hardware/UsbDevice;
.super Ljava/lang/Object;
.source "UsbDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sonyericsson/hardware/UsbDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_OVER_CURRENT:I = 0x2

.field public static final STATUS_SUPPORTED:I = 0x0

.field public static final STATUS_UNSUPPORTED:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 208
    new-instance v0, Lcom/sonyericsson/hardware/UsbDevice$1;

    invoke-direct {v0}, Lcom/sonyericsson/hardware/UsbDevice$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/hardware/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 188
    return-void
.end method


# virtual methods
.method public addConnection(Lcom/sonyericsson/hardware/UsbDevice;)V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 183
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 200
    if-eq p0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/hardware/UsbDevice;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 171
    return-object v0
.end method

.method public getDeviceClass()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 112
    return v0
.end method

.method public getDeviceProtocol()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 128
    return v0
.end method

.method public getDeviceSubclass()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 120
    return v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, ""

    .line 161
    return-object v0
.end method

.method public getProductId()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 144
    return v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, ""

    .line 153
    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, ""

    .line 179
    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 104
    return v0
.end method

.method public getVendorId()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 136
    return v0
.end method

.method public hasDevicePath(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 205
    return v0
.end method

.method public removeConnection(Lcom/sonyericsson/hardware/UsbDevice;)V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, ""

    .line 195
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 191
    return-void
.end method
