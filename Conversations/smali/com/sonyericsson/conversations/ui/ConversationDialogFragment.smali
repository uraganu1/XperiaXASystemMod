.class public Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;
.super Landroid/app/DialogFragment;
.source "ConversationDialogFragment.java"


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAdapterItemClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mBodyText:Landroid/widget/TextView;

.field private mChangeLaterTextId:I

.field private mChangeLaterTextView:Landroid/widget/TextView;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCheckBoxTextId:I

.field private mCheckedItem:I

.field private mDlg:Landroid/app/AlertDialog;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconAttributeId:I

.field private mIconId:I

.field private mItemClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mItemInSingleChoiceMode:Z

.field private mItems:[Ljava/lang/CharSequence;

.field private mMessageId:I

.field private mMessageText:Ljava/lang/CharSequence;

.field private mNegativeBtnResId:I

.field private mNegativeBtnText:Ljava/lang/CharSequence;

.field private mNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mNeutralBtnResId:I

.field private mNeutralBtnText:Ljava/lang/CharSequence;

.field private mNeutralButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnCheckboxChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mPositiveBtnResId:I

.field private mPositiveBtnText:Ljava/lang/CharSequence;

.field private mPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mTitleId:I

.field private mTitleText:Ljava/lang/CharSequence;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mItemInSingleChoiceMode:Z

    .line 65
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 69
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 71
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 73
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNeutralButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 75
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mAdapterItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 77
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 79
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 81
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mOnCheckboxChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 85
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mCheckBox:Landroid/widget/CheckBox;

    .line 27
    return-void
.end method

.method public static showConfirmDialog(Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/app/FragmentManager;)V
    .locals 9
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "positiveBtnResId"    # I
    .param p2, "positiveButtonListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "negativeBtnResId"    # I
    .param p4, "negativeButtonListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p5, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    const/4 v5, 0x0

    .line 387
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v8, v5

    .line 385
    invoke-static/range {v0 .. v8}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->showConfirmDialog(Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/app/FragmentManager;ILandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 383
    return-void
.end method

.method public static showConfirmDialog(Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/app/FragmentManager;ILandroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 13
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "positiveBtnResId"    # I
    .param p2, "positiveButtonListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "negativeBtnResId"    # I
    .param p4, "negativeButtonListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p5, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p6, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p7, "checkBoxTextResId"    # I
    .param p8, "checkBoxChangeListener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 402
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 400
    invoke-static/range {v0 .. v12}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->showConfirmDialog(Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/app/FragmentManager;ILandroid/widget/CompoundButton$OnCheckedChangeListener;Ljava/lang/String;IILandroid/widget/ListAdapter;)V

    .line 398
    return-void
.end method

.method public static showConfirmDialog(Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/app/FragmentManager;ILandroid/widget/CompoundButton$OnCheckedChangeListener;Ljava/lang/String;IILandroid/widget/ListAdapter;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "positiveBtnResId"    # I
    .param p2, "positiveButtonListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "negativeBtnResId"    # I
    .param p4, "negativeButtonListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p5, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p6, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p7, "checkBoxTextResId"    # I
    .param p8, "checkBoxChangeListener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .param p9, "title"    # Ljava/lang/String;
    .param p10, "iconResId"    # I
    .param p11, "iconAttribute"    # I
    .param p12, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v1, 0x0

    .line 427
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;-><init>()V

    .line 428
    .local v0, "dlgFragment":Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;
    if-eqz p9, :cond_0

    .line 429
    invoke-virtual {v0, p9}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 430
    invoke-virtual {v0, p10}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setIcon(I)V

    .line 431
    invoke-virtual {v0, p11}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setIconAttribute(I)V

    .line 433
    :cond_0
    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setMessage(Ljava/lang/CharSequence;)V

    .line 434
    invoke-virtual {v0, p12, v1}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V

    .line 435
    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 436
    invoke-virtual {v0, p3, p4}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 437
    invoke-virtual {v0, p5}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 438
    invoke-virtual {v0, p7, p8}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setCheckBox(ILandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 439
    const-string/jumbo v1, "alert-dialog"

    invoke-virtual {v0, p6, v1}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 425
    return-void
.end method


# virtual methods
.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mDlg:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 237
    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 233
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 103
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 104
    .local v1, "fragmentTransaction":Landroid/app/FragmentTransaction;
    invoke-virtual {v1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 105
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 94
    .end local v0    # "fragmentManager":Landroid/app/FragmentManager;
    .end local v1    # "fragmentTransaction":Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const v6, 0x7f0d00e5

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 112
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 114
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 115
    const v3, 0x7f09003a

    .line 114
    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 117
    .local v1, "dlgBuilder":Landroid/app/AlertDialog$Builder;
    iget v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mTitleId:I

    if-lez v2, :cond_d

    .line 118
    iget v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mTitleId:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 123
    :cond_0
    :goto_0
    iget v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mIconId:I

    if-lez v2, :cond_e

    .line 124
    iget v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mIconId:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 129
    :cond_1
    :goto_1
    iget v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mIconAttributeId:I

    if-lez v2, :cond_2

    .line 130
    iget v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mIconAttributeId:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 133
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 134
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 137
    :cond_3
    iget v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mMessageId:I

    if-gtz v2, :cond_4

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mMessageText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_7

    .line 140
    :cond_4
    iget v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mCheckBoxTextId:I

    if-lez v2, :cond_10

    .line 141
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 142
    const v3, 0x7f03004c

    .line 141
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 143
    .local v0, "contentView":Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mBodyText:Landroid/widget/TextView;

    .line 144
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mBodyText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 145
    const v2, 0x7f0d00e8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mCheckBox:Landroid/widget/CheckBox;

    .line 146
    iget v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mCheckBoxTextId:I

    if-lez v2, :cond_5

    .line 147
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mCheckBox:Landroid/widget/CheckBox;

    iget v3, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mCheckBoxTextId:I

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setText(I)V

    .line 149
    :cond_5
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mOnCheckboxChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v2, :cond_6

    .line 150
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mOnCheckboxChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 153
    :cond_6
    const v2, 0x7f0d00e9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 152
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mChangeLaterTextView:Landroid/widget/TextView;

    .line 154
    iget v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mChangeLaterTextId:I

    if-lez v2, :cond_f

    .line 155
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mChangeLaterTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 156
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mChangeLaterTextView:Landroid/widget/TextView;

    iget v3, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mChangeLaterTextId:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 166
    :goto_2
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 168
    iget v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mMessageId:I

    if-lez v2, :cond_11

    .line 169
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mBodyText:Landroid/widget/TextView;

    iget v3, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mMessageId:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 175
    .end local v0    # "contentView":Landroid/view/View;
    :cond_7
    :goto_3
    iget v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mPositiveBtnResId:I

    if-lez v2, :cond_12

    .line 176
    iget v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mPositiveBtnResId:I

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 181
    :cond_8
    :goto_4
    iget v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNegativeBtnResId:I

    if-lez v2, :cond_13

    .line 182
    iget v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNegativeBtnResId:I

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 187
    :cond_9
    :goto_5
    iget v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNeutralBtnResId:I

    if-lez v2, :cond_14

    .line 188
    iget v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNeutralBtnResId:I

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNeutralButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 199
    :cond_a
    :goto_6
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_b

    .line 200
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mAdapterItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 203
    :cond_b
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mItems:[Ljava/lang/CharSequence;

    if-eqz v2, :cond_c

    .line 204
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mItemInSingleChoiceMode:Z

    if-eqz v2, :cond_15

    .line 205
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mItems:[Ljava/lang/CharSequence;

    iget v3, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mCheckedItem:I

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 211
    :cond_c
    :goto_7
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mDlg:Landroid/app/AlertDialog;

    .line 212
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mDlg:Landroid/app/AlertDialog;

    return-object v2

    .line 119
    :cond_d
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mTitleText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mTitleText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 125
    :cond_e
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 126
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 158
    .restart local v0    # "contentView":Landroid/view/View;
    :cond_f
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mChangeLaterTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 161
    .end local v0    # "contentView":Landroid/view/View;
    :cond_10
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 162
    const v3, 0x7f03004b

    .line 161
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 163
    .restart local v0    # "contentView":Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mBodyText:Landroid/widget/TextView;

    .line 164
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mBodyText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextDirection(I)V

    goto/16 :goto_2

    .line 170
    :cond_11
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mMessageText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_7

    .line 171
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mBodyText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mMessageText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 177
    .end local v0    # "contentView":Landroid/view/View;
    :cond_12
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mPositiveBtnText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_8

    .line 178
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mPositiveBtnText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_4

    .line 183
    :cond_13
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNegativeBtnText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_9

    .line 184
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNegativeBtnText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_5

    .line 189
    :cond_14
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNeutralBtnText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_a

    .line 190
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNeutralBtnText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNeutralButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_6

    .line 207
    :cond_15
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mItems:[Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_7
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v0, 0x0

    .line 225
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 226
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 227
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 228
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNeutralButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 229
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 224
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 361
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mAdapterItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 359
    return-void
.end method

.method public setChangeLater(I)V
    .locals 2
    .param p1, "mMessageId"    # I

    .prologue
    .line 264
    iput p1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mChangeLaterTextId:I

    .line 265
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mChangeLaterTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mChangeLaterTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mChangeLaterTextId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 263
    :cond_0
    return-void
.end method

.method public setCheckBox(ILandroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 2
    .param p1, "titleId"    # I
    .param p2, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 255
    iput p1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mCheckBoxTextId:I

    .line 256
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mOnCheckboxChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 257
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mCheckBox:Landroid/widget/CheckBox;

    iget v1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mCheckBoxTextId:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(I)V

    .line 259
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mOnCheckboxChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 254
    :cond_0
    return-void
.end method

.method public setIcon(I)V
    .locals 0
    .param p1, "iconId"    # I

    .prologue
    .line 293
    iput p1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mIconId:I

    .line 292
    return-void
.end method

.method public setIconAttribute(I)V
    .locals 0
    .param p1, "iconAttributeId"    # I

    .prologue
    .line 297
    iput p1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mIconAttributeId:I

    .line 296
    return-void
.end method

.method public setMessage(I)V
    .locals 2
    .param p1, "messageId"    # I

    .prologue
    .line 271
    iput p1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mMessageId:I

    .line 272
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mBodyText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mBodyText:Landroid/widget/TextView;

    iget v1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mMessageId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 270
    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mMessageText:Ljava/lang/CharSequence;

    .line 279
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mBodyText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mBodyText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mMessageText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    :cond_0
    return-void
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 342
    iput p1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNegativeBtnResId:I

    .line 343
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 344
    iget v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNegativeBtnResId:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 341
    :goto_0
    return-void

    .line 346
    :cond_0
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNegativeBtnText:Ljava/lang/CharSequence;

    .line 352
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 353
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mDlg:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNegativeBtnText:Ljava/lang/CharSequence;

    .line 355
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 354
    const/4 v3, -0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 350
    :cond_0
    return-void
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 333
    iput p1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNeutralBtnResId:I

    .line 334
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 335
    iget v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNeutralBtnResId:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 332
    :goto_0
    return-void

    .line 337
    :cond_0
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNeutralButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNeutralBtnText:Ljava/lang/CharSequence;

    .line 326
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNeutralButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 327
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mDlg:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNeutralBtnText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNeutralButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, -0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 324
    :cond_0
    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 2
    .param p1, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 319
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mDlg:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 317
    :cond_0
    return-void
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 309
    iput p1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mPositiveBtnResId:I

    .line 310
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 311
    iget v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mPositiveBtnResId:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 308
    :goto_0
    return-void

    .line 313
    :cond_0
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mPositiveBtnText:Ljava/lang/CharSequence;

    .line 302
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 303
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mDlg:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mPositiveBtnText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 300
    :cond_0
    return-void
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 371
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mItems:[Ljava/lang/CharSequence;

    .line 372
    iput p2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mCheckedItem:I

    .line 373
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mItemInSingleChoiceMode:Z

    .line 370
    return-void
.end method

.method public setTitle(I)V
    .locals 2
    .param p1, "titleId"    # I

    .prologue
    .line 241
    iput p1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mTitleId:I

    .line 242
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mDlg:Landroid/app/AlertDialog;

    iget v1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mTitleId:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 240
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mTitleText:Ljava/lang/CharSequence;

    .line 249
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mDlg:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mTitleText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 247
    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mView:Landroid/view/View;

    .line 446
    return-void
.end method
