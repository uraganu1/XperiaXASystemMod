.class final Lcom/mediatek/settingslib/bluetooth/BluetoothDeviceFilterEx$BIPFilter;
.super Lcom/mediatek/settingslib/bluetooth/BluetoothDeviceFilterEx$ClassUuidFilter;
.source "BluetoothDeviceFilterEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settingslib/bluetooth/BluetoothDeviceFilterEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BIPFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/settingslib/bluetooth/BluetoothDeviceFilterEx$ClassUuidFilter;-><init>(Lcom/mediatek/settingslib/bluetooth/BluetoothDeviceFilterEx$ClassUuidFilter;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/settingslib/bluetooth/BluetoothDeviceFilterEx$BIPFilter;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/mediatek/settingslib/bluetooth/BluetoothDeviceFilterEx$BIPFilter;-><init>()V

    return-void
.end method


# virtual methods
.method matches([Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothClass;)Z
    .locals 2
    .param p1, "uuids"    # [Landroid/os/ParcelUuid;
    .param p2, "btClass"    # Landroid/bluetooth/BluetoothClass;

    .prologue
    .line 55
    const-string/jumbo v0, "BluetoothDeviceFilterEx"

    const-string/jumbo v1, "Enter BIPFilter to matches"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    if-eqz p1, :cond_0

    .line 57
    sget-object v0, Lcom/mediatek/settingslib/bluetooth/BluetoothDeviceFilterEx;->BIP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x1

    return v0

    .line 61
    :cond_0
    if-eqz p2, :cond_1

    .line 62
    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v0

    .line 61
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
