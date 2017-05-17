.class Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush$1;
.super Ljava/lang/Object;
.source "GeolocPush.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;
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
        "Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 143
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;

    invoke-direct {v0, p1}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 147
    new-array v0, p1, [Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush$1;->newArray(I)[Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;

    move-result-object v0

    return-object v0
.end method
