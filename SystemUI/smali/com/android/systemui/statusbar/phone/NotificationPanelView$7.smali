.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 1225
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x1c0

    const/4 v5, 0x2

    const/4 v8, 0x1

    .line 1228
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1229
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get18(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 1230
    const-wide/16 v0, 0x0

    .line 1232
    .local v0, "delay":J
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get7(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get7(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v3

    neg-int v3, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get15(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setTranslationY(F)V

    .line 1233
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get7(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 1234
    const/4 v3, 0x0

    .line 1233
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 1237
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get6(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/animation/Interpolator;

    move-result-object v3

    .line 1233
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1239
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get10(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/qs/QSContainer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get10(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/qs/QSContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSContainer;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSContainer;->setY(F)V

    .line 1240
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get10(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/qs/QSContainer;

    move-result-object v3

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v5, [F

    .line 1241
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get10(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/qs/QSContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/qs/QSContainer;->getTranslationY()F

    move-result v6

    const/4 v7, 0x0

    aput v6, v5, v7

    .line 1242
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get7(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get15(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get10(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/qs/QSContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/qs/QSContainer;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    .line 1243
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get10(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/qs/QSContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/qs/QSContainer;->getTop()I

    move-result v7

    .line 1242
    sub-int/2addr v6, v7

    int-to-float v6, v6

    aput v6, v5, v8

    .line 1240
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-set6(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 1244
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get11(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1245
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get11(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1246
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get11(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get6(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1247
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get11(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get0(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1248
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get11(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 1249
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get10(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/qs/QSContainer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get12(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSContainer;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1250
    return v8

    .line 1231
    .end local v0    # "delay":J
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->calculateGoingToFullShadeDelay()J

    move-result-wide v0

    .restart local v0    # "delay":J
    goto/16 :goto_0
.end method
