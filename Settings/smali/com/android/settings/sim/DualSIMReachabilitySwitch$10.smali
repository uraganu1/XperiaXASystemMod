.class Lcom/android/settings/sim/DualSIMReachabilitySwitch$10;
.super Ljava/lang/Object;
.source "DualSIMReachabilitySwitch.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/DualSIMReachabilitySwitch;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 581
    iput-object p1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$10;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v2, 0x1

    .line 584
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 585
    iget-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$10;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    invoke-static {v0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->-get0(Lcom/android/settings/sim/DualSIMReachabilitySwitch;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 586
    iget-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$10;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    invoke-static {v0, v2, v2}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->-wrap13(Lcom/android/settings/sim/DualSIMReachabilitySwitch;ZZ)V

    .line 583
    return-void
.end method
