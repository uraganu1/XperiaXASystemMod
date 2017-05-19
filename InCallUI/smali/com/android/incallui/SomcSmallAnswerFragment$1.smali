.class Lcom/android/incallui/SomcSmallAnswerFragment$1;
.super Ljava/lang/Object;
.source "SomcSmallAnswerFragment.java"

# interfaces
.implements Lcom/android/incallui/SomcIncomingCallAnswerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SomcSmallAnswerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SomcSmallAnswerFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SomcSmallAnswerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/SomcSmallAnswerFragment;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/incallui/SomcSmallAnswerFragment$1;->this$0:Lcom/android/incallui/SomcSmallAnswerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnswer(ILandroid/content/Context;)V
    .locals 1
    .param p1, "videoState"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/incallui/SomcSmallAnswerFragment$1;->this$0:Lcom/android/incallui/SomcSmallAnswerFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/SomcSmallAnswerFragment;->onAnswer(ILandroid/content/Context;)V

    .line 33
    return-void
.end method

.method public onDecline(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/incallui/SomcSmallAnswerFragment$1;->this$0:Lcom/android/incallui/SomcSmallAnswerFragment;

    invoke-virtual {v0, p1}, Lcom/android/incallui/SomcSmallAnswerFragment;->onDecline(Landroid/content/Context;)V

    .line 38
    return-void
.end method
