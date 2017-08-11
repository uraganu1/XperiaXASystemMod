.class public Lcom/android/ex/editstyledtext/EditStyledText;
.super Landroid/widget/EditText;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;,
        Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;,
        Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;,
        Lcom/android/ex/editstyledtext/EditStyledText$MenuHandler;,
        Lcom/android/ex/editstyledtext/EditStyledText$StyledTextInputConnection;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;
    }
.end annotation


# static fields
.field private static final SELECTING:Landroid/text/NoCopySpan$Concrete;

.field private static STR_CLEARSTYLES:Ljava/lang/CharSequence;

.field private static STR_HORIZONTALLINE:Ljava/lang/CharSequence;

.field private static STR_PASTE:Ljava/lang/CharSequence;


# instance fields
.field private mDefaultBackground:Landroid/graphics/drawable/Drawable;

.field private mESTNotifiers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;",
            ">;"
        }
    .end annotation
.end field

.field private mInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;


# direct methods
.method static synthetic -get1(Lcom/android/ex/editstyledtext/EditStyledText;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    return-object v0
.end method

.method static synthetic -wrap13(Landroid/view/View;Landroid/text/Spannable;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "content"    # Landroid/text/Spannable;

    .prologue
    invoke-static {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText;->stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/ex/editstyledtext/EditStyledText;II)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "state"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/ex/editstyledtext/EditStyledText;->notifyStateChanged(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 196
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Lcom/android/ex/editstyledtext/EditStyledText;->SELECTING:Landroid/text/NoCopySpan$Concrete;

    .line 93
    return-void
.end method

.method private notifyStateChanged(II)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "state"    # I

    .prologue
    .line 533
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mESTNotifiers:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 534
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mESTNotifiers:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "notifier$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;

    .line 535
    .local v0, "notifier":Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;
    invoke-interface {v0, p1, p2}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;->onStateChanged(II)V

    goto :goto_0

    .line 532
    .end local v0    # "notifier":Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;
    .end local v1    # "notifier$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private onRefreshStyles()V
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onRefreshStyles()V

    .line 670
    return-void
.end method

.method private sendOnTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 458
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mESTNotifiers:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 459
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mESTNotifiers:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "notifier$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;

    .line 460
    .local v0, "notifier":Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;
    invoke-interface {v0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;->sendOnTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 457
    .end local v0    # "notifier":Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;
    .end local v1    # "notifier$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private static stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "content"    # Landroid/text/Spannable;

    .prologue
    .line 934
    sget-object v0, Lcom/android/ex/editstyledtext/EditStyledText;->SELECTING:Landroid/text/NoCopySpan$Concrete;

    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 933
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 272
    invoke-super {p0}, Landroid/widget/EditText;->drawableStateChanged()V

    .line 273
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onRefreshStyles()V

    .line 271
    :cond_0
    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getBackgroundColor()I

    move-result v0

    return v0
.end method

.method public getForegroundColor(I)I
    .locals 5
    .param p1, "pos"    # I

    .prologue
    const/high16 v4, -0x1000000

    const/4 v3, 0x0

    .line 875
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 876
    :cond_0
    return v4

    .line 879
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    const-class v2, Landroid/text/style/ForegroundColorSpan;

    invoke-interface {v1, p1, p1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ForegroundColorSpan;

    .line 880
    .local v0, "spans":[Landroid/text/style/ForegroundColorSpan;
    array-length v1, v0

    if-lez v1, :cond_2

    .line 881
    aget-object v1, v0, v3

    invoke-virtual {v1}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v1

    return v1

    .line 883
    :cond_2
    return v4
.end method

.method public getSelectState()I
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectState()I

    move-result v0

    return v0
.end method

.method public isButtonsFocused()Z
    .locals 4

    .prologue
    .line 466
    const/4 v2, 0x0

    .line 467
    .local v2, "retval":Z
    iget-object v3, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mESTNotifiers:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 468
    iget-object v3, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mESTNotifiers:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2    # "retval":Z
    .local v1, "notifier$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;

    .line 469
    .local v0, "notifier":Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;
    invoke-interface {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;->isButtonsFocused()Z

    move-result v3

    or-int/2addr v2, v3

    .local v2, "retval":Z
    goto :goto_0

    .line 472
    .end local v0    # "notifier":Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;
    .end local v1    # "notifier$iterator":Ljava/util/Iterator;
    .end local v2    # "retval":Z
    :cond_0
    return v2
.end method

.method public isEditting()Z
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->isEditting()Z

    move-result v0

    return v0
.end method

.method public isSoftKeyBlocked()Z
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->isSoftKeyBlocked()Z

    move-result v0

    return v0
.end method

.method public isStyledText()Z
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->isStyledText()Z

    move-result v0

    return v0
.end method

.method public onClearStyles()V
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onClearStyles()V

    .line 654
    return-void
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/ContextMenu;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 329
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 330
    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$MenuHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$MenuHandler;-><init>(Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText$MenuHandler;)V

    .line 331
    .local v0, "handler":Lcom/android/ex/editstyledtext/EditStyledText$MenuHandler;
    sget-object v1, Lcom/android/ex/editstyledtext/EditStyledText;->STR_HORIZONTALLINE:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 332
    sget-object v1, Lcom/android/ex/editstyledtext/EditStyledText;->STR_HORIZONTALLINE:Ljava/lang/CharSequence;

    const v2, 0xffff01

    invoke-interface {p1, v3, v2, v3, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 335
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->isStyledText()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/ex/editstyledtext/EditStyledText;->STR_CLEARSTYLES:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 336
    sget-object v1, Lcom/android/ex/editstyledtext/EditStyledText;->STR_CLEARSTYLES:Ljava/lang/CharSequence;

    const v2, 0xffff02

    invoke-interface {p1, v3, v2, v3, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 339
    :cond_1
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->canPaste()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 340
    sget-object v1, Lcom/android/ex/editstyledtext/EditStyledText;->STR_PASTE:Ljava/lang/CharSequence;

    const v2, 0x1020022

    invoke-interface {p1, v3, v2, v3, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v1

    .line 341
    const/16 v2, 0x76

    .line 340
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 328
    :cond_2
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 371
    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextInputConnection;

    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextInputConnection;-><init>(Landroid/view/inputmethod/InputConnection;Lcom/android/ex/editstyledtext/EditStyledText;)V

    .line 370
    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 372
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method public onEndEdit()V
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onAction(I)V

    .line 546
    return-void
.end method

.method public onFixSelectedItem()V
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onFixSelectedItem()V

    .line 624
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 377
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 378
    if-eqz p1, :cond_1

    .line 379
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onStartEdit()V

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->isButtonsFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onEndEdit()V

    goto :goto_0
.end method

.method public onInsertHorizontalLine()V
    .locals 2

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onAction(I)V

    .line 650
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 261
    instance-of v1, p1, Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;

    if-nez v1, :cond_0

    .line 262
    invoke-super {p0, p1}, Landroid/widget/EditText;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 263
    return-void

    :cond_0
    move-object v0, p1

    .line 265
    check-cast v0, Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;

    .line 266
    .local v0, "ss":Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;
    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/EditText;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 267
    iget v1, v0, Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;->mBackgroundColor:I

    invoke-virtual {p0, v1}, Lcom/android/ex/editstyledtext/EditStyledText;->setBackgroundColor(I)V

    .line 260
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 253
    invoke-super {p0}, Landroid/widget/EditText;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 254
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;

    invoke-direct {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;-><init>(Landroid/os/Parcelable;)V

    .line 255
    .local v0, "ss":Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getBackgroundColor()I

    move-result v2

    iput v2, v0, Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;->mBackgroundColor:I

    .line 256
    return-object v0
.end method

.method public onStartCopy()V
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onAction(I)V

    .line 555
    return-void
.end method

.method public onStartCut()V
    .locals 2

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onAction(I)V

    .line 560
    return-void
.end method

.method public onStartEdit()V
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onAction(I)V

    .line 541
    return-void
.end method

.method public onStartPaste()V
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onAction(I)V

    .line 565
    return-void
.end method

.method public onStartSelect()V
    .locals 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onStartSelect(Z)V

    .line 602
    return-void
.end method

.method public onStartSelectAll()V
    .locals 2

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onStartSelectAll(Z)V

    .line 607
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->updateSpanNextToCursor(Landroid/text/Editable;III)V

    .line 350
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->updateSpanPreviousFromCursor(Landroid/text/Editable;III)V

    .line 351
    if-le p4, p3, :cond_2

    .line 352
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    add-int v1, p2, p4

    invoke-virtual {v0, p2, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setTextComposingMask(II)V

    .line 356
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->isWaitInput()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    if-le p4, p3, :cond_3

    .line 358
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onCursorMoved()V

    .line 359
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onFixSelectedItem()V

    .line 365
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 346
    return-void

    .line 353
    :cond_2
    if-ge p3, p4, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->unsetTextComposingMask()V

    goto :goto_0

    .line 360
    :cond_3
    if-ge p4, p3, :cond_1

    .line 361
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onAction(I)V

    goto :goto_1
.end method

.method public onTextContextMenuItem(I)Z
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 280
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionEnd()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 281
    .local v0, "selection":Z
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 324
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result v1

    return v1

    .line 280
    .end local v0    # "selection":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "selection":Z
    goto :goto_0

    .line 283
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onStartSelectAll()V

    .line 284
    return v3

    .line 286
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onStartSelect()V

    .line 287
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->blockSoftKey()V

    goto :goto_1

    .line 290
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onFixSelectedItem()V

    goto :goto_1

    .line 293
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onStartPaste()V

    .line 294
    return v3

    .line 296
    :sswitch_4
    if-eqz v0, :cond_1

    .line 297
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onStartCopy()V

    .line 302
    :goto_2
    return v3

    .line 299
    :cond_1
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v1, v4}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onStartSelectAll(Z)V

    .line 300
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onStartCopy()V

    goto :goto_2

    .line 304
    :sswitch_5
    if-eqz v0, :cond_2

    .line 305
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onStartCut()V

    .line 310
    :goto_3
    return v3

    .line 307
    :cond_2
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v1, v4}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onStartSelectAll(Z)V

    .line 308
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onStartCut()V

    goto :goto_3

    .line 312
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onInsertHorizontalLine()V

    .line 313
    return v3

    .line 315
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onClearStyles()V

    .line 316
    return v3

    .line 318
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onStartEdit()V

    .line 319
    return v3

    .line 321
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onEndEdit()V

    .line 322
    return v3

    .line 281
    :sswitch_data_0
    .sparse-switch
        0xffff01 -> :sswitch_6
        0xffff02 -> :sswitch_7
        0xffff03 -> :sswitch_8
        0xffff04 -> :sswitch_9
        0x102001f -> :sswitch_0
        0x1020020 -> :sswitch_5
        0x1020021 -> :sswitch_4
        0x1020022 -> :sswitch_3
        0x1020028 -> :sswitch_1
        0x1020029 -> :sswitch_2
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 221
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->cancelLongPress()V

    .line 222
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->isEditting()Z

    move-result v0

    .line 224
    .local v0, "editting":Z
    if-nez v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onStartEdit()V

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 228
    .local v2, "oldSelStart":I
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 229
    .local v1, "oldSelEnd":I
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 230
    .local v3, "superResult":Z
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 233
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectState()I

    move-result v4

    if-nez v4, :cond_1

    .line 234
    if-eqz v0, :cond_2

    .line 235
    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    .line 236
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v6

    .line 235
    invoke-virtual {v4, v5, v6}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->showSoftKey(II)V

    .line 242
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v4}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onCursorMoved()V

    .line 243
    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v4}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->unsetTextComposingMask()V

    .line 247
    .end local v0    # "editting":Z
    .end local v1    # "oldSelEnd":I
    .end local v2    # "oldSelStart":I
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText;->sendOnTouchEvent(Landroid/view/MotionEvent;)V

    .line 248
    return v3

    .line 238
    .restart local v0    # "editting":Z
    .restart local v1    # "oldSelEnd":I
    .restart local v2    # "oldSelStart":I
    :cond_2
    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v4, v2, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->showSoftKey(II)V

    goto :goto_0

    .line 245
    .end local v0    # "editting":Z
    .end local v1    # "oldSelEnd":I
    .end local v2    # "oldSelStart":I
    .end local v3    # "superResult":Z
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .restart local v3    # "superResult":Z
    goto :goto_1
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 712
    const v0, 0xffffff

    if-eq p1, v0, :cond_0

    .line 713
    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 717
    :goto_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setBackgroundColor(I)V

    .line 718
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onRefreshStyles()V

    .line 711
    return-void

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
