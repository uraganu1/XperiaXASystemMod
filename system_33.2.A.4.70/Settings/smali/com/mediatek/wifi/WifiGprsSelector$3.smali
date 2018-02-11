.class Lcom/mediatek/wifi/WifiGprsSelector$3;
.super Landroid/telephony/PhoneStateListener;
.source "WifiGprsSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wifi/WifiGprsSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wifi/WifiGprsSelector;


# direct methods
.method constructor <init>(Lcom/mediatek/wifi/WifiGprsSelector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/wifi/WifiGprsSelector;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/mediatek/wifi/WifiGprsSelector$3;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v0, 0x0

    .line 199
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 201
    iget-object v1, p0, Lcom/mediatek/wifi/WifiGprsSelector$3;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    .line 202
    iget-object v2, p0, Lcom/mediatek/wifi/WifiGprsSelector$3;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-static {v2}, Lcom/mediatek/wifi/WifiGprsSelector;->-get7(Lcom/mediatek/wifi/WifiGprsSelector;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 201
    :cond_0
    invoke-static {v1, v0}, Lcom/mediatek/wifi/WifiGprsSelector;->-set1(Lcom/mediatek/wifi/WifiGprsSelector;Z)Z

    .line 198
    return-void
.end method
