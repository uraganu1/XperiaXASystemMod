.class Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;


# direct methods
.method constructor <init>(Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$4;->this$0:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 192
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$4;->this$0:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;

    invoke-static {v0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->-get0(Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$4;->this$0:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;

    iget-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$4;->this$0:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;

    invoke-static {v1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->-get0(Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->-wrap2(Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;I)V

    .line 194
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$4;->this$0:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;

    invoke-static {v0, v2}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->-set1(Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;I)I

    .line 195
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$4;->this$0:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;

    invoke-static {v0, v2, v2}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->-wrap1(Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;ZZ)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$4;->this$0:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;

    invoke-static {v0, v2}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->-set0(Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;Z)Z

    .line 191
    return-void
.end method
