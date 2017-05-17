.class public final Lcom/sonyericsson/android/socialphonebook/widget/ChecklistItem;
.super Landroid/widget/LinearLayout;
.source "ChecklistItem.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field protected mCheckable:Landroid/widget/Checkable;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Lcom/sonyericsson/android/socialphonebook/widget/ChecklistItem;
    .locals 2
    .param p0, "aContext"    # Landroid/content/Context;
    .param p1, "aInflater"    # Landroid/view/LayoutInflater;
    .param p2, "aLayout"    # I
    .param p3, "aVg"    # Landroid/view/ViewGroup;

    .prologue
    .line 44
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/widget/ChecklistItem;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/widget/ChecklistItem;-><init>(Landroid/content/Context;)V

    .line 45
    .local v0, "self":Lcom/sonyericsson/android/socialphonebook/widget/ChecklistItem;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/ChecklistItem;->setOrientation(I)V

    .line 46
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 47
    return-object v0
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/ChecklistItem;->mCheckable:Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/ChecklistItem;->mCheckable:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    return v0

    .line 75
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Landroid/widget/Checkable;)V
    .locals 0
    .param p1, "aCheckable"    # Landroid/widget/Checkable;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/widget/ChecklistItem;->mCheckable:Landroid/widget/Checkable;

    .line 62
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "aChecked"    # Z

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/ChecklistItem;->mCheckable:Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/ChecklistItem;->mCheckable:Landroid/widget/Checkable;

    invoke-interface {v0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 84
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/ChecklistItem;->mCheckable:Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/ChecklistItem;->mCheckable:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->toggle()V

    .line 94
    :cond_0
    return-void
.end method
