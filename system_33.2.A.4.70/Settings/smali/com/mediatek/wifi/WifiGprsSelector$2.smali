.class Lcom/mediatek/wifi/WifiGprsSelector$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/mediatek/wifi/WifiGprsSelector;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/wifi/WifiGprsSelector;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/mediatek/wifi/WifiGprsSelector$2;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 190
    const-string/jumbo v0, "@M_WifiGprsSelector"

    const-string/jumbo v1, "Gprs connection changed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$2;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    iget-object v1, p0, Lcom/mediatek/wifi/WifiGprsSelector$2;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-static {v1}, Lcom/mediatek/wifi/WifiGprsSelector;->-wrap0(Lcom/mediatek/wifi/WifiGprsSelector;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/wifi/WifiGprsSelector;->-set4(Lcom/mediatek/wifi/WifiGprsSelector;I)I

    .line 192
    iget-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$2;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-static {v0}, Lcom/mediatek/wifi/WifiGprsSelector;->-wrap5(Lcom/mediatek/wifi/WifiGprsSelector;)V

    .line 189
    return-void
.end method
