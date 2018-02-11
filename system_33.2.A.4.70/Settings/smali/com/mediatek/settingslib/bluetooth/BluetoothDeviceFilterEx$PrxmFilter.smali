.class final Lcom/mediatek/settingslib/bluetooth/BluetoothDeviceFilterEx$PrxmFilter;
.super Lcom/mediatek/settingslib/bluetooth/BluetoothDeviceFilterEx$ClassUuidFilter;
.source "BluetoothDeviceFilterEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settingslib/bluetooth/BluetoothDeviceFilterEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrxmFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/settingslib/bluetooth/BluetoothDeviceFilterEx$ClassUuidFilter;-><init>(Lcom/mediatek/settingslib/bluetooth/BluetoothDeviceFilterEx$ClassUuidFilter;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/settingslib/bluetooth/BluetoothDeviceFilterEx$PrxmFilter;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/mediatek/settingslib/bluetooth/BluetoothDeviceFilterEx$PrxmFilter;-><init>()V

    return-void
.end method


# virtual methods
.method matches([Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothClass;)Z
    .locals 2
    .param p1, "uuids"    # [Landroid/os/ParcelUuid;
    .param p2, "btClass"    # Landroid/bluetooth/BluetoothClass;

    .prologue
    .line 85
    const-string/jumbo v0, "BluetoothDeviceFilterEx"

    const-string/jumbo v1, "Enter PrxmFilter to matches"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    if-eqz p1, :cond_0

    .line 87
    sget-object v0, Lcom/mediatek/settingslib/bluetooth/BluetoothDeviceFilterEx;->PRX_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x1

    return v0

    .line 91
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
