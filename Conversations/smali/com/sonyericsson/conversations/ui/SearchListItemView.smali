.class public Lcom/sonyericsson/conversations/ui/SearchListItemView;
.super Landroid/widget/RelativeLayout;
.source "SearchListItemView.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private mIsCheckable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/SearchListItemView;->mIsCheckable:Z

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/SearchListItemView;->mIsCheckable:Z

    .line 22
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/SearchListItemView;->mIsCheckable:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 27
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/SearchListItemView;->mIsCheckable:Z

    .line 32
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/SearchListItemView;->mIsCheckable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/SearchListItemView;->setChecked(Z)V

    .line 42
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
