.class Lcom/android/settings/sim/SimSettings$AirplaneMode$1;
.super Landroid/database/ContentObserver;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimSettings$AirplaneMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/sim/SimSettings$AirplaneMode;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimSettings$AirplaneMode;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/sim/SimSettings$AirplaneMode;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 659
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$AirplaneMode$1;->this$1:Lcom/android/settings/sim/SimSettings$AirplaneMode;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$AirplaneMode$1;->this$1:Lcom/android/settings/sim/SimSettings$AirplaneMode;

    iget-object v0, v0, Lcom/android/settings/sim/SimSettings$AirplaneMode;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v0}, Lcom/android/settings/sim/SimSettings;->-wrap9(Lcom/android/settings/sim/SimSettings;)V

    .line 661
    return-void
.end method
