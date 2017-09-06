.class public Lcom/android/phone/common/dialpad/DialpadKeyButton;
.super Landroid/widget/FrameLayout;
.source "DialpadKeyButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/common/dialpad/DialpadKeyButton$OnPressedListener;
    }
.end annotation


# static fields
.field private static final LONG_HOVER_TIMEOUT:I


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mBackupContentDesc:Ljava/lang/CharSequence;

.field private mHoverBounds:Landroid/graphics/Rect;

.field private mLongHoverContentDesc:Ljava/lang/CharSequence;

.field private mLongHoverRunnable:Ljava/lang/Runnable;

.field private mLongHovered:Z

.field private mOnPressedListener:Lcom/android/phone/common/dialpad/DialpadKeyButton$OnPressedListener;

.field private mWasClickable:Z

.field private mWasLongClickable:Z


# direct methods
.method static synthetic -get0(Lcom/android/phone/common/dialpad/DialpadKeyButton;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHoverContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/common/dialpad/DialpadKeyButton;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setLongHovered(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->LONG_HOVER_TIMEOUT:I

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mHoverBounds:Landroid/graphics/Rect;

    .line 86
    invoke-direct {p0, p1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->initForAccessibility(Landroid/content/Context;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mHoverBounds:Landroid/graphics/Rect;

    .line 91
    invoke-direct {p0, p1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->initForAccessibility(Landroid/content/Context;)V

    .line 89
    return-void
.end method

.method private cancelLongHover()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHoverRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 227
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setLongHovered(Z)V

    .line 223
    return-void
.end method

.method private initForAccessibility(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    const-string/jumbo v0, "accessibility"

    .line 95
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 94
    return-void
.end method

.method private setLongHovered(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHovered:Z

    if-eq v0, p1, :cond_0

    .line 211
    iput-boolean p1, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHovered:Z

    .line 214
    if-eqz p1, :cond_1

    .line 215
    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mBackupContentDesc:Ljava/lang/CharSequence;

    .line 216
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHoverContentDesc:Ljava/lang/CharSequence;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mBackupContentDesc:Ljava/lang/CharSequence;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private simulateClickForAccessibility()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 196
    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    return-void

    .line 200
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setPressed(Z)V

    .line 204
    invoke-virtual {p0, v1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->sendAccessibilityEvent(I)V

    .line 206
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setPressed(Z)V

    .line 194
    return-void
.end method


# virtual methods
.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 148
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    .line 148
    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 187
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 153
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->isClickable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mWasClickable:Z

    .line 154
    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->isLongClickable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mWasLongClickable:Z

    .line 155
    iget-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mWasLongClickable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHoverContentDesc:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHoverRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 157
    new-instance v0, Lcom/android/phone/common/dialpad/DialpadKeyButton$1;

    invoke-direct {v0, p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton$1;-><init>(Lcom/android/phone/common/dialpad/DialpadKeyButton;)V

    iput-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHoverRunnable:Ljava/lang/Runnable;

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHoverRunnable:Ljava/lang/Runnable;

    sget v1, Lcom/android/phone/common/dialpad/DialpadKeyButton;->LONG_HOVER_TIMEOUT:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 168
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setClickable(Z)V

    .line 169
    invoke-virtual {p0, v4}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setLongClickable(Z)V

    goto :goto_0

    .line 172
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mHoverBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    iget-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHovered:Z

    if-eqz v0, :cond_4

    .line 174
    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->performLongClick()Z

    .line 180
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->cancelLongHover()V

    .line 181
    iget-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mWasClickable:Z

    invoke-virtual {p0, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setClickable(Z)V

    .line 182
    iget-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mWasLongClickable:Z

    invoke-virtual {p0, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setLongClickable(Z)V

    goto :goto_0

    .line 176
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->simulateClickForAccessibility()V

    goto :goto_1

    .line 150
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 126
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 128
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mHoverBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 129
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mHoverBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->getPaddingRight()I

    move-result v1

    sub-int v1, p1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 130
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mHoverBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 131
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mHoverBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->getPaddingBottom()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 125
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 136
    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->simulateClickForAccessibility()V

    .line 138
    const/4 v0, 0x1

    return v0

    .line 141
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHovered:Z

    if-eqz v0, :cond_0

    .line 110
    iput-object p1, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mBackupContentDesc:Ljava/lang/CharSequence;

    .line 108
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setLongHoverContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHoverContentDesc:Ljava/lang/CharSequence;

    .line 102
    iget-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHovered:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mLongHoverContentDesc:Ljava/lang/CharSequence;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 99
    :cond_0
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    .line 119
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mOnPressedListener:Lcom/android/phone/common/dialpad/DialpadKeyButton$OnPressedListener;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton;->mOnPressedListener:Lcom/android/phone/common/dialpad/DialpadKeyButton$OnPressedListener;

    invoke-interface {v0, p0, p1}, Lcom/android/phone/common/dialpad/DialpadKeyButton$OnPressedListener;->onPressed(Landroid/view/View;Z)V

    .line 117
    :cond_0
    return-void
.end method
