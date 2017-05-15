.class Lcom/mediatek/wifi/WifiWpsP2pEmSettings$5;
.super Ljava/lang/Object;
.source "WifiWpsP2pEmSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->optionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wifi/WifiWpsP2pEmSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/wifi/WifiWpsP2pEmSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/wifi/WifiWpsP2pEmSettings;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings$5;->this$0:Lcom/mediatek/wifi/WifiWpsP2pEmSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 191
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method
