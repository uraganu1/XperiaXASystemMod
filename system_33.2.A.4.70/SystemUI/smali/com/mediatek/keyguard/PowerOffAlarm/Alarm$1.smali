.class final Lcom/mediatek/keyguard/PowerOffAlarm/Alarm$1;
.super Ljava/lang/Object;
.source "Alarm.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;
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
        "Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 44
    new-instance v0, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;

    invoke-direct {v0, p1}, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 48
    new-array v0, p1, [Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/mediatek/keyguard/PowerOffAlarm/Alarm$1;->newArray(I)[Lcom/mediatek/keyguard/PowerOffAlarm/Alarm;

    move-result-object v0

    return-object v0
.end method
