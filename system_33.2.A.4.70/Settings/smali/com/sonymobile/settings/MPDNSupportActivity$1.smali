.class Lcom/sonymobile/settings/MPDNSupportActivity$1;
.super Ljava/lang/Object;
.source "MPDNSupportActivity.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/MPDNSupportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/MPDNSupportActivity;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/MPDNSupportActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/MPDNSupportActivity;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/sonymobile/settings/MPDNSupportActivity$1;->this$0:Lcom/sonymobile/settings/MPDNSupportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonymobile/settings/MPDNSupportActivity$1;->this$0:Lcom/sonymobile/settings/MPDNSupportActivity;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    invoke-static {v0, p2}, Lcom/sonymobile/settings/MPDNSupportActivity;->-set0(Lcom/sonymobile/settings/MPDNSupportActivity;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 127
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sonymobile/settings/MPDNSupportActivity$1;->this$0:Lcom/sonymobile/settings/MPDNSupportActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonymobile/settings/MPDNSupportActivity;->-set0(Lcom/sonymobile/settings/MPDNSupportActivity;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 130
    return-void
.end method
