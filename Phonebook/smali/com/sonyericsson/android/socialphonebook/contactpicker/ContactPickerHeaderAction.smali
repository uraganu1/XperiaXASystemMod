.class public Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickerHeaderAction;
.super Landroid/widget/LinearLayout;
.source "ContactPickerHeaderAction.java"


# instance fields
.field private mDescription:Landroid/widget/TextView;

.field private mIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 37
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickerHeaderAction;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    return-void

    .line 41
    :cond_0
    const v0, 0x7f0e004f

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickerHeaderAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickerHeaderAction;->mIcon:Landroid/widget/ImageView;

    .line 42
    const v0, 0x7f0e00be

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickerHeaderAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickerHeaderAction;->mDescription:Landroid/widget/TextView;

    .line 34
    return-void
.end method

.method public setDescription(I)V
    .locals 1
    .param p1, "descriptionResId"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickerHeaderAction;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 59
    return-void
.end method

.method public setIconImage(I)V
    .locals 1
    .param p1, "iconResId"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickerHeaderAction;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50
    return-void
.end method
