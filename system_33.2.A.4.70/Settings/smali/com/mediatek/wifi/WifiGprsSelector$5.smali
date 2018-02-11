.class Lcom/mediatek/wifi/WifiGprsSelector$5;
.super Landroid/os/Handler;
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
    .line 211
    iput-object p1, p0, Lcom/mediatek/wifi/WifiGprsSelector$5;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v3, 0x3e9

    const/4 v2, 0x0

    .line 214
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 213
    :goto_0
    return-void

    .line 216
    :pswitch_0
    const-string/jumbo v0, "@M_WifiGprsSelector"

    const-string/jumbo v1, "attach time out......"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$5;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-virtual {v0}, Lcom/mediatek/wifi/WifiGprsSelector;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$5;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-static {v0, v3}, Lcom/mediatek/wifi/WifiGprsSelector;->-wrap2(Lcom/mediatek/wifi/WifiGprsSelector;I)V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$5;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-static {v0, v2}, Lcom/mediatek/wifi/WifiGprsSelector;->-set2(Lcom/mediatek/wifi/WifiGprsSelector;Z)Z

    .line 221
    iget-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$5;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-static {v0}, Lcom/mediatek/wifi/WifiGprsSelector;->-wrap5(Lcom/mediatek/wifi/WifiGprsSelector;)V

    goto :goto_0

    .line 224
    :pswitch_1
    const-string/jumbo v0, "@M_WifiGprsSelector"

    const-string/jumbo v1, "detach time out......"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$5;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-virtual {v0}, Lcom/mediatek/wifi/WifiGprsSelector;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$5;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-static {v0, v3}, Lcom/mediatek/wifi/WifiGprsSelector;->-wrap2(Lcom/mediatek/wifi/WifiGprsSelector;I)V

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$5;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-static {v0, v2}, Lcom/mediatek/wifi/WifiGprsSelector;->-set2(Lcom/mediatek/wifi/WifiGprsSelector;Z)Z

    .line 229
    iget-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$5;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-static {v0}, Lcom/mediatek/wifi/WifiGprsSelector;->-wrap5(Lcom/mediatek/wifi/WifiGprsSelector;)V

    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
