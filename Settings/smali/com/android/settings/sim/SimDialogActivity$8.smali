.class Lcom/android/settings/sim/SimDialogActivity$8;
.super Ljava/lang/Object;
.source "SimDialogActivity.java"

# interfaces
.implements Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/SimDialogActivity;->setSimStateCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimDialogActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/sim/SimDialogActivity;

    .prologue
    .line 612
    iput-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$8;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSimHotSwap()V
    .locals 2

    .prologue
    .line 615
    invoke-static {}, Lcom/android/settings/sim/SimDialogActivity;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onSimHotSwap, finish Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity$8;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-virtual {v0}, Lcom/android/settings/sim/SimDialogActivity;->finish()V

    .line 614
    return-void
.end method
