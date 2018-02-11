.class Lcom/android/settings/sim/DualSIMReachabilitySwitch$5;
.super Ljava/lang/Object;
.source "DualSIMReachabilitySwitch.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/DualSIMReachabilitySwitch;->initEditTextStatus()V
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
    .line 341
    iput-object p1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$5;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$5;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    invoke-static {v0, p2}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->-wrap2(Lcom/android/settings/sim/DualSIMReachabilitySwitch;Z)V

    .line 343
    return-void
.end method
