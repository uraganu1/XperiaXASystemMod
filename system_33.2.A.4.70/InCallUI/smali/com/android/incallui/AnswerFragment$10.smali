.class Lcom/android/incallui/AnswerFragment$10;
.super Ljava/lang/Object;
.source "AnswerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 849
    iput-object p1, p0, Lcom/android/incallui/AnswerFragment$10;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 852
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$10;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerFragment;->dismissWaitingCallPopup()V

    .line 853
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$10;->this$0:Lcom/android/incallui/AnswerFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/AnswerFragment;->showIncomingCallView(Z)V

    .line 851
    return-void
.end method
