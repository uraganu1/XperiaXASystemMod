.class Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$2;
.super Ljava/lang/Object;
.source "CdmaSimDialogActivity.java"

# interfaces
.implements Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$2;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSimHotSwap()V
    .locals 2

    .prologue
    .line 74
    const-string/jumbo v0, "CdmaSimDialogActivity"

    const-string/jumbo v1, "onSimHotSwap, finish Activity~~"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$2;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    invoke-virtual {v0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->finish()V

    .line 73
    return-void
.end method
