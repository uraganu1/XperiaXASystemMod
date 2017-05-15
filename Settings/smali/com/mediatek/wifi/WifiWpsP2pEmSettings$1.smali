.class Lcom/mediatek/wifi/WifiWpsP2pEmSettings$1;
.super Landroid/net/wifi/WifiManager$WpsCallback;
.source "WifiWpsP2pEmSettings.java"


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
    .line 127
    iput-object p1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings$1;->this$0:Lcom/mediatek/wifi/WifiWpsP2pEmSettings;

    invoke-direct {p0}, Landroid/net/wifi/WifiManager$WpsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 132
    return-void
.end method

.method public onStarted(Ljava/lang/String;)V
    .locals 0
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 128
    return-void
.end method

.method public onSucceeded()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method
