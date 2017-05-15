.class Lcom/android/settings/sim/DualSIMReachabilitySwitch$12;
.super Ljava/lang/Object;
.source "DualSIMReachabilitySwitch.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 606
    iput-object p1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$12;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$12;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->-wrap11(Lcom/android/settings/sim/DualSIMReachabilitySwitch;Z)V

    .line 608
    return-void
.end method
