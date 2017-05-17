.class Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar$2;
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
    .line 138
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar$2;->this$0:Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar$2;->this$0:Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->mSection:Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection;

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection$Animatable;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedScrollBarSection$Animatable;->updatePosition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar$2;->this$0:Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, p0, v2, v3}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar$2;->this$0:Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->-wrap0(Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;)V

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar$2;->this$0:Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->invalidate()V

    .line 140
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar$2;->this$0:Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;->-set0(Lcom/sonyericsson/android/socialphonebook/widget/AnimatedIndexedScrollBar;Z)Z

    goto :goto_0
.end method
