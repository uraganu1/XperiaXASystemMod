.class Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage$1;
.super Ljava/lang/Object;
.source "GeolocMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 114
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;

    invoke-direct {v0, p1}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 118
    new-array v0, p1, [Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage$1;->newArray(I)[Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;

    move-result-object v0

    return-object v0
.end method
