.class Lcom/android/settings/sim/SimSettings$5;
.super Ljava/lang/Object;
.source "SimSettings.java"

# interfaces
.implements Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/SimSettings;->initForSimStateChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 838
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$5;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSimHotSwap()V
    .locals 2

    .prologue
    .line 841
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$5;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$5;->this$0:Lcom/android/settings/sim/SimSettings;

    const-string/jumbo v1, "onSimHotSwap, finish Activity~~"

    invoke-static {v0, v1}, Lcom/android/settings/sim/SimSettings;->-wrap7(Lcom/android/settings/sim/SimSettings;Ljava/lang/String;)V

    .line 843
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$5;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 840
    :cond_0
    return-void
.end method
