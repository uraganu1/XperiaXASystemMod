.class Lcom/android/incallui/AnswerFragment$7;
.super Ljava/lang/Object;
.source "AnswerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/AnswerFragment;->showWaitingCallDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/AnswerFragment;

.field final synthetic val$is2ndIncomingCall:Z


# direct methods
.method constructor <init>(Lcom/android/incallui/AnswerFragment;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/AnswerFragment;
    .param p2, "val$is2ndIncomingCall"    # Z

    .prologue
    .line 800
    iput-object p1, p0, Lcom/android/incallui/AnswerFragment$7;->this$0:Lcom/android/incallui/AnswerFragment;

    iput-boolean p2, p0, Lcom/android/incallui/AnswerFragment$7;->val$is2ndIncomingCall:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 803
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$7;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerFragment;->dismissWaitingCallPopup()V

    .line 804
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$7;->this$0:Lcom/android/incallui/AnswerFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/AnswerFragment;->showIncomingCallView(Z)V

    .line 805
    packed-switch p2, :pswitch_data_0

    .line 802
    :goto_0
    return-void

    .line 807
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/incallui/AnswerFragment$7;->val$is2ndIncomingCall:Z

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$7;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->answerVoiceCall()V

    goto :goto_0

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$7;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->answerAndEndActive()V

    goto :goto_0

    .line 814
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/incallui/AnswerFragment$7;->val$is2ndIncomingCall:Z

    if-eqz v0, :cond_1

    .line 815
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$7;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->answerAndEndActive()V

    goto :goto_0

    .line 817
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$7;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->hangupHoldingCall()V

    goto :goto_0

    .line 805
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
