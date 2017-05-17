.class Lcom/android/incallui/VideoCallFragment$3;
.super Ljava/lang/Object;
.source "VideoCallFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/VideoCallFragment;->inflateVideoCallViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/VideoCallFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/VideoCallFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/VideoCallFragment;

    .prologue
    .line 1009
    iput-object p1, p0, Lcom/android/incallui/VideoCallFragment$3;->this$0:Lcom/android/incallui/VideoCallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1012
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$3;->this$0:Lcom/android/incallui/VideoCallFragment;

    invoke-static {v1}, Lcom/android/incallui/VideoCallFragment;->-get5(Lcom/android/incallui/VideoCallFragment;)Lcom/android/incallui/VideoCallFragment$VideoCallState;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/VideoCallFragment$VideoCallState;->INCALL_TX:Lcom/android/incallui/VideoCallFragment$VideoCallState;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$3;->this$0:Lcom/android/incallui/VideoCallFragment;

    invoke-virtual {v1}, Lcom/android/incallui/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/VideoCallPresenter;->isZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1014
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 1016
    .local v0, "action":I
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1018
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$3;->this$0:Lcom/android/incallui/VideoCallFragment;

    invoke-static {v1, v3}, Lcom/android/incallui/VideoCallFragment;->-set1(Lcom/android/incallui/VideoCallFragment;Z)Z

    .line 1021
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$3;->this$0:Lcom/android/incallui/VideoCallFragment;

    invoke-static {v1}, Lcom/android/incallui/VideoCallFragment;->-get1(Lcom/android/incallui/VideoCallFragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1022
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$3;->this$0:Lcom/android/incallui/VideoCallFragment;

    invoke-static {v1}, Lcom/android/incallui/VideoCallFragment;->-get7(Lcom/android/incallui/VideoCallFragment;)Lcom/android/incallui/SomcVideoShareZoom;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/SomcVideoShareZoom;->bringToFront()V

    .line 1023
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$3;->this$0:Lcom/android/incallui/VideoCallFragment;

    invoke-static {v1}, Lcom/android/incallui/VideoCallFragment;->-get7(Lcom/android/incallui/VideoCallFragment;)Lcom/android/incallui/SomcVideoShareZoom;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/incallui/SomcVideoShareZoom;->handleTouch(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1024
    if-ne v0, v3, :cond_1

    .line 1026
    iget-object v1, p0, Lcom/android/incallui/VideoCallFragment$3;->this$0:Lcom/android/incallui/VideoCallFragment;

    invoke-static {v1, v4}, Lcom/android/incallui/VideoCallFragment;->-set1(Lcom/android/incallui/VideoCallFragment;Z)Z

    .line 1028
    :cond_1
    return v3

    .line 1032
    .end local v0    # "action":I
    :cond_2
    return v4
.end method
