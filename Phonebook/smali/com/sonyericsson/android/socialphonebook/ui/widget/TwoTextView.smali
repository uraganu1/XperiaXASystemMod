.class public Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;
.super Landroid/widget/LinearLayout;
.source "TwoTextView.java"


# instance fields
.field private mMajorText:Landroid/widget/TextView;

.field private mMinorText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method


# virtual methods
.method public getMajorText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;->mMajorText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMinorText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;->mMinorText:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 38
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 40
    :cond_0
    const v0, 0x7f0e022e

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;->mMajorText:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f0e022f

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;->mMinorText:Landroid/widget/TextView;

    .line 35
    return-void
.end method

.method public setMajorText(I)V
    .locals 2
    .param p1, "resourceId"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;->mMajorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 61
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;->mMajorText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    return-void
.end method

.method public setMajorText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;->mMajorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;->mMajorText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    return-void
.end method

.method public setMinorText(I)V
    .locals 2
    .param p1, "resourceId"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;->mMinorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 81
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;->mMinorText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;->mMajorText:Landroid/widget/TextView;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 84
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;->mMinorText:Landroid/widget/TextView;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 79
    return-void
.end method

.method public setMinorText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;->mMinorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;->mMinorText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    return-void
.end method
