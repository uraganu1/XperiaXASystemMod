.class Lcom/mediatek/wifi/hotspot/TetherWifiSettings$2;
.super Ljava/lang/Object;
.source "TetherWifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wifi/hotspot/TetherWifiSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/wifi/hotspot/TetherWifiSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/wifi/hotspot/TetherWifiSettings;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings$2;->this$0:Lcom/mediatek/wifi/hotspot/TetherWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 260
    return-void
.end method
