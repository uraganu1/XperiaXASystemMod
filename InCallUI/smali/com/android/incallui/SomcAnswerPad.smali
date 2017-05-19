.class public Lcom/android/incallui/SomcAnswerPad;
.super Ljava/lang/Object;
.source "SomcAnswerPad.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;
    }
.end annotation


# static fields
.field private static synthetic -com_android_incallui_SomcAnswerPad$SomcAnswerPadModeSwitchesValues:[I


# instance fields
.field private final mAnswerListener:Lcom/android/incallui/SomcIncomingCallAnswerListener;

.field protected mAnswerSlidingTab:Lcom/android/incallui/SomcSlidingTab;

.field private mMode:Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;

.field private mUpgradeRequestPopup:Landroid/app/AlertDialog;

.field private mVideoAnswerSlidingTab:Lcom/android/incallui/SomcSlidingTab;

.field private final mWaitingVideoCallView:Lcom/android/incallui/SomcWaitingVideoCallView;


# direct methods
.method static synthetic -get0(Lcom/android/incallui/SomcAnswerPad;)Lcom/android/incallui/SomcIncomingCallAnswerListener;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SomcAnswerPad;->mAnswerListener:Lcom/android/incallui/SomcIncomingCallAnswerListener;

    return-object v0
.end method

.method private static synthetic -getcom_android_incallui_SomcAnswerPad$SomcAnswerPadModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/incallui/SomcAnswerPad;->-com_android_incallui_SomcAnswerPad$SomcAnswerPadModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/SomcAnswerPad;->-com_android_incallui_SomcAnswerPad$SomcAnswerPadModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;->values()[Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;->VIDEO:Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;

    invoke-virtual {v1}, Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;->VIDEO_WAITING:Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;

    invoke-virtual {v1}, Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;->VOICE:Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;

    invoke-virtual {v1}, Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/incallui/SomcAnswerPad;->-com_android_incallui_SomcAnswerPad$SomcAnswerPadModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/incallui/SomcIncomingCallAnswerListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragmentRootView"    # Landroid/view/View;
    .param p3, "listener"    # Lcom/android/incallui/SomcIncomingCallAnswerListener;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SomcAnswerPad;->mUpgradeRequestPopup:Landroid/app/AlertDialog;

    .line 39
    sget-object v0, Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;->VOICE:Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;

    iput-object v0, p0, Lcom/android/incallui/SomcAnswerPad;->mMode:Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;

    .line 49
    iput-object p3, p0, Lcom/android/incallui/SomcAnswerPad;->mAnswerListener:Lcom/android/incallui/SomcIncomingCallAnswerListener;

    .line 51
    const v0, 0x7f0f00d6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SomcSlidingTab;

    iput-object v0, p0, Lcom/android/incallui/SomcAnswerPad;->mAnswerSlidingTab:Lcom/android/incallui/SomcSlidingTab;

    .line 52
    iget-object v0, p0, Lcom/android/incallui/SomcAnswerPad;->mAnswerSlidingTab:Lcom/android/incallui/SomcSlidingTab;

    invoke-virtual {v0, p3}, Lcom/android/incallui/SomcSlidingTab;->setAnswerListener(Lcom/android/incallui/SomcIncomingCallAnswerListener;)V

    .line 54
    const v0, 0x7f0f00eb

    .line 53
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SomcSlidingTab;

    iput-object v0, p0, Lcom/android/incallui/SomcAnswerPad;->mVideoAnswerSlidingTab:Lcom/android/incallui/SomcSlidingTab;

    .line 55
    iget-object v0, p0, Lcom/android/incallui/SomcAnswerPad;->mVideoAnswerSlidingTab:Lcom/android/incallui/SomcSlidingTab;

    invoke-virtual {v0, p3}, Lcom/android/incallui/SomcSlidingTab;->setAnswerListener(Lcom/android/incallui/SomcIncomingCallAnswerListener;)V

    .line 58
    const v0, 0x7f0f00e4

    .line 57
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SomcWaitingVideoCallView;

    iput-object v0, p0, Lcom/android/incallui/SomcAnswerPad;->mWaitingVideoCallView:Lcom/android/incallui/SomcWaitingVideoCallView;

    .line 59
    iget-object v0, p0, Lcom/android/incallui/SomcAnswerPad;->mWaitingVideoCallView:Lcom/android/incallui/SomcWaitingVideoCallView;

    invoke-virtual {v0, p3}, Lcom/android/incallui/SomcWaitingVideoCallView;->setAnswerListener(Lcom/android/incallui/SomcIncomingCallAnswerListener;)V

    .line 48
    return-void
.end method

.method private isVideoRequestPopupShowing()Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/incallui/SomcAnswerPad;->mUpgradeRequestPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/incallui/SomcAnswerPad;->mUpgradeRequestPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    return v0

    .line 189
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public dismissVideoRequestPopup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 164
    iget-object v0, p0, Lcom/android/incallui/SomcAnswerPad;->mUpgradeRequestPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/incallui/SomcAnswerPad;->mUpgradeRequestPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 166
    iput-object v1, p0, Lcom/android/incallui/SomcAnswerPad;->mUpgradeRequestPopup:Landroid/app/AlertDialog;

    .line 163
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/incallui/SomcAnswerPad;->mAnswerSlidingTab:Lcom/android/incallui/SomcSlidingTab;

    invoke-virtual {v0}, Lcom/android/incallui/SomcSlidingTab;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/incallui/SomcAnswerPad;->mAnswerSlidingTab:Lcom/android/incallui/SomcSlidingTab;

    invoke-virtual {v0, p1}, Lcom/android/incallui/SomcSlidingTab;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 116
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method setMode(Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;)V
    .locals 2
    .param p1, "mode"    # Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/android/incallui/SomcAnswerPad;->-getcom_android_incallui_SomcAnswerPad$SomcAnswerPadModeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 80
    :goto_0
    iput-object p1, p0, Lcom/android/incallui/SomcAnswerPad;->mMode:Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SomcAnswerPad;->setVisibility(I)V

    .line 82
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->reportFullyDrawn()V

    .line 67
    return-void

    .line 72
    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/SomcAnswerPad;->mAnswerSlidingTab:Lcom/android/incallui/SomcSlidingTab;

    invoke-virtual {v0}, Lcom/android/incallui/SomcSlidingTab;->initVoiceSlider()V

    goto :goto_0

    .line 75
    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/SomcAnswerPad;->mAnswerSlidingTab:Lcom/android/incallui/SomcSlidingTab;

    invoke-virtual {v0}, Lcom/android/incallui/SomcSlidingTab;->initVideoSlider()V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/16 v2, 0x8

    .line 91
    iget-object v0, p0, Lcom/android/incallui/SomcAnswerPad;->mMode:Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;

    sget-object v1, Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;->VOICE:Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;

    if-ne v0, v1, :cond_1

    .line 92
    iget-object v0, p0, Lcom/android/incallui/SomcAnswerPad;->mAnswerSlidingTab:Lcom/android/incallui/SomcSlidingTab;

    invoke-virtual {v0, p1}, Lcom/android/incallui/SomcSlidingTab;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/android/incallui/SomcAnswerPad;->mVideoAnswerSlidingTab:Lcom/android/incallui/SomcSlidingTab;

    invoke-virtual {v0, v2}, Lcom/android/incallui/SomcSlidingTab;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/android/incallui/SomcAnswerPad;->mWaitingVideoCallView:Lcom/android/incallui/SomcWaitingVideoCallView;

    invoke-virtual {v0, v2}, Lcom/android/incallui/SomcWaitingVideoCallView;->setVisibility(I)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SomcAnswerPad;->mMode:Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;

    sget-object v1, Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;->VIDEO:Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;

    if-ne v0, v1, :cond_2

    .line 96
    iget-object v0, p0, Lcom/android/incallui/SomcAnswerPad;->mAnswerSlidingTab:Lcom/android/incallui/SomcSlidingTab;

    invoke-virtual {v0, p1}, Lcom/android/incallui/SomcSlidingTab;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/android/incallui/SomcAnswerPad;->mVideoAnswerSlidingTab:Lcom/android/incallui/SomcSlidingTab;

    invoke-virtual {v0, p1}, Lcom/android/incallui/SomcSlidingTab;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/android/incallui/SomcAnswerPad;->mWaitingVideoCallView:Lcom/android/incallui/SomcWaitingVideoCallView;

    invoke-virtual {v0, v2}, Lcom/android/incallui/SomcWaitingVideoCallView;->setVisibility(I)V

    goto :goto_0

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SomcAnswerPad;->mMode:Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;

    sget-object v1, Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;->VIDEO_WAITING:Lcom/android/incallui/SomcAnswerPad$SomcAnswerPadMode;

    if-ne v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/incallui/SomcAnswerPad;->mAnswerSlidingTab:Lcom/android/incallui/SomcSlidingTab;

    invoke-virtual {v0, v2}, Lcom/android/incallui/SomcSlidingTab;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/android/incallui/SomcAnswerPad;->mVideoAnswerSlidingTab:Lcom/android/incallui/SomcSlidingTab;

    invoke-virtual {v0, v2}, Lcom/android/incallui/SomcSlidingTab;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/android/incallui/SomcAnswerPad;->mWaitingVideoCallView:Lcom/android/incallui/SomcWaitingVideoCallView;

    invoke-virtual {v0, p1}, Lcom/android/incallui/SomcWaitingVideoCallView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showUpgradeRequestDialog(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "videoState"    # I

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/incallui/SomcAnswerPad;->isVideoRequestPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    const-string/jumbo v2, "Video request popup is already showing."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    return-void

    .line 131
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 132
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 133
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 134
    const v1, 0x7f0b028f

    .line 135
    .local v1, "messageId":I
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 137
    new-instance v2, Lcom/android/incallui/SomcAnswerPad$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/incallui/SomcAnswerPad$1;-><init>(Lcom/android/incallui/SomcAnswerPad;ILandroid/content/Context;)V

    .line 136
    const v3, 0x7f0b0288

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 146
    new-instance v2, Lcom/android/incallui/SomcAnswerPad$2;

    invoke-direct {v2, p0, p1}, Lcom/android/incallui/SomcAnswerPad$2;-><init>(Lcom/android/incallui/SomcAnswerPad;Landroid/content/Context;)V

    .line 145
    const v3, 0x7f0b0289

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 155
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SomcAnswerPad;->mUpgradeRequestPopup:Landroid/app/AlertDialog;

    .line 156
    iget-object v2, p0, Lcom/android/incallui/SomcAnswerPad;->mUpgradeRequestPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 157
    iget-object v2, p0, Lcom/android/incallui/SomcAnswerPad;->mUpgradeRequestPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 125
    return-void

    .line 134
    .end local v1    # "messageId":I
    :cond_1
    const v1, 0x7f0b0287

    .restart local v1    # "messageId":I
    goto :goto_0
.end method

.method public showVideoRequestPopup(Z)V
    .locals 1
    .param p1, "isShow"    # Z

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/incallui/SomcAnswerPad;->mUpgradeRequestPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 177
    if-eqz p1, :cond_1

    .line 178
    iget-object v0, p0, Lcom/android/incallui/SomcAnswerPad;->mUpgradeRequestPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SomcAnswerPad;->mUpgradeRequestPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    goto :goto_0
.end method
