.class Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$2;
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
    .line 175
    iput-object p1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$2;->this$0:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$2;->this$0:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;

    invoke-virtual {v0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->ping()V

    .line 178
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$2;->this$0:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;

    iget-object v1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$2;->this$0:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;

    invoke-static {v1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->-get2(Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;)F

    move-result v1

    iget-object v2, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$2;->this$0:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;

    invoke-static {v2}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->-get3(Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;)F

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->-wrap3(Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;IFF)V

    .line 179
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$2;->this$0:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;

    invoke-static {v0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->-wrap0(Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;)V

    .line 176
    return-void
.end method
