.class Lcom/android/systemui/recents/views/RecentsView$1$1$1;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsView$1$1;->sendResult(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/systemui/recents/views/RecentsView$1$1;

.field final synthetic val$animStartedListener:Landroid/app/ActivityOptions$OnAnimationStartedListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsView$1$1;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/systemui/recents/views/RecentsView$1$1;
    .param p2, "val$animStartedListener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .prologue
    .line 503
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView$1$1$1;->this$2:Lcom/android/systemui/recents/views/RecentsView$1$1;

    iput-object p2, p0, Lcom/android/systemui/recents/views/RecentsView$1$1$1;->val$animStartedListener:Landroid/app/ActivityOptions$OnAnimationStartedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$1$1$1;->val$animStartedListener:Landroid/app/ActivityOptions$OnAnimationStartedListener;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$1$1$1;->val$animStartedListener:Landroid/app/ActivityOptions$OnAnimationStartedListener;

    invoke-interface {v0}, Landroid/app/ActivityOptions$OnAnimationStartedListener;->onAnimationStarted()V

    .line 505
    :cond_0
    return-void
.end method
