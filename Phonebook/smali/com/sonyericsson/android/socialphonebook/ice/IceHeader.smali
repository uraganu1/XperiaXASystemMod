.class public Lcom/sonyericsson/android/socialphonebook/ice/IceHeader;
.super Landroid/widget/FrameLayout;
.source "IceHeader.java"


# instance fields
.field private mHeaderText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 35
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceHeader;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 37
    :cond_0
    const v0, 0x7f0e018b

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceHeader;->mHeaderText:Landroid/widget/TextView;

    .line 33
    return-void
.end method

.method public setHeaderText(I)V
    .locals 1
    .param p1, "textResources"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceHeader;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 54
    return-void
.end method

.method public setHeaderText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceHeader;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    return-void
.end method
