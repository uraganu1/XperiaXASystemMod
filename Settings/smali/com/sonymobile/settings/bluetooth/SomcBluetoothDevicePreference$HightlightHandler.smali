.class Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference$HightlightHandler;
.super Landroid/os/Handler;
.source "SomcBluetoothDevicePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HightlightHandler"
.end annotation


# instance fields
.field private final mFragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;)V
    .locals 1
    .param p1, "fragment"    # Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 88
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference$HightlightHandler;->mFragment:Ljava/lang/ref/WeakReference;

    .line 87
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 93
    iget-object v1, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference$HightlightHandler;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;

    .line 94
    .local v0, "fragment":Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;
    if-nez v0, :cond_0

    .line 95
    return-void

    .line 97
    :cond_0
    invoke-static {v0}, Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;->-get0(Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 98
    invoke-static {v0}, Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;->-get1(Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    :cond_1
    invoke-static {v0}, Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;->-get2(Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 101
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;->-set0(Lcom/sonymobile/settings/bluetooth/SomcBluetoothDevicePreference;Z)Z

    .line 92
    return-void
.end method
