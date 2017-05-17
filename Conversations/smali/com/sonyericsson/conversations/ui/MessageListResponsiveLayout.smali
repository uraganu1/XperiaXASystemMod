.class public Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;
.super Landroid/widget/FrameLayout;
.source "MessageListResponsiveLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout$MessageListLayoutObserver;
    }
.end annotation


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mIsLandscape:Z

.field private mKeyboardHeight:I

.field private mKeyboardVisible:Z

.field private mMuteNotificationBar:Landroid/view/View;

.field private mObservers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout$MessageListLayoutObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mOverlayContainer:Landroid/view/View;

.field private mShouldHideUiInLandscape:Z

.field private mStatusBarHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mObservers:Ljava/util/Set;

    .line 53
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "status_bar_height"

    const-string/jumbo v3, "dimen"

    const-string/jumbo v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 54
    .local v0, "resId":I
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mStatusBarHeight:I

    .line 58
    :cond_0
    instance-of v1, p1, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 59
    check-cast v1, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mActionBar:Landroid/app/ActionBar;

    .line 61
    :cond_1
    const-string/jumbo v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 62
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v1, :cond_2

    .line 63
    const-string/jumbo v1, "Failed to retrieve InputMethodManager"

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 66
    :cond_2
    const v0, 0x7f0c011d

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mKeyboardHeight:I

    .line 50
    return-void
.end method

.method private getOverlayHeight()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 121
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mIsLandscape:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mShouldHideUiInLandscape:Z

    if-eqz v2, :cond_0

    .line 123
    return v3

    .line 127
    :cond_0
    const/4 v0, 0x0

    .line 128
    .local v0, "heightSum":I
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mMuteNotificationBar:Landroid/view/View;

    if-nez v2, :cond_1

    .line 129
    const v2, 0x7f0d007a

    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mMuteNotificationBar:Landroid/view/View;

    .line 131
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mMuteNotificationBar:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mMuteNotificationBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 132
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mMuteNotificationBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/lit8 v0, v2, 0x0

    .line 136
    :cond_2
    const v2, 0x7f0d0090

    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 137
    .local v1, "recipientsEditor":Landroid/view/View;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 138
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 139
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    .line 142
    :cond_3
    return v0
.end method

.method private getUsableScreenHeight()I
    .locals 3

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 108
    .local v1, "screenHeight":I
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mIsLandscape:Z

    if-eqz v2, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mShouldHideUiInLandscape:Z

    .line 109
    :goto_0
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 112
    :cond_0
    iget v2, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mStatusBarHeight:I

    sub-int/2addr v1, v2

    .line 113
    return v1

    .line 108
    :cond_1
    const/4 v0, 0x0

    .local v0, "isHidingUi":Z
    goto :goto_0
.end method

.method private setActionBarAnimationEnabled(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    .line 193
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "setShowHideAnimationEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 194
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mActionBar:Landroid/app/ActionBar;

    .line 193
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 194
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 193
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    const-string/jumbo v1, "Failed to disable or re-enable ActionBar animation"

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setUiVisible(Z)Z
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 166
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mOverlayContainer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 167
    const v0, 0x7f0d0079

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mOverlayContainer:Landroid/view/View;

    .line 170
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mOverlayContainer:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v0

    if-ne p1, v0, :cond_3

    .line 174
    :cond_1
    return v1

    .line 170
    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    .line 180
    :cond_3
    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->setActionBarAnimationEnabled(Z)V

    .line 181
    if-eqz p1, :cond_4

    .line 182
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 187
    :goto_1
    invoke-direct {p0, v3}, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->setActionBarAnimationEnabled(Z)V

    .line 188
    return v3

    .line 184
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    goto :goto_1
.end method


# virtual methods
.method public addMessageListLayoutObserver(Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout$MessageListLayoutObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout$MessageListLayoutObserver;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mObservers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public isKeyboardVisible()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mKeyboardVisible:Z

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 13
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldWidth"    # I
    .param p4, "oldHeight"    # I

    .prologue
    .line 210
    invoke-super/range {p0 .. p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 212
    const/16 v1, 0xc8

    .line 214
    .local v1, "ASSUME_KEYBOARD_NUM_MISSING_PX":I
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->orientation:I

    .line 215
    const/4 v12, 0x2

    .line 214
    if-ne v11, v12, :cond_0

    const/4 v3, 0x1

    .line 216
    .local v3, "isLandscape":Z
    :goto_0
    move/from16 v0, p4

    if-ne p2, v0, :cond_1

    iget-boolean v11, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mIsLandscape:Z

    if-ne v3, v11, :cond_1

    .line 217
    return-void

    .line 214
    .end local v3    # "isLandscape":Z
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "isLandscape":Z
    goto :goto_0

    .line 219
    :cond_1
    iput-boolean v3, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mIsLandscape:Z

    .line 220
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->getUsableScreenHeight()I

    move-result v10

    .line 223
    .local v10, "usableScreenHeight":I
    iget-boolean v5, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mKeyboardVisible:Z

    .line 224
    .local v5, "keyboardWasVisible":Z
    sub-int v2, v10, p2

    .line 225
    .local v2, "assumedKeyboardHeight":I
    const/16 v11, 0xc8

    if-le v2, v11, :cond_4

    const/4 v11, 0x1

    :goto_1
    iput-boolean v11, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mKeyboardVisible:Z

    .line 226
    iget-boolean v11, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mKeyboardVisible:Z

    if-eqz v11, :cond_2

    .line 227
    iput v2, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mKeyboardHeight:I

    .line 231
    :cond_2
    iget-boolean v11, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mIsLandscape:Z

    if-eqz v11, :cond_5

    iget-boolean v11, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mShouldHideUiInLandscape:Z

    if-eqz v11, :cond_5

    const/4 v11, 0x0

    :goto_2
    invoke-direct {p0, v11}, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->setUiVisible(Z)Z

    move-result v9

    .line 232
    .local v9, "updated":Z
    if-eqz v9, :cond_3

    .line 234
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->getUsableScreenHeight()I

    move-result v10

    .line 238
    :cond_3
    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mObservers:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Set;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 239
    return-void

    .line 225
    .end local v9    # "updated":Z
    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 231
    :cond_5
    const/4 v11, 0x1

    goto :goto_2

    .line 242
    .restart local v9    # "updated":Z
    :cond_6
    iget-boolean v11, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mKeyboardVisible:Z

    if-eq v11, v5, :cond_8

    const/4 v4, 0x1

    .line 243
    .local v4, "keyboardStateChanged":Z
    :goto_3
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->getOverlayHeight()I

    move-result v8

    .line 245
    .local v8, "overlayHeight":I
    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mObservers:Ljava/util/Set;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "observer$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout$MessageListLayoutObserver;

    .line 246
    .local v6, "observer":Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout$MessageListLayoutObserver;
    iget v11, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mKeyboardHeight:I

    .line 247
    iget-boolean v12, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mIsLandscape:Z

    .line 246
    invoke-interface {v6, v11, v10, v8, v12}, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout$MessageListLayoutObserver;->onUsableHeightChanged(IIIZ)V

    .line 248
    if-eqz v4, :cond_7

    .line 249
    iget-boolean v11, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mKeyboardVisible:Z

    invoke-interface {v6, v11}, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout$MessageListLayoutObserver;->onKeyboardStateChanged(Z)V

    goto :goto_4

    .line 242
    .end local v4    # "keyboardStateChanged":Z
    .end local v6    # "observer":Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout$MessageListLayoutObserver;
    .end local v7    # "observer$iterator":Ljava/util/Iterator;
    .end local v8    # "overlayHeight":I
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "keyboardStateChanged":Z
    goto :goto_3

    .line 209
    .restart local v7    # "observer$iterator":Ljava/util/Iterator;
    .restart local v8    # "overlayHeight":I
    :cond_9
    return-void
.end method

.method public removeMessageListLayoutObserver(Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout$MessageListLayoutObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout$MessageListLayoutObserver;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mObservers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method public setHideUiInLandscape(Z)Z
    .locals 2
    .param p1, "shouldHide"    # Z

    .prologue
    const/4 v0, 0x0

    .line 154
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mShouldHideUiInLandscape:Z

    .line 155
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mIsLandscape:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    :goto_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->setUiVisible(Z)Z

    move-result v0

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public triggerLayoutUpdate()V
    .locals 6
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 91
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mObservers:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 92
    return-void

    .line 94
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->getOverlayHeight()I

    move-result v2

    .line 95
    .local v2, "overlayHeight":I
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->getUsableScreenHeight()I

    move-result v3

    .line 96
    .local v3, "usableHeight":I
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mObservers:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "observer$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout$MessageListLayoutObserver;

    .line 97
    .local v0, "observer":Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout$MessageListLayoutObserver;
    iget v4, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mKeyboardHeight:I

    .line 98
    iget-boolean v5, p0, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->mIsLandscape:Z

    .line 97
    invoke-interface {v0, v4, v3, v2, v5}, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout$MessageListLayoutObserver;->onUsableHeightChanged(IIIZ)V

    goto :goto_0

    .line 90
    .end local v0    # "observer":Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout$MessageListLayoutObserver;
    :cond_1
    return-void
.end method
