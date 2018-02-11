.class public final Lcom/mediatek/settingslib/bluetooth/BluetoothDeviceFilterEx;
.super Ljava/lang/Object;
.source "BluetoothDeviceFilterEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settingslib/bluetooth/BluetoothDeviceFilterEx$ClassUuidFilter;,
        Lcom/mediatek/settingslib/bluetooth/BluetoothDeviceFilterEx$BIPFilter;,
        Lcom/mediatek/settingslib/bluetooth/BluetoothDeviceFilterEx$BPPFilter;,
        Lcom/mediatek/settingslib/bluetooth/BluetoothDeviceFilterEx$PrxmFilter;,
        Lcom/mediatek/settingslib/bluetooth/BluetoothDeviceFilterEx$1;
    }
.end annotation


# static fields
.field static final BIP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

.field static final BPP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

.field static final PRX_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

.field private static final mFilterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-array v0, v3, [Landroid/os/ParcelUuid;

    sget-object v1, Lcom/mediatek/bluetooth/BluetoothUuidEx;->BppReceiver:Landroid/os/ParcelUuid;

    aput-object v1, v0, v2

    sput-object v0, Lcom/mediatek/settingslib/bluetooth/BluetoothDeviceFilterEx;->BPP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    .line 25
    new-array v0, v3, [Landroid/os/ParcelUuid;

    sget-object v1, Lcom/mediatek/bluetooth/BluetoothUuidEx;->BipResponder:Landroid/os/ParcelUuid;

    aput-object v1, v0, v2

    sput-object v0, Lcom/mediatek/settingslib/bluetooth/BluetoothDeviceFilterEx;->BIP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    .line 27
    new-array v0, v3, [Landroid/os/ParcelUuid;

    sget-object v1, Lcom/mediatek/bluetooth/BluetoothUuidEx;->Proximity:Landroid/os/ParcelUuid;

    aput-object v1, v0, v2

    sput-object v0, Lcom/mediatek/settingslib/bluetooth/BluetoothDeviceFilterEx;->PRX_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    .line 29
    new-instance v0, Lcom/mediatek/settingslib/bluetooth/BluetoothDeviceFilterEx$1;

    invoke-direct {v0}, Lcom/mediatek/settingslib/bluetooth/BluetoothDeviceFilterEx$1;-><init>()V

    sput-object v0, Lcom/mediatek/settingslib/bluetooth/BluetoothDeviceFilterEx;->mFilterMap:Ljava/util/HashMap;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFilterEx(I)Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;
    .locals 2
    .param p0, "filterType"    # I

    .prologue
    .line 39
    sget-object v0, Lcom/mediatek/settingslib/bluetooth/BluetoothDeviceFilterEx;->mFilterMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    return-object v0
.end method
