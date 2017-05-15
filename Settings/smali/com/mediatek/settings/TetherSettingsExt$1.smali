.class Lcom/mediatek/settings/TetherSettingsExt$1;
.super Ljava/lang/Object;
.source "TetherSettingsExt.java"

# interfaces
.implements Lcom/mediatek/bluetooth/BluetoothDun$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/TetherSettingsExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/TetherSettingsExt;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/TetherSettingsExt;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/settings/TetherSettingsExt;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/mediatek/settings/TetherSettingsExt$1;->this$0:Lcom/mediatek/settings/TetherSettingsExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Lcom/mediatek/bluetooth/BluetoothDun;)V
    .locals 1
    .param p1, "proxy"    # Lcom/mediatek/bluetooth/BluetoothDun;

    .prologue
    .line 480
    iget-object v0, p0, Lcom/mediatek/settings/TetherSettingsExt$1;->this$0:Lcom/mediatek/settings/TetherSettingsExt;

    invoke-static {v0}, Lcom/mediatek/settings/TetherSettingsExt;->-get0(Lcom/mediatek/settings/TetherSettingsExt;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 479
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 483
    iget-object v0, p0, Lcom/mediatek/settings/TetherSettingsExt$1;->this$0:Lcom/mediatek/settings/TetherSettingsExt;

    invoke-static {v0}, Lcom/mediatek/settings/TetherSettingsExt;->-get0(Lcom/mediatek/settings/TetherSettingsExt;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 484
    iget-object v0, p0, Lcom/mediatek/settings/TetherSettingsExt$1;->this$0:Lcom/mediatek/settings/TetherSettingsExt;

    invoke-static {v0, v1}, Lcom/mediatek/settings/TetherSettingsExt;->-set0(Lcom/mediatek/settings/TetherSettingsExt;Lcom/mediatek/bluetooth/BluetoothDun;)Lcom/mediatek/bluetooth/BluetoothDun;

    .line 482
    return-void
.end method
