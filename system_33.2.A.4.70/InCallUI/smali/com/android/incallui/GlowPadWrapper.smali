.class public Lcom/android/incallui/GlowPadWrapper;
.super Lcom/android/incallui/widget/multiwaveview/GlowPadView;
.source "GlowPadWrapper.java"

# interfaces
.implements Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/GlowPadWrapper$AnswerListener;,
        Lcom/android/incallui/GlowPadWrapper$1;
    }
.end annotation


# instance fields
.field private mAnswerListener:Lcom/android/incallui/GlowPadWrapper$AnswerListener;

.field private mPingEnabled:Z

.field private final mPingHandler:Landroid/os/Handler;

.field private mTargetTriggered:Z

.field private mVideoState:I


# direct methods
.method static synthetic -wrap0(Lcom/android/incallui/GlowPadWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/GlowPadWrapper;->triggerPing()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Lcom/android/incallui/GlowPadWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/GlowPadWrapper$1;-><init>(Lcom/android/incallui/GlowPadWrapper;)V

    iput-object v0, p0, Lcom/android/incallui/GlowPadWrapper;->mPingHandler:Landroid/os/Handler;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/GlowPadWrapper;->mPingEnabled:Z

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/GlowPadWrapper;->mTargetTriggered:Z

    .line 52
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/incallui/GlowPadWrapper;->mVideoState:I

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "class created "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v0, Lcom/android/incallui/GlowPadWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/GlowPadWrapper$1;-><init>(Lcom/android/incallui/GlowPadWrapper;)V

    iput-object v0, p0, Lcom/android/incallui/GlowPadWrapper;->mPingHandler:Landroid/os/Handler;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/GlowPadWrapper;->mPingEnabled:Z

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/GlowPadWrapper;->mTargetTriggered:Z

    .line 52
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/incallui/GlowPadWrapper;->mVideoState:I

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "class created "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method private triggerPing()V
    .locals 5

    .prologue
    const/16 v4, 0x65

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "triggerPing(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/GlowPadWrapper;->mPingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-boolean v0, p0, Lcom/android/incallui/GlowPadWrapper;->mPingEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/GlowPadWrapper;->mPingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/GlowPadWrapper;->ping()V

    .line 89
    iget-object v0, p0, Lcom/android/incallui/GlowPadWrapper;->mPingHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public onFinishFinalAnimation()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 66
    const-string/jumbo v0, "onFinishInflate()"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-super {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->onFinishInflate()V

    .line 68
    invoke-virtual {p0, p0}, Lcom/android/incallui/GlowPadWrapper;->setOnTriggerListener(Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;)V

    .line 65
    return-void
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "handle"    # I

    .prologue
    .line 96
    const-string/jumbo v0, "onGrabbed()"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/incallui/GlowPadWrapper;->stopPing()V

    .line 95
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "handle"    # I

    .prologue
    .line 155
    return-void
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "handle"    # I

    .prologue
    .line 102
    const-string/jumbo v0, "onReleased()"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-boolean v0, p0, Lcom/android/incallui/GlowPadWrapper;->mTargetTriggered:Z

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/GlowPadWrapper;->mTargetTriggered:Z

    .line 101
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/GlowPadWrapper;->startPing()V

    goto :goto_0
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "target"    # I

    .prologue
    const/4 v4, 0x1

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrigger() view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0, p2}, Lcom/android/incallui/GlowPadWrapper;->getResourceIdForTarget(I)I

    move-result v0

    .line 114
    .local v0, "resId":I
    sparse-switch v0, :sswitch_data_0

    .line 150
    const-string/jumbo v1, "Trigger detected on unhandled resource. Skipping."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    :goto_0
    return-void

    .line 116
    :sswitch_0
    iget-object v1, p0, Lcom/android/incallui/GlowPadWrapper;->mAnswerListener:Lcom/android/incallui/GlowPadWrapper$AnswerListener;

    invoke-virtual {p0}, Lcom/android/incallui/GlowPadWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lcom/android/incallui/GlowPadWrapper$AnswerListener;->onAnswer(ILandroid/content/Context;)V

    .line 117
    iput-boolean v4, p0, Lcom/android/incallui/GlowPadWrapper;->mTargetTriggered:Z

    goto :goto_0

    .line 120
    :sswitch_1
    iget-object v1, p0, Lcom/android/incallui/GlowPadWrapper;->mAnswerListener:Lcom/android/incallui/GlowPadWrapper$AnswerListener;

    invoke-virtual {p0}, Lcom/android/incallui/GlowPadWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/incallui/GlowPadWrapper$AnswerListener;->onDecline(Landroid/content/Context;)V

    .line 121
    iput-boolean v4, p0, Lcom/android/incallui/GlowPadWrapper;->mTargetTriggered:Z

    goto :goto_0

    .line 124
    :sswitch_2
    iget-object v1, p0, Lcom/android/incallui/GlowPadWrapper;->mAnswerListener:Lcom/android/incallui/GlowPadWrapper$AnswerListener;

    invoke-interface {v1}, Lcom/android/incallui/GlowPadWrapper$AnswerListener;->onText()V

    .line 125
    iput-boolean v4, p0, Lcom/android/incallui/GlowPadWrapper;->mTargetTriggered:Z

    goto :goto_0

    .line 129
    :sswitch_3
    iget-object v1, p0, Lcom/android/incallui/GlowPadWrapper;->mAnswerListener:Lcom/android/incallui/GlowPadWrapper$AnswerListener;

    iget v2, p0, Lcom/android/incallui/GlowPadWrapper;->mVideoState:I

    invoke-virtual {p0}, Lcom/android/incallui/GlowPadWrapper;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/incallui/GlowPadWrapper$AnswerListener;->onAnswer(ILandroid/content/Context;)V

    .line 130
    iput-boolean v4, p0, Lcom/android/incallui/GlowPadWrapper;->mTargetTriggered:Z

    goto :goto_0

    .line 133
    :sswitch_4
    iget-object v1, p0, Lcom/android/incallui/GlowPadWrapper;->mAnswerListener:Lcom/android/incallui/GlowPadWrapper$AnswerListener;

    invoke-virtual {p0}, Lcom/android/incallui/GlowPadWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/incallui/GlowPadWrapper$AnswerListener;->onDeclineUpgradeRequest(Landroid/content/Context;)V

    .line 134
    iput-boolean v4, p0, Lcom/android/incallui/GlowPadWrapper;->mTargetTriggered:Z

    goto :goto_0

    .line 137
    :sswitch_5
    iget-object v1, p0, Lcom/android/incallui/GlowPadWrapper;->mAnswerListener:Lcom/android/incallui/GlowPadWrapper$AnswerListener;

    invoke-virtual {p0}, Lcom/android/incallui/GlowPadWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lcom/android/incallui/GlowPadWrapper$AnswerListener;->onAnswer(ILandroid/content/Context;)V

    .line 138
    iput-boolean v4, p0, Lcom/android/incallui/GlowPadWrapper;->mTargetTriggered:Z

    goto :goto_0

    .line 141
    :sswitch_6
    iget-object v1, p0, Lcom/android/incallui/GlowPadWrapper;->mAnswerListener:Lcom/android/incallui/GlowPadWrapper$AnswerListener;

    invoke-virtual {p0}, Lcom/android/incallui/GlowPadWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v1, v3, v2}, Lcom/android/incallui/GlowPadWrapper$AnswerListener;->onAnswer(ILandroid/content/Context;)V

    .line 142
    iput-boolean v4, p0, Lcom/android/incallui/GlowPadWrapper;->mTargetTriggered:Z

    goto :goto_0

    .line 145
    :sswitch_7
    iget-object v1, p0, Lcom/android/incallui/GlowPadWrapper;->mAnswerListener:Lcom/android/incallui/GlowPadWrapper$AnswerListener;

    invoke-virtual {p0}, Lcom/android/incallui/GlowPadWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/incallui/GlowPadWrapper$AnswerListener;->onDeflect(Landroid/content/Context;)V

    .line 146
    iput-boolean v4, p0, Lcom/android/incallui/GlowPadWrapper;->mTargetTriggered:Z

    goto :goto_0

    .line 114
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f020071 -> :sswitch_0
        0x7f020075 -> :sswitch_3
        0x7f020078 -> :sswitch_1
        0x7f02007d -> :sswitch_4
        0x7f020083 -> :sswitch_2
        0x7f0200bc -> :sswitch_3
        0x7f0200ea -> :sswitch_6
        0x7f0200ed -> :sswitch_5
        0x7f0200f0 -> :sswitch_7
    .end sparse-switch
.end method

.method public startPing()V
    .locals 1

    .prologue
    .line 72
    const-string/jumbo v0, "startPing"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/GlowPadWrapper;->mPingEnabled:Z

    .line 74
    invoke-direct {p0}, Lcom/android/incallui/GlowPadWrapper;->triggerPing()V

    .line 71
    return-void
.end method

.method public stopPing()V
    .locals 2

    .prologue
    .line 78
    const-string/jumbo v0, "stopPing"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/GlowPadWrapper;->mPingEnabled:Z

    .line 80
    iget-object v0, p0, Lcom/android/incallui/GlowPadWrapper;->mPingHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 77
    return-void
.end method
