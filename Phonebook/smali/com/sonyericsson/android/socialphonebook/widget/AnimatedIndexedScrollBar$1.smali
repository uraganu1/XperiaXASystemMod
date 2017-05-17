.class Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar$1;
.super Ljava/lang/Object;
.source "AnimatedIndexedScrollBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar$1;->this$0:Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar$1;->this$0:Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->-get0(Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;)Lcom/sonyericsson/movablepanes/util/SpringDynamics;

    move-result-object v0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/movablepanes/util/SpringDynamics;->update(J)V

    .line 129
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar$1;->this$0:Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->-get0(Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;)Lcom/sonyericsson/movablepanes/util/SpringDynamics;

    move-result-object v0

    const v1, 0x3dcccccd    # 0.1f

    const v2, 0x3c23d70a    # 0.01f

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/movablepanes/util/SpringDynamics;->isAtRest(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar$1;->this$0:Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, p0, v2, v3}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar$1;->this$0:Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->-wrap0(Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;)V

    .line 133
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar$1;->this$0:Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->invalidate()V

    .line 127
    return-void
.end method
