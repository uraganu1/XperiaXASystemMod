.class public Lcom/sonyericsson/android/socialphonebook/DialpadEditText;
.super Landroid/widget/EditText;
.source "DialpadEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/DialpadEditText$MenuHandler;
    }
.end annotation


# instance fields
.field private mKeyDownPressed:Z

.field private mPreviousUpTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->mPreviousUpTime:J

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->mKeyDownPressed:Z

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->mPreviousUpTime:J

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->mKeyDownPressed:Z

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->mPreviousUpTime:J

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->mKeyDownPressed:Z

    .line 35
    return-void
.end method

.method private canCopy()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 121
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private canPaste()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 125
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 126
    const-string/jumbo v8, "clipboard"

    .line 125
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 127
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v7

    if-nez v7, :cond_0

    .line 129
    return v5

    .line 132
    :cond_0
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    .line 133
    .local v0, "clipItem":Landroid/content/ClipData$Item;
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 135
    .local v2, "copiedText":Ljava/lang/CharSequence;
    if-nez v2, :cond_1

    .line 136
    return v5

    .line 140
    :cond_1
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v3

    .line 141
    .local v3, "description":Landroid/content/ClipDescription;
    const-string/jumbo v7, "text/plain"

    invoke-virtual {v3, v7}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 142
    const-string/jumbo v7, "text/html"

    invoke-virtual {v3, v7}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v7

    .line 141
    :goto_0
    if-nez v7, :cond_3

    .line 143
    return v5

    :cond_2
    move v7, v6

    .line 141
    goto :goto_0

    .line 147
    :cond_3
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 148
    .local v4, "filterString":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_1
    return v5

    :cond_4
    move v5, v6

    goto :goto_1
.end method


# virtual methods
.method public getMeasuredTextWidth(Ljava/lang/String;)I
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 180
    .local v0, "paint":Landroid/text/TextPaint;
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v1, v2

    .line 181
    .local v1, "textWidth":I
    return v1
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/ContextMenu;

    .prologue
    const/4 v3, 0x0

    .line 157
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 158
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 160
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/DialpadEditText$MenuHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText$MenuHandler;-><init>(Lcom/sonyericsson/android/socialphonebook/DialpadEditText;Lcom/sonyericsson/android/socialphonebook/DialpadEditText$MenuHandler;)V

    .line 161
    .local v0, "handler":Lcom/sonyericsson/android/socialphonebook/DialpadEditText$MenuHandler;
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->canCopy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    const v1, 0x1020021

    const v2, 0x1040001

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v1

    .line 163
    const/16 v2, 0x63

    .line 162
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 166
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->canPaste()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    const v1, 0x1020022

    const v2, 0x104000b

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v1

    .line 168
    const/16 v2, 0x76

    .line 167
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 152
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->mKeyDownPressed:Z

    .line 232
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 188
    .local v0, "action":I
    const/4 v4, 0x1

    .line 190
    .local v4, "ret":Z
    packed-switch v0, :pswitch_data_0

    .line 201
    :goto_0
    invoke-virtual {p0, v10}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->setShowSoftInputOnFocus(Z)V

    .line 202
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 207
    .end local v4    # "ret":Z
    :cond_0
    invoke-super {p0}, Landroid/widget/EditText;->isInputMethodTarget()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 208
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 209
    const-string/jumbo v6, "input_method"

    .line 208
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 210
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v1, v5, v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 212
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    return v4

    .line 192
    .restart local v4    # "ret":Z
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->mPreviousUpTime:J

    sub-long v2, v6, v8

    .line 194
    .local v2, "duration":J
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    int-to-long v6, v5

    cmp-long v5, v2, v6

    if-lez v5, :cond_0

    .line 198
    .end local v2    # "duration":J
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->mPreviousUpTime:J

    goto :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->canCopy()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    :cond_0
    invoke-super {p0}, Landroid/widget/EditText;->performLongClick()Z

    move-result v0

    return v0

    .line 226
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 49
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_3

    .line 52
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getAddedCount()I

    move-result v0

    .line 53
    .local v0, "added":I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getRemovedCount()I

    move-result v1

    .line 54
    .local v1, "removed":I
    if-le v0, v1, :cond_1

    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->mKeyDownPressed:Z

    if-eqz v2, :cond_1

    .line 55
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 56
    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 57
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->mKeyDownPressed:Z

    .line 70
    .end local v0    # "added":I
    .end local v1    # "removed":I
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 48
    return-void

    .line 58
    .restart local v0    # "added":I
    .restart local v1    # "removed":I
    :cond_1
    if-le v1, v0, :cond_2

    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->mKeyDownPressed:Z

    if-eqz v2, :cond_2

    .line 59
    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 60
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 61
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->mKeyDownPressed:Z

    goto :goto_0

    .line 63
    :cond_2
    return-void

    .line 65
    .end local v0    # "added":I
    .end local v1    # "removed":I
    :cond_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 68
    return-void
.end method
