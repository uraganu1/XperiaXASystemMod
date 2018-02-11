.class Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings$1;
.super Ljava/lang/Object;
.source "SomcBluetoothSettings.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings$1;->this$0:Lcom/sonymobile/settings/bluetooth/SomcBluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothManagerInitialized(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 2
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "bluetoothManager"    # Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .prologue
    .line 43
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    .line 44
    const/16 v1, 0xa

    .line 43
    if-ne v0, v1, :cond_0

    .line 45
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    .line 42
    :cond_0
    return-void
.end method
