.class Lcom/mediatek/wifi/WifiWpsEmDialog$1;
.super Landroid/net/wifi/WifiManager$WpsCallback;
.source "WifiWpsEmDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/wifi/WifiWpsEmDialog;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wifi/WifiWpsEmDialog;


# direct methods
.method constructor <init>(Lcom/mediatek/wifi/WifiWpsEmDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/wifi/WifiWpsEmDialog;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/mediatek/wifi/WifiWpsEmDialog$1;->this$0:Lcom/mediatek/wifi/WifiWpsEmDialog;

    invoke-direct {p0}, Landroid/net/wifi/WifiManager$WpsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 123
    const-string/jumbo v0, "@M_WifiWpsEmDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFailed, the reason is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsEmDialog$1;->this$0:Lcom/mediatek/wifi/WifiWpsEmDialog;

    invoke-static {v0}, Lcom/mediatek/wifi/WifiWpsEmDialog;->-get0(Lcom/mediatek/wifi/WifiWpsEmDialog;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "Invalid PIN code"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 122
    :cond_0
    return-void
.end method

.method public onStarted(Ljava/lang/String;)V
    .locals 0
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 113
    return-void
.end method

.method public onSucceeded()V
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsEmDialog$1;->this$0:Lcom/mediatek/wifi/WifiWpsEmDialog;

    invoke-static {v0}, Lcom/mediatek/wifi/WifiWpsEmDialog;->-get1(Lcom/mediatek/wifi/WifiWpsEmDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsEmDialog$1;->this$0:Lcom/mediatek/wifi/WifiWpsEmDialog;

    invoke-static {v0}, Lcom/mediatek/wifi/WifiWpsEmDialog;->-get2(Lcom/mediatek/wifi/WifiWpsEmDialog;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsEmDialog$1;->this$0:Lcom/mediatek/wifi/WifiWpsEmDialog;

    invoke-static {v0}, Lcom/mediatek/wifi/WifiWpsEmDialog;->-get0(Lcom/mediatek/wifi/WifiWpsEmDialog;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b008c

    .line 119
    const/4 v2, 0x1

    .line 118
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 115
    :cond_0
    return-void
.end method
