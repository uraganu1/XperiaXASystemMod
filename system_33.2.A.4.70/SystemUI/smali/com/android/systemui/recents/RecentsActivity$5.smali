.class Lcom/android/systemui/recents/RecentsActivity$5;
.super Ljava/lang/Object;
.source "RecentsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/RecentsActivity;->onEnterAnimationTriggered()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsActivity;

.field final synthetic val$cbRef:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsActivity;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/RecentsActivity;

    .prologue
    .line 530
    .local p2, "val$cbRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;>;"
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$5;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iput-object p2, p0, Lcom/android/systemui/recents/RecentsActivity$5;->val$cbRef:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 534
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$5;->val$cbRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;

    .line 535
    .local v0, "cb":Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;
    if-eqz v0, :cond_0

    .line 536
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$5;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsActivity;->mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/RecentsAppWidgetHost;->startListening(Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;)V

    .line 532
    :cond_0
    return-void
.end method
