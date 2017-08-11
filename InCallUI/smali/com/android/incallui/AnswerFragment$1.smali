.class Lcom/android/incallui/AnswerFragment$1;
.super Ljava/lang/Object;
.source "AnswerFragment.java"

# interfaces
.implements Lcom/android/incallui/SomcIncomingCallAnswerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/AnswerFragment;
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
    .line 109
    iput-object p1, p0, Lcom/android/incallui/AnswerFragment$1;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnswer(ILandroid/content/Context;)V
    .locals 1
    .param p1, "videoState"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$1;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/AnswerFragment;->onAnswer(ILandroid/content/Context;)V

    .line 111
    return-void
.end method

.method public onDecline(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$1;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v0, p1}, Lcom/android/incallui/AnswerFragment;->onDecline(Landroid/content/Context;)V

    .line 116
    return-void
.end method
