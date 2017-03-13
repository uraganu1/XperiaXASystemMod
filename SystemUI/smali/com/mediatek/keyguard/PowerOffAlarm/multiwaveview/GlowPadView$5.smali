.class Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->startWaveAnimation()V
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
    .line 742
    iput-object p1, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$5;->this$0:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 744
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$5;->this$0:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;

    invoke-static {v0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->-get1(Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;)Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud;->waveManager:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud$WaveManager;

    invoke-virtual {v0, v1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud$WaveManager;->setRadius(F)V

    .line 745
    iget-object v0, p0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView$5;->this$0:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;

    invoke-static {v0}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;->-get1(Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/GlowPadView;)Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud;->waveManager:Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud$WaveManager;

    invoke-virtual {v0, v1}, Lcom/mediatek/keyguard/PowerOffAlarm/multiwaveview/PointCloud$WaveManager;->setAlpha(F)V

    .line 743
    return-void
.end method
