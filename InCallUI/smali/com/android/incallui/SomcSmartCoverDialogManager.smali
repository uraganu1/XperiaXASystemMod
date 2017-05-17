.class public Lcom/android/incallui/SomcSmartCoverDialogManager;
.super Ljava/lang/Object;
.source "SomcSmartCoverDialogManager.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSmallDialog:Landroid/app/Dialog;

.field private mSmallViewDialogMarginBottom:I

.field private mSmallViewDialogMarginStart:I


# direct methods
.method private getMessageIdForSmartCover()I
    .locals 5

    .prologue
    .line 122
    const/4 v3, -0x1

    .line 124
    .local v3, "resId":I
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 125
    .local v1, "callList":Lcom/android/incallui/CallList;
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v2

    .line 126
    .local v2, "primaryCall":Lcom/android/incallui/Call;
    if-nez v2, :cond_0

    .line 127
    return v3

    .line 130
    :cond_0
    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 168
    :cond_1
    :goto_0
    :pswitch_0
    return v3

    .line 132
    :pswitch_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 133
    .local v0, "activeCall":Lcom/android/incallui/Call;
    iget-object v4, p0, Lcom/android/incallui/SomcSmartCoverDialogManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/android/incallui/Call;->isVideoCall(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 134
    const v3, 0x7f0b02d8

    goto :goto_0

    .line 135
    :cond_2
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/SomcInCallUiUtils;->isCdmaPhone()Z

    move-result v4

    if-nez v4, :cond_1

    .line 136
    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v4

    if-nez v4, :cond_1

    .line 137
    const v3, 0x7f0b02d5

    goto :goto_0

    .line 142
    .end local v0    # "activeCall":Lcom/android/incallui/Call;
    :pswitch_2
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/incallui/SomcInCallUiUtils;->isCdmaPhone()Z

    move-result v4

    if-nez v4, :cond_1

    .line 143
    const v3, 0x7f0b02d5

    goto :goto_0

    .line 147
    :pswitch_3
    invoke-static {v2}, Lcom/android/incallui/CallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v2}, Lcom/android/incallui/SomcInCallUiUtils;->isUpgradedToVideoOrSharedToVideo(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 149
    :cond_3
    const v3, 0x7f0b02d9

    goto :goto_0

    .line 151
    :cond_4
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 152
    const v3, 0x7f0b02d6

    goto :goto_0

    .line 157
    :pswitch_4
    const v3, 0x7f0b02d7

    .line 158
    goto :goto_0

    .line 160
    :pswitch_5
    iget-object v4, p0, Lcom/android/incallui/SomcSmartCoverDialogManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/android/incallui/Call;->isVideoCall(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 161
    const v3, 0x7f0b02d9

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private needToUpdateMessageSmartCover(I)Z
    .locals 5
    .param p1, "resId"    # I

    .prologue
    const/4 v4, 0x1

    .line 72
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/android/incallui/SomcSmartCoverDialogManager;->mSmallDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_2

    .line 74
    iget-object v2, p0, Lcom/android/incallui/SomcSmartCoverDialogManager;->mSmallDialog:Landroid/app/Dialog;

    const v3, 0x7f0f00e2

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 75
    .local v0, "textView":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/incallui/SomcSmartCoverDialogManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 76
    .local v1, "updateMsg":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    .end local v0    # "textView":Landroid/widget/TextView;
    .end local v1    # "updateMsg":Ljava/lang/CharSequence;
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 77
    .restart local v0    # "textView":Landroid/widget/TextView;
    .restart local v1    # "updateMsg":Ljava/lang/CharSequence;
    :cond_1
    return v4

    .line 80
    .end local v0    # "textView":Landroid/widget/TextView;
    .end local v1    # "updateMsg":Ljava/lang/CharSequence;
    :cond_2
    return v4
.end method

.method private showSmartCoverMessageDialog(I)V
    .locals 7
    .param p1, "resId"    # I

    .prologue
    const/4 v6, 0x0

    .line 87
    iget-object v4, p0, Lcom/android/incallui/SomcSmartCoverDialogManager;->mContext:Landroid/content/Context;

    .line 88
    const-string/jumbo v5, "layout_inflater"

    .line 87
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 89
    .local v1, "layoutInflate":Landroid/view/LayoutInflater;
    const v4, 0x7f04004a

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 90
    .local v0, "content":Landroid/view/View;
    const v4, 0x7f0f00e2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 91
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 92
    iget-object v4, p0, Lcom/android/incallui/SomcSmartCoverDialogManager;->mSmallDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_0

    .line 93
    iget-object v4, p0, Lcom/android/incallui/SomcSmartCoverDialogManager;->mSmallDialog:Landroid/app/Dialog;

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 94
    iget-object v4, p0, Lcom/android/incallui/SomcSmartCoverDialogManager;->mSmallDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 95
    return-void

    .line 98
    :cond_0
    const/16 v4, 0x1e06

    invoke-virtual {v0, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 104
    new-instance v4, Landroid/app/Dialog;

    iget-object v5, p0, Lcom/android/incallui/SomcSmartCoverDialogManager;->mContext:Landroid/content/Context;

    const v6, 0x7f0d0020

    invoke-direct {v4, v5, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/android/incallui/SomcSmartCoverDialogManager;->mSmallDialog:Landroid/app/Dialog;

    .line 105
    iget-object v4, p0, Lcom/android/incallui/SomcSmartCoverDialogManager;->mSmallDialog:Landroid/app/Dialog;

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 109
    iget-object v4, p0, Lcom/android/incallui/SomcSmartCoverDialogManager;->mSmallDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x53

    invoke-virtual {v4, v5}, Landroid/view/Window;->setGravity(I)V

    .line 110
    iget-object v4, p0, Lcom/android/incallui/SomcSmartCoverDialogManager;->mSmallDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 111
    iget-object v5, p0, Lcom/android/incallui/SomcSmartCoverDialogManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08012e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 112
    const/4 v6, -0x2

    .line 110
    invoke-virtual {v4, v5, v6}, Landroid/view/Window;->setLayout(II)V

    .line 113
    iget-object v4, p0, Lcom/android/incallui/SomcSmartCoverDialogManager;->mSmallDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 114
    .local v3, "wmlp":Landroid/view/WindowManager$LayoutParams;
    iget v4, p0, Lcom/android/incallui/SomcSmartCoverDialogManager;->mSmallViewDialogMarginBottom:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 115
    iget v4, p0, Lcom/android/incallui/SomcSmartCoverDialogManager;->mSmallViewDialogMarginStart:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 116
    iget-object v4, p0, Lcom/android/incallui/SomcSmartCoverDialogManager;->mSmallDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 118
    iget-object v4, p0, Lcom/android/incallui/SomcSmartCoverDialogManager;->mSmallDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 86
    return-void
.end method


# virtual methods
.method public updateSmartCoverMessageDialog(Z)V
    .locals 3
    .param p1, "isShow"    # Z

    .prologue
    const/4 v2, 0x0

    .line 53
    if-eqz p1, :cond_2

    .line 54
    invoke-direct {p0}, Lcom/android/incallui/SomcSmartCoverDialogManager;->getMessageIdForSmartCover()I

    move-result v0

    .line 55
    .local v0, "resId":I
    invoke-direct {p0, v0}, Lcom/android/incallui/SomcSmartCoverDialogManager;->needToUpdateMessageSmartCover(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    invoke-direct {p0, v0}, Lcom/android/incallui/SomcSmartCoverDialogManager;->showSmartCoverMessageDialog(I)V

    .line 52
    .end local v0    # "resId":I
    :cond_0
    :goto_0
    return-void

    .line 57
    .restart local v0    # "resId":I
    :cond_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/android/incallui/SomcSmartCoverDialogManager;->mSmallDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/android/incallui/SomcSmartCoverDialogManager;->mSmallDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 60
    iput-object v2, p0, Lcom/android/incallui/SomcSmartCoverDialogManager;->mSmallDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 64
    .end local v0    # "resId":I
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/SomcSmartCoverDialogManager;->mSmallDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/android/incallui/SomcSmartCoverDialogManager;->mSmallDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 66
    iput-object v2, p0, Lcom/android/incallui/SomcSmartCoverDialogManager;->mSmallDialog:Landroid/app/Dialog;

    goto :goto_0
.end method
