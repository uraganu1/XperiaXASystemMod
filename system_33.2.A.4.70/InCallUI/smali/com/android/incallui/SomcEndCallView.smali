.class public Lcom/android/incallui/SomcEndCallView;
.super Landroid/widget/LinearLayout;
.source "SomcEndCallView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SomcEndCallView$OnEndCallResponseListener;,
        Lcom/android/incallui/SomcEndCallView$1;
    }
.end annotation


# instance fields
.field protected mOnEndCallRspListener:Lcom/android/incallui/SomcEndCallView$OnEndCallResponseListener;

.field private mSlidingTab:Lcom/android/incallui/SomcSlidingTab;

.field private final mSomcAnswerListener:Lcom/android/incallui/SomcIncomingCallAnswerListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SomcEndCallView;->mSlidingTab:Lcom/android/incallui/SomcSlidingTab;

    .line 38
    new-instance v0, Lcom/android/incallui/SomcEndCallView$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SomcEndCallView$1;-><init>(Lcom/android/incallui/SomcEndCallView;)V

    .line 37
    iput-object v0, p0, Lcom/android/incallui/SomcEndCallView;->mSomcAnswerListener:Lcom/android/incallui/SomcIncomingCallAnswerListener;

    .line 26
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 32
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 33
    const v0, 0x7f0f00d6

    invoke-virtual {p0, v0}, Lcom/android/incallui/SomcEndCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SomcSlidingTab;

    iput-object v0, p0, Lcom/android/incallui/SomcEndCallView;->mSlidingTab:Lcom/android/incallui/SomcSlidingTab;

    .line 34
    iget-object v0, p0, Lcom/android/incallui/SomcEndCallView;->mSlidingTab:Lcom/android/incallui/SomcSlidingTab;

    iget-object v1, p0, Lcom/android/incallui/SomcEndCallView;->mSomcAnswerListener:Lcom/android/incallui/SomcIncomingCallAnswerListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SomcSlidingTab;->setAnswerListener(Lcom/android/incallui/SomcIncomingCallAnswerListener;)V

    .line 31
    return-void
.end method

.method setOnEndCallRspListener(Lcom/android/incallui/SomcEndCallView$OnEndCallResponseListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/incallui/SomcEndCallView$OnEndCallResponseListener;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/incallui/SomcEndCallView;->mOnEndCallRspListener:Lcom/android/incallui/SomcEndCallView$OnEndCallResponseListener;

    .line 50
    return-void
.end method
