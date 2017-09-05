.class Lcom/android/systemui/recents/views/RecentsView$2$1;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsView$2;->onAnimationStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/views/RecentsView$2;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsView$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/recents/views/RecentsView$2;

    .prologue
    .line 563
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView$2$1;->this$1:Lcom/android/systemui/recents/views/RecentsView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$2$1;->this$1:Lcom/android/systemui/recents/views/RecentsView$2;

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsView$2;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v0}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onScreenPinningRequest()V

    .line 565
    return-void
.end method
