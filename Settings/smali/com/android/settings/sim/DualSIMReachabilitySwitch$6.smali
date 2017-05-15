.class Lcom/android/settings/sim/DualSIMReachabilitySwitch$6;
.super Ljava/lang/Object;
.source "DualSIMReachabilitySwitch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 441
    iput-object p1, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$6;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/settings/sim/DualSIMReachabilitySwitch$6;->this$0:Lcom/android/settings/sim/DualSIMReachabilitySwitch;

    invoke-virtual {v0}, Lcom/android/settings/sim/DualSIMReachabilitySwitch;->finish()V

    .line 443
    return-void
.end method
