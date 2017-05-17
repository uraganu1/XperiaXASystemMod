.class public Lcom/sonyericsson/android/socialphonebook/widget/ItemGenericEditor;
.super Landroid/widget/EditText;
.source "ItemGenericEditor.java"


# instance fields
.field private mIsPhoneNumber:Z

.field private mKeyDownPressed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 16
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/ItemGenericEditor;->mKeyDownPressed:Z

    .line 17
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/ItemGenericEditor;->mIsPhoneNumber:Z

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/ItemGenericEditor;->mKeyDownPressed:Z

    .line 17
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/ItemGenericEditor;->mIsPhoneNumber:Z

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/ItemGenericEditor;->mKeyDownPressed:Z

    .line 17
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/ItemGenericEditor;->mIsPhoneNumber:Z

    .line 27
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/ItemGenericEditor;->mKeyDownPressed:Z

    .line 69
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 43
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    .line 44
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/ItemGenericEditor;->mIsPhoneNumber:Z

    .line 43
    if-eqz v2, :cond_0

    .line 47
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getAddedCount()I

    move-result v0

    .line 48
    .local v0, "added":I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getRemovedCount()I

    move-result v1

    .line 49
    .local v1, "removed":I
    if-le v0, v1, :cond_1

    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/ItemGenericEditor;->mKeyDownPressed:Z

    if-eqz v2, :cond_1

    .line 50
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 51
    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 52
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/widget/ItemGenericEditor;->mKeyDownPressed:Z

    .line 62
    .end local v0    # "added":I
    .end local v1    # "removed":I
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 41
    return-void

    .line 53
    .restart local v0    # "added":I
    .restart local v1    # "removed":I
    :cond_1
    if-le v1, v0, :cond_2

    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/ItemGenericEditor;->mKeyDownPressed:Z

    if-eqz v2, :cond_2

    .line 54
    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 55
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 56
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/widget/ItemGenericEditor;->mKeyDownPressed:Z

    goto :goto_0

    .line 58
    :cond_2
    return-void
.end method

.method public setIsPhoneNumber(Z)V
    .locals 1
    .param p1, "isPhoneNumber"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/widget/ItemGenericEditor;->mIsPhoneNumber:Z

    .line 34
    if-eqz p1, :cond_0

    .line 35
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/widget/ItemGenericEditor;->setTextAlignment(I)V

    .line 36
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/widget/ItemGenericEditor;->setTextDirection(I)V

    .line 32
    :cond_0
    return-void
.end method
