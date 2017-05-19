.class Lcom/android/incallui/SomcWaitingVideoCallView$3;
.super Ljava/lang/Object;
.source "SomcWaitingVideoCallView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SomcWaitingVideoCallView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SomcWaitingVideoCallView;


# direct methods
.method constructor <init>(Lcom/android/incallui/SomcWaitingVideoCallView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/SomcWaitingVideoCallView;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/incallui/SomcWaitingVideoCallView$3;->this$0:Lcom/android/incallui/SomcWaitingVideoCallView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/incallui/SomcWaitingVideoCallView$3;->this$0:Lcom/android/incallui/SomcWaitingVideoCallView;

    invoke-static {v0}, Lcom/android/incallui/SomcWaitingVideoCallView;->-get0(Lcom/android/incallui/SomcWaitingVideoCallView;)Lcom/android/incallui/SomcIncomingCallAnswerListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 68
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SomcWaitingVideoCallView$3;->this$0:Lcom/android/incallui/SomcWaitingVideoCallView;

    invoke-static {v0}, Lcom/android/incallui/SomcWaitingVideoCallView;->-get0(Lcom/android/incallui/SomcWaitingVideoCallView;)Lcom/android/incallui/SomcIncomingCallAnswerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SomcWaitingVideoCallView$3;->this$0:Lcom/android/incallui/SomcWaitingVideoCallView;

    invoke-virtual {v1}, Lcom/android/incallui/SomcWaitingVideoCallView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/incallui/SomcIncomingCallAnswerListener;->onDecline(Landroid/content/Context;)V

    .line 66
    return-void
.end method
