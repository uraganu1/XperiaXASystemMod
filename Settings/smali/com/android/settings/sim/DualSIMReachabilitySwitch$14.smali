.class Lcom/android/settings/sim/DualSIMReachabilitySwitch$14;
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
    .line 621
    iput-object p1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$14;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v2, 0x0

    .line 624
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 627
    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$14;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    iget-object v1, v1, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mCallforwardUtility:Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;

    invoke-virtual {v1, v2}, Lcom/android/settings/sim/DualSIMReachabilitySwitch$CallforwardUtility;->setIsFirstTime(Z)V

    .line 628
    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$14;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    invoke-static {v1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->-get3(Lcom/android/settings/sim/DualSIMReachabilitySwitch;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 629
    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$14;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    invoke-static {v1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->-get1(Lcom/android/settings/sim/DualSIMReachabilitySwitch;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 631
    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$14;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    const/16 v2, 0xc9

    invoke-virtual {v1, v2}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->showDialog(I)V

    .line 632
    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$14;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    iget-object v1, v1, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 633
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$14;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    iget-object v1, v1, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 623
    return-void
.end method
