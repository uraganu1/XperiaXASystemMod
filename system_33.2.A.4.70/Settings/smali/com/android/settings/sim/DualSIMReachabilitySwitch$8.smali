.class Lcom/android/settings/sim/DualSIMReachabilitySwitch$8;
.super Ljava/lang/Object;
.source "DualSIMReachabilitySwitch.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/DualSIMReachabilitySwitch;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/DualSIMReachabilitySwitch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    .prologue
    .line 502
    iput-object p1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$8;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 2
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 506
    if-eqz p2, :cond_0

    .line 507
    iget-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$8;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->showDialog(I)V

    .line 505
    :goto_0
    return-void

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$8;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->-wrap10(Lcom/android/settings/sim/DualSIMReachabilitySwitch;I)V

    goto :goto_0
.end method
