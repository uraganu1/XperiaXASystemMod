.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$20;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZLjava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field final synthetic val$onFinishRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p2, "val$onFinishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1611
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$20;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$20;->val$onFinishRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 1614
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$20;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get17(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->setBlockFlinging(Z)V

    .line 1615
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$20;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-set10(Lcom/android/systemui/statusbar/phone/NotificationPanelView;I)I

    .line 1616
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$20;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-set7(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 1617
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$20;->val$onFinishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1618
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$20;->val$onFinishRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1621
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$20;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get13(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1622
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$20;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get14(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$20;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get4(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/content/Context;

    move-result-object v1

    .line 1623
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$20;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$20;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isPanelClosedOnDown()Z

    move-result v3

    .line 1622
    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->onQuickSettingPanelOpened(Landroid/content/Context;Landroid/view/ViewGroup;Z)V

    .line 1613
    :goto_0
    return-void

    .line 1625
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$20;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get14(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->onQuickSettingPanelClosed()V

    goto :goto_0
.end method
