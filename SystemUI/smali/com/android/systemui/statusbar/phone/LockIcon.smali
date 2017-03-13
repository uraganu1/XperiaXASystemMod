.class public Lcom/android/systemui/statusbar/phone/LockIcon;
.super Lcom/android/systemui/statusbar/KeyguardAffordanceView;
.source "LockIcon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/LockIcon$IntrinsicSizeDrawable;
    }
.end annotation


# instance fields
.field private mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

.field private mDeviceInteractive:Z

.field private mHasFingerPrintIcon:Z

.field private mLastDeviceInteractive:Z

.field private mLastScreenOn:Z

.field private mLastState:I

.field private mScreenOn:Z

.field private mTransientFpError:Z

.field private final mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    .line 57
    new-instance v0, Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/TrustDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 59
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 55
    return-void
.end method

.method private getAnimationResForTransition(IIZZZZ)I
    .locals 3
    .param p1, "oldState"    # I
    .param p2, "newState"    # I
    .param p3, "oldDeviceInteractive"    # Z
    .param p4, "deviceInteractive"    # Z
    .param p5, "oldScreenOn"    # Z
    .param p6, "screenOn"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x4

    const/4 v1, 0x3

    .line 227
    if-ne p1, v1, :cond_0

    if-ne p2, v0, :cond_0

    .line 228
    const v0, 0x7f02011d

    return v0

    .line 229
    :cond_0
    if-ne p1, v2, :cond_1

    if-ne p2, v0, :cond_1

    .line 230
    const v0, 0x7f02020a

    return v0

    .line 231
    :cond_1
    if-ne p1, v0, :cond_2

    if-ne p2, v2, :cond_2

    .line 232
    const v0, 0x7f020022

    return v0

    .line 233
    :cond_2
    if-ne p1, v0, :cond_3

    if-ne p2, v1, :cond_3

    .line 234
    const v0, 0x7f02011b

    return v0

    .line 235
    :cond_3
    if-ne p1, v1, :cond_4

    if-ne p2, v2, :cond_4

    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrusted()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 238
    :cond_4
    if-ne p2, v1, :cond_6

    if-nez p5, :cond_5

    if-eqz p6, :cond_5

    if-nez p4, :cond_9

    .line 239
    :cond_5
    if-eqz p6, :cond_6

    if-eqz p3, :cond_8

    .line 242
    :cond_6
    const/4 v0, -0x1

    return v0

    .line 237
    :cond_7
    const v0, 0x7f020117

    return v0

    .line 238
    :cond_8
    if-eqz p4, :cond_6

    .line 240
    :cond_9
    const v0, 0x7f020119

    return v0
.end method

.method private getIconForState(IZZ)I
    .locals 1
    .param p1, "state"    # I
    .param p2, "screenOn"    # Z
    .param p3, "deviceInteractive"    # Z

    .prologue
    .line 204
    packed-switch p1, :pswitch_data_0

    .line 220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 206
    :pswitch_0
    const v0, 0x7f020052

    return v0

    .line 208
    :pswitch_1
    const v0, 0x7f020053

    return v0

    .line 210
    :pswitch_2
    const v0, 0x10802f5

    return v0

    .line 214
    :pswitch_3
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 215
    const v0, 0x7f020041

    .line 214
    :goto_0
    return v0

    .line 216
    :cond_0
    const v0, 0x7f020119

    goto :goto_0

    .line 218
    :pswitch_4
    const v0, 0x7f020042

    return v0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getState()I
    .locals 4

    .prologue
    .line 247
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    .line 248
    .local v2, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v0

    .line 249
    .local v0, "fingerprintRunning":Z
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v1

    .line 250
    .local v1, "unlockingAllowed":Z
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTransientFpError:Z

    if-eqz v3, :cond_0

    .line 251
    const/4 v3, 0x4

    return v3

    .line 252
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 253
    const/4 v3, 0x1

    return v3

    .line 254
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isFaceUnlockRunning()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 255
    const/4 v3, 0x2

    return v3

    .line 256
    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 257
    const/4 v3, 0x3

    return v3

    .line 259
    :cond_3
    const/4 v3, 0x0

    return v3
.end method

.method private updateClickability()V
    .locals 4

    .prologue
    .line 172
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    if-nez v3, :cond_0

    .line 173
    return-void

    .line 175
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isTouchExplorationEnabled()Z

    move-result v1

    .line 176
    .local v1, "clickToUnlock":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 177
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    .line 178
    .local v0, "clickToForceLock":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 179
    if-eqz v0, :cond_3

    const/4 v2, 0x0

    .line 180
    .local v2, "longClickToForceLock":Z
    :goto_1
    if-nez v0, :cond_5

    .end local v1    # "clickToUnlock":Z
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setClickable(Z)V

    .line 181
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setLongClickable(Z)V

    .line 182
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/LockIcon;->setFocusable(Z)V

    .line 171
    return-void

    .line 177
    .end local v0    # "clickToForceLock":Z
    .end local v2    # "longClickToForceLock":Z
    .restart local v1    # "clickToUnlock":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "clickToForceLock":Z
    goto :goto_0

    .line 176
    .end local v0    # "clickToForceLock":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "clickToForceLock":Z
    goto :goto_0

    .line 179
    :cond_3
    const/4 v2, 0x1

    .restart local v2    # "longClickToForceLock":Z
    goto :goto_1

    .line 178
    .end local v2    # "longClickToForceLock":Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "longClickToForceLock":Z
    goto :goto_1

    .line 180
    :cond_5
    const/4 v1, 0x1

    goto :goto_2
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onDetachedFromWindow()V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    .line 74
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 188
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mHasFingerPrintIcon:Z

    if-eqz v1, :cond_0

    .line 190
    const-class v1, Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 192
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 194
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900c8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 193
    const/16 v2, 0x10

    .line 192
    invoke-direct {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 195
    .local v0, "unlock":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 186
    .end local v0    # "unlock":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->start()V

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 63
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    goto :goto_0
.end method

.method public setAccessibilityController(Lcom/android/systemui/statusbar/policy/AccessibilityController;)V
    .locals 0
    .param p1, "accessibilityController"    # Lcom/android/systemui/statusbar/policy/AccessibilityController;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    .line 199
    return-void
.end method

.method public setDeviceInteractive(Z)V
    .locals 0
    .param p1, "deviceInteractive"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 84
    return-void
.end method

.method public setScreenOn(Z)V
    .locals 0
    .param p1, "screenOn"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 89
    return-void
.end method

.method public setTransientFpError(Z)V
    .locals 0
    .param p1, "transientFpError"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTransientFpError:Z

    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 79
    return-void
.end method

.method public update()V
    .locals 21

    .prologue
    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->isShown()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 96
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v20

    .line 97
    :goto_0
    if-eqz v20, :cond_a

    .line 98
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->start()V

    .line 103
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getState()I

    move-result v3

    .line 104
    .local v3, "state":I
    const/4 v1, 0x3

    if-eq v3, v1, :cond_0

    const/4 v1, 0x4

    if-ne v3, v1, :cond_b

    :cond_0
    const/4 v9, 0x1

    .line 105
    .local v9, "anyFingerprintIcon":Z
    :goto_2
    move/from16 v19, v9

    .line 106
    .local v19, "useAdditionalPadding":Z
    move/from16 v17, v9

    .line 107
    .local v17, "trustHidden":Z
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    if-ne v3, v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    if-eq v1, v2, :cond_c

    .line 109
    :cond_1
    :goto_3
    const/16 v16, 0x1

    .line 110
    .local v16, "isAnim":Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    .line 111
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    move-object/from16 v1, p0

    .line 110
    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/LockIcon;->getAnimationResForTransition(IIZZZZ)I

    move-result v14

    .line 112
    .local v14, "iconRes":I
    const v1, 0x7f020117

    if-ne v14, v1, :cond_d

    .line 113
    const/4 v9, 0x1

    .line 114
    const/16 v19, 0x1

    .line 115
    .local v19, "useAdditionalPadding":Z
    const/16 v17, 0x1

    .line 125
    .end local v17    # "trustHidden":Z
    .end local v19    # "useAdditionalPadding":Z
    :cond_2
    :goto_4
    const/4 v1, -0x1

    if-ne v14, v1, :cond_3

    .line 126
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v1, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->getIconForState(IZZ)I

    move-result v14

    .line 127
    const/16 v16, 0x0

    .line 129
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v14}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 130
    .local v11, "icon":Landroid/graphics/drawable/Drawable;
    instance-of v1, v11, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v1, :cond_f

    move-object v8, v11

    .line 131
    check-cast v8, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 133
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 134
    const v2, 0x7f0a00b2

    .line 133
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 135
    .local v13, "iconHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 136
    const v2, 0x7f0a00b3

    .line 135
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 137
    .local v15, "iconWidth":I
    if-nez v9, :cond_5

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-ne v1, v13, :cond_4

    .line 138
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-eq v1, v15, :cond_5

    .line 139
    :cond_4
    new-instance v12, Lcom/android/systemui/statusbar/phone/LockIcon$IntrinsicSizeDrawable;

    invoke-direct {v12, v11, v15, v13}, Lcom/android/systemui/statusbar/phone/LockIcon$IntrinsicSizeDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .end local v11    # "icon":Landroid/graphics/drawable/Drawable;
    .local v12, "icon":Landroid/graphics/drawable/Drawable;
    move-object v11, v12

    .line 141
    .end local v12    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v11    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_5
    if-eqz v19, :cond_10

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 143
    const v2, 0x7f0a00ce

    .line 142
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 141
    :goto_6
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setPaddingRelative(IIII)V

    .line 146
    if-eqz v9, :cond_11

    const/high16 v1, 0x3f800000    # 1.0f

    .line 145
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setRestingAlpha(F)V

    .line 147
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/phone/LockIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v9, :cond_12

    .line 149
    const v1, 0x7f0900c7

    .line 148
    :goto_8
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 151
    .local v10, "contentDescription":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/phone/LockIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 152
    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mHasFingerPrintIcon:Z

    .line 153
    if-eqz v8, :cond_6

    if-eqz v16, :cond_6

    .line 154
    invoke-virtual {v8}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 156
    :cond_6
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    .line 157
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    .line 158
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    .line 162
    .end local v10    # "contentDescription":Ljava/lang/String;
    .end local v11    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v13    # "iconHeight":I
    .end local v14    # "iconRes":I
    .end local v15    # "iconWidth":I
    .end local v16    # "isAnim":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v17, :cond_13

    :cond_8
    const/16 v18, 0x0

    .line 163
    .local v18, "trustManaged":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    move/from16 v0, v18

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->setTrustManaged(Z)V

    .line 164
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateClickability()V

    .line 94
    return-void

    .line 95
    .end local v3    # "state":I
    .end local v9    # "anyFingerprintIcon":Z
    .end local v18    # "trustManaged":Z
    :cond_9
    const/16 v20, 0x0

    .local v20, "visible":Z
    goto/16 :goto_0

    .line 100
    .end local v20    # "visible":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    goto/16 :goto_1

    .line 104
    .restart local v3    # "state":I
    :cond_b
    const/4 v9, 0x0

    .restart local v9    # "anyFingerprintIcon":Z
    goto/16 :goto_2

    .line 108
    .restart local v17    # "trustHidden":Z
    .local v19, "useAdditionalPadding":Z
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    if-eq v1, v2, :cond_7

    goto/16 :goto_3

    .line 116
    .restart local v14    # "iconRes":I
    .restart local v16    # "isAnim":Z
    :cond_d
    const v1, 0x7f02020a

    if-ne v14, v1, :cond_e

    .line 117
    const/4 v9, 0x1

    .line 118
    const/16 v19, 0x0

    .line 119
    .local v19, "useAdditionalPadding":Z
    const/16 v17, 0x1

    .local v17, "trustHidden":Z
    goto/16 :goto_4

    .line 120
    .local v17, "trustHidden":Z
    .local v19, "useAdditionalPadding":Z
    :cond_e
    const v1, 0x7f020022

    if-ne v14, v1, :cond_2

    .line 121
    const/4 v9, 0x1

    .line 122
    const/16 v19, 0x0

    .line 123
    .local v19, "useAdditionalPadding":Z
    const/16 v17, 0x0

    .local v17, "trustHidden":Z
    goto/16 :goto_4

    .line 132
    .end local v17    # "trustHidden":Z
    .end local v19    # "useAdditionalPadding":Z
    .restart local v11    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_f
    const/4 v8, 0x0

    .local v8, "animation":Landroid/graphics/drawable/AnimatedVectorDrawable;
    goto/16 :goto_5

    .line 144
    .end local v8    # "animation":Landroid/graphics/drawable/AnimatedVectorDrawable;
    .restart local v13    # "iconHeight":I
    .restart local v15    # "iconWidth":I
    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_6

    .line 146
    :cond_11
    const/high16 v1, 0x3f000000    # 0.5f

    goto/16 :goto_7

    .line 150
    :cond_12
    const v1, 0x7f0900c6

    goto/16 :goto_8

    .line 162
    .end local v11    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v13    # "iconHeight":I
    .end local v14    # "iconRes":I
    .end local v15    # "iconWidth":I
    .end local v16    # "isAnim":Z
    :cond_13
    const/16 v18, 0x1

    .restart local v18    # "trustManaged":Z
    goto :goto_9
.end method

.method public updateTrustDrawableColor(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "r"    # Landroid/content/res/Resources;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->updatePaintColor(Landroid/content/res/Resources;)V

    .line 167
    return-void
.end method
