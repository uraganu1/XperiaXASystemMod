.class public Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;
.super Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
.source "GeolocMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private geoloc:Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage$1;

    invoke-direct {v0}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage$1;-><init>()V

    sput-object v0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;->geoloc:Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;

    .line 85
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;

    invoke-direct {v0, p1}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;->geoloc:Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;ZLjava/lang/String;)V
    .locals 6
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "remote"    # Ljava/lang/String;
    .param p3, "geoloc"    # Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;
    .param p4, "imdnDisplayedRequested"    # Z
    .param p5, "displayName"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p3}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->formatGeolocToStr(Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;->geoloc:Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;

    .line 56
    iput-object p3, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;->geoloc:Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;ZLjava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "remote"    # Ljava/lang/String;
    .param p3, "geoloc"    # Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;
    .param p4, "imdnDisplayedRequested"    # Z
    .param p5, "currentDate"    # Ljava/util/Date;
    .param p6, "serverReceiptAt"    # Ljava/util/Date;
    .param p7, "displayName"    # Ljava/lang/String;
    .param p8, "route"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-static {p3}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->formatGeolocToStr(Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p7

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Date;Ljava/util/Date;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;->geoloc:Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;

    .line 75
    iput-object p3, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;->geoloc:Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;

    .line 76
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 95
    return v0
.end method

.method public getGeoloc()Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;->geoloc:Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 105
    invoke-super {p0, p1, p2}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->writeToParcel(Landroid/os/Parcel;I)V

    .line 106
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;->geoloc:Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->writeToParcel(Landroid/os/Parcel;I)V

    .line 107
    return-void
.end method
