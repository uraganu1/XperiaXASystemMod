.class Lcom/android/incallui/SomcAmAnimationView$DrawAnimationTask;
.super Ljava/util/TimerTask;
.source "SomcAmAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SomcAmAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawAnimationTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SomcAmAnimationView;


# direct methods
.method private constructor <init>(Lcom/android/incallui/SomcAmAnimationView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/SomcAmAnimationView;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/incallui/SomcAmAnimationView$DrawAnimationTask;->this$0:Lcom/android/incallui/SomcAmAnimationView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/SomcAmAnimationView;Lcom/android/incallui/SomcAmAnimationView$DrawAnimationTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/SomcAmAnimationView;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/SomcAmAnimationView$DrawAnimationTask;-><init>(Lcom/android/incallui/SomcAmAnimationView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/incallui/SomcAmAnimationView$DrawAnimationTask;->this$0:Lcom/android/incallui/SomcAmAnimationView;

    invoke-static {v0}, Lcom/android/incallui/SomcAmAnimationView;->-get2(Lcom/android/incallui/SomcAmAnimationView;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 26
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SomcAmAnimationView$DrawAnimationTask;->this$0:Lcom/android/incallui/SomcAmAnimationView;

    iget-object v1, p0, Lcom/android/incallui/SomcAmAnimationView$DrawAnimationTask;->this$0:Lcom/android/incallui/SomcAmAnimationView;

    invoke-static {v1}, Lcom/android/incallui/SomcAmAnimationView;->-get0(Lcom/android/incallui/SomcAmAnimationView;)F

    move-result v1

    .line 29
    iget-object v2, p0, Lcom/android/incallui/SomcAmAnimationView$DrawAnimationTask;->this$0:Lcom/android/incallui/SomcAmAnimationView;

    invoke-static {v2}, Lcom/android/incallui/SomcAmAnimationView;->-get2(Lcom/android/incallui/SomcAmAnimationView;)F

    move-result v2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    .line 28
    const v3, 0x4639a000    # 11880.0f

    div-float v2, v3, v2

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/incallui/SomcAmAnimationView;->-set0(Lcom/android/incallui/SomcAmAnimationView;F)F

    .line 30
    iget-object v0, p0, Lcom/android/incallui/SomcAmAnimationView$DrawAnimationTask;->this$0:Lcom/android/incallui/SomcAmAnimationView;

    invoke-static {v0}, Lcom/android/incallui/SomcAmAnimationView;->-get3(Lcom/android/incallui/SomcAmAnimationView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SomcAmAnimationView$DrawAnimationTask;->this$0:Lcom/android/incallui/SomcAmAnimationView;

    invoke-static {v1}, Lcom/android/incallui/SomcAmAnimationView;->-get1(Lcom/android/incallui/SomcAmAnimationView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    iget-object v0, p0, Lcom/android/incallui/SomcAmAnimationView$DrawAnimationTask;->this$0:Lcom/android/incallui/SomcAmAnimationView;

    invoke-static {v0}, Lcom/android/incallui/SomcAmAnimationView;->-get0(Lcom/android/incallui/SomcAmAnimationView;)F

    move-result v0

    const/high16 v1, 0x43b40000    # 360.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 32
    iget-object v0, p0, Lcom/android/incallui/SomcAmAnimationView$DrawAnimationTask;->this$0:Lcom/android/incallui/SomcAmAnimationView;

    invoke-static {v0}, Lcom/android/incallui/SomcAmAnimationView;->-get4(Lcom/android/incallui/SomcAmAnimationView;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 33
    iget-object v0, p0, Lcom/android/incallui/SomcAmAnimationView$DrawAnimationTask;->this$0:Lcom/android/incallui/SomcAmAnimationView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/SomcAmAnimationView;->-set1(Lcom/android/incallui/SomcAmAnimationView;Ljava/util/Timer;)Ljava/util/Timer;

    .line 24
    :cond_1
    return-void
.end method
