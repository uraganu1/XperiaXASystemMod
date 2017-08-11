.class Lcom/android/incallui/AnswerFragment$8;
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


# direct methods
.method constructor <init>(Lcom/android/incallui/AnswerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/AnswerFragment;

    .prologue
    .line 832
    iput-object p1, p0, Lcom/android/incallui/AnswerFragment$8;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 835
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$8;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerFragment;->dismissWaitingCallPopup()V

    .line 836
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$8;->this$0:Lcom/android/incallui/AnswerFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/AnswerFragment;->showIncomingCallView(Z)V

    .line 837
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$8;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->answerAndEndActive()V

    .line 834
    return-void
.end method
