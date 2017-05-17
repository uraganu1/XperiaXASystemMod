.class Lcom/android/incallui/SomcCallWidgetFragment$MenuOnTouchListener;
.super Ljava/lang/Object;
.source "SomcCallWidgetFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SomcCallWidgetFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuOnTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SomcCallWidgetFragment;


# direct methods
.method private constructor <init>(Lcom/android/incallui/SomcCallWidgetFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/SomcCallWidgetFragment;

    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/incallui/SomcCallWidgetFragment$MenuOnTouchListener;->this$0:Lcom/android/incallui/SomcCallWidgetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/SomcCallWidgetFragment;Lcom/android/incallui/SomcCallWidgetFragment$MenuOnTouchListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/SomcCallWidgetFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/SomcCallWidgetFragment$MenuOnTouchListener;-><init>(Lcom/android/incallui/SomcCallWidgetFragment;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 575
    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetFragment$MenuOnTouchListener;->this$0:Lcom/android/incallui/SomcCallWidgetFragment;

    invoke-virtual {v0}, Lcom/android/incallui/SomcCallWidgetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetFragment$MenuOnTouchListener;->this$0:Lcom/android/incallui/SomcCallWidgetFragment;

    invoke-virtual {v0}, Lcom/android/incallui/SomcCallWidgetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetFragment$MenuOnTouchListener;->this$0:Lcom/android/incallui/SomcCallWidgetFragment;

    invoke-virtual {v0}, Lcom/android/incallui/SomcCallWidgetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    return v5

    .line 582
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v2, p1

    .line 583
    check-cast v2, Landroid/view/ViewGroup;

    .line 584
    .local v2, "button":Landroid/view/ViewGroup;
    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetFragment$MenuOnTouchListener;->this$0:Lcom/android/incallui/SomcCallWidgetFragment;

    invoke-static {v0, v2}, Lcom/android/incallui/SomcCallWidgetFragment;->-wrap1(Lcom/android/incallui/SomcCallWidgetFragment;Landroid/view/ViewGroup;)Landroid/widget/ImageView;

    move-result-object v3

    .line 585
    .local v3, "buttonImage":Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetFragment$MenuOnTouchListener;->this$0:Lcom/android/incallui/SomcCallWidgetFragment;

    invoke-static {v0, v2}, Lcom/android/incallui/SomcCallWidgetFragment;->-wrap2(Lcom/android/incallui/SomcCallWidgetFragment;Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object v4

    .line 587
    .local v4, "buttonText":Landroid/widget/TextView;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 588
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v6

    .line 589
    .local v6, "widgetIndex":I
    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetFragment$MenuOnTouchListener;->this$0:Lcom/android/incallui/SomcCallWidgetFragment;

    invoke-static {v0}, Lcom/android/incallui/SomcCallWidgetFragment;->-get3(Lcom/android/incallui/SomcCallWidgetFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/callwidget/ISomcCallWidget;

    .line 590
    .local v1, "widget":Lcom/android/incallui/callwidget/ISomcCallWidget;
    invoke-interface {v1}, Lcom/android/incallui/callwidget/ISomcCallWidget;->getStatus()I

    move-result v0

    if-nez v0, :cond_1

    .line 591
    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetFragment$MenuOnTouchListener;->this$0:Lcom/android/incallui/SomcCallWidgetFragment;

    invoke-static/range {v0 .. v5}, Lcom/android/incallui/SomcCallWidgetFragment;->-wrap7(Lcom/android/incallui/SomcCallWidgetFragment;Lcom/android/incallui/callwidget/ISomcCallWidget;Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/TextView;Z)V

    .line 610
    .end local v1    # "widget":Lcom/android/incallui/callwidget/ISomcCallWidget;
    .end local v2    # "button":Landroid/view/ViewGroup;
    .end local v3    # "buttonImage":Landroid/widget/ImageView;
    .end local v4    # "buttonText":Landroid/widget/TextView;
    .end local v6    # "widgetIndex":I
    :cond_1
    :goto_0
    return v7

    .line 593
    .restart local v2    # "button":Landroid/view/ViewGroup;
    .restart local v3    # "buttonImage":Landroid/widget/ImageView;
    .restart local v4    # "buttonText":Landroid/widget/TextView;
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 594
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v6

    .line 595
    .restart local v6    # "widgetIndex":I
    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetFragment$MenuOnTouchListener;->this$0:Lcom/android/incallui/SomcCallWidgetFragment;

    invoke-static {v0}, Lcom/android/incallui/SomcCallWidgetFragment;->-get3(Lcom/android/incallui/SomcCallWidgetFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/callwidget/ISomcCallWidget;

    .line 596
    .restart local v1    # "widget":Lcom/android/incallui/callwidget/ISomcCallWidget;
    if-eqz v1, :cond_1

    .line 597
    invoke-interface {v1}, Lcom/android/incallui/callwidget/ISomcCallWidget;->getStatus()I

    move-result v0

    if-nez v0, :cond_1

    .line 598
    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetFragment$MenuOnTouchListener;->this$0:Lcom/android/incallui/SomcCallWidgetFragment;

    invoke-virtual {v0}, Lcom/android/incallui/SomcCallWidgetFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SomcCallWidgetPresenter;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SomcCallWidgetPresenter;->widgetSelected(Lcom/android/incallui/callwidget/ISomcCallWidget;)V

    .line 599
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 600
    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetFragment$MenuOnTouchListener;->this$0:Lcom/android/incallui/SomcCallWidgetFragment;

    move v5, v7

    invoke-static/range {v0 .. v5}, Lcom/android/incallui/SomcCallWidgetFragment;->-wrap7(Lcom/android/incallui/SomcCallWidgetFragment;Lcom/android/incallui/callwidget/ISomcCallWidget;Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/TextView;Z)V

    goto :goto_0

    .line 602
    .end local v1    # "widget":Lcom/android/incallui/callwidget/ISomcCallWidget;
    .end local v6    # "widgetIndex":I
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v5, 0x3

    if-ne v0, v5, :cond_1

    .line 603
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v6

    .line 604
    .restart local v6    # "widgetIndex":I
    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetFragment$MenuOnTouchListener;->this$0:Lcom/android/incallui/SomcCallWidgetFragment;

    invoke-static {v0}, Lcom/android/incallui/SomcCallWidgetFragment;->-get3(Lcom/android/incallui/SomcCallWidgetFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/callwidget/ISomcCallWidget;

    .line 605
    .restart local v1    # "widget":Lcom/android/incallui/callwidget/ISomcCallWidget;
    invoke-interface {v1}, Lcom/android/incallui/callwidget/ISomcCallWidget;->getStatus()I

    move-result v0

    if-nez v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetFragment$MenuOnTouchListener;->this$0:Lcom/android/incallui/SomcCallWidgetFragment;

    move v5, v7

    invoke-static/range {v0 .. v5}, Lcom/android/incallui/SomcCallWidgetFragment;->-wrap7(Lcom/android/incallui/SomcCallWidgetFragment;Lcom/android/incallui/callwidget/ISomcCallWidget;Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/TextView;Z)V

    goto :goto_0
.end method
