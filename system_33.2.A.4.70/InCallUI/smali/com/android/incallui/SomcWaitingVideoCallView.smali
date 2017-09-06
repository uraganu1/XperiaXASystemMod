.class public Lcom/android/incallui/SomcWaitingVideoCallView;
.super Landroid/widget/LinearLayout;
.source "SomcWaitingVideoCallView.java"


# instance fields
.field private mAnswerListener:Lcom/android/incallui/SomcIncomingCallAnswerListener;


# direct methods
.method static synthetic -get0(Lcom/android/incallui/SomcWaitingVideoCallView;)Lcom/android/incallui/SomcIncomingCallAnswerListener;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SomcWaitingVideoCallView;->mAnswerListener:Lcom/android/incallui/SomcIncomingCallAnswerListener;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 38
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 39
    const v3, 0x7f0f00e5

    invoke-virtual {p0, v3}, Lcom/android/incallui/SomcWaitingVideoCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, "acceptVideoButton":Landroid/view/View;
    new-instance v3, Lcom/android/incallui/SomcWaitingVideoCallView$1;

    invoke-direct {v3, p0}, Lcom/android/incallui/SomcWaitingVideoCallView$1;-><init>(Lcom/android/incallui/SomcWaitingVideoCallView;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v3, 0x7f0f00e7

    invoke-virtual {p0, v3}, Lcom/android/incallui/SomcWaitingVideoCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 52
    .local v1, "acceptVoiceButton":Landroid/view/View;
    new-instance v3, Lcom/android/incallui/SomcWaitingVideoCallView$2;

    invoke-direct {v3, p0}, Lcom/android/incallui/SomcWaitingVideoCallView$2;-><init>(Lcom/android/incallui/SomcWaitingVideoCallView;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v3, 0x7f0f00e9

    invoke-virtual {p0, v3}, Lcom/android/incallui/SomcWaitingVideoCallView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 64
    .local v2, "declineButton":Landroid/view/View;
    new-instance v3, Lcom/android/incallui/SomcWaitingVideoCallView$3;

    invoke-direct {v3, p0}, Lcom/android/incallui/SomcWaitingVideoCallView$3;-><init>(Lcom/android/incallui/SomcWaitingVideoCallView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    return-void
.end method

.method public setAnswerListener(Lcom/android/incallui/SomcIncomingCallAnswerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/incallui/SomcIncomingCallAnswerListener;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/incallui/SomcWaitingVideoCallView;->mAnswerListener:Lcom/android/incallui/SomcIncomingCallAnswerListener;

    .line 32
    return-void
.end method
