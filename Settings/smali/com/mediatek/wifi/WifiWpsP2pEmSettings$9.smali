.class Lcom/mediatek/wifi/WifiWpsP2pEmSettings$9;
.super Ljava/lang/Object;
.source "WifiWpsP2pEmSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->createDialog(I)Landroid/app/AlertDialog;
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
    .line 314
    iput-object p1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings$9;->this$0:Lcom/mediatek/wifi/WifiWpsP2pEmSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 317
    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings$9;->this$0:Lcom/mediatek/wifi/WifiWpsP2pEmSettings;

    iget-object v1, p0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings$9;->this$0:Lcom/mediatek/wifi/WifiWpsP2pEmSettings;

    invoke-static {v1}, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->-get0(Lcom/mediatek/wifi/WifiWpsP2pEmSettings;)Lcom/mediatek/wifi/AccessPoint;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->-wrap0(Lcom/mediatek/wifi/WifiWpsP2pEmSettings;ILcom/mediatek/wifi/AccessPoint;Z)V

    .line 316
    return-void
.end method
