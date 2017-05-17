.class Lcom/android/incallui/SomcEndCallView$1;
.super Ljava/lang/Object;
.source "SomcEndCallView.java"

# interfaces
.implements Lcom/android/incallui/SomcIncomingCallAnswerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SomcEndCallView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SomcEndCallView;


# direct methods
.method constructor <init>(Lcom/android/incallui/SomcEndCallView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/SomcEndCallView;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/incallui/SomcEndCallView$1;->this$0:Lcom/android/incallui/SomcEndCallView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnswer(ILandroid/content/Context;)V
    .locals 0
    .param p1, "videoState"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    return-void
.end method

.method public onDecline(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/incallui/SomcEndCallView$1;->this$0:Lcom/android/incallui/SomcEndCallView;

    iget-object v0, v0, Lcom/android/incallui/SomcEndCallView;->mOnEndCallRspListener:Lcom/android/incallui/SomcEndCallView$OnEndCallResponseListener;

    invoke-interface {v0}, Lcom/android/incallui/SomcEndCallView$OnEndCallResponseListener;->onEndCall()V

    .line 45
    return-void
.end method
