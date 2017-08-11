.class Lcom/android/incallui/SomcSlidingTab$5;
.super Ljava/lang/Object;
.source "SomcSlidingTab.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SomcSlidingTab;->moveAnimation(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SomcSlidingTab;


# direct methods
.method constructor <init>(Lcom/android/incallui/SomcSlidingTab;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/SomcSlidingTab;

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/android/incallui/SomcSlidingTab$5;->this$0:Lcom/android/incallui/SomcSlidingTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/android/incallui/SomcSlidingTab$5;->this$0:Lcom/android/incallui/SomcSlidingTab;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/SomcSlidingTab;->resetSlider(Z)V

    .line 1080
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1077
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1074
    return-void
.end method
