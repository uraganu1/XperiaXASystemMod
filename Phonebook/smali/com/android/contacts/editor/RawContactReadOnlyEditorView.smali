.class public Lcom/android/contacts/editor/RawContactReadOnlyEditorView;
.super Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;
.source "RawContactReadOnlyEditorView.java"


# instance fields
.field private mAccountContainer:Landroid/view/View;

.field private mAccountIcon:Landroid/widget/ImageView;

.field private mAccountNameTextView:Landroid/widget/TextView;

.field private mAccountTypeTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;-><init>(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->onFinishInflate()V

    .line 65
    const v0, 0x7f0e013c

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountContainer:Landroid/view/View;

    .line 66
    const v0, 0x7f0e013d

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountIcon:Landroid/widget/ImageView;

    .line 67
    const v0, 0x7f0e013e

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f0e013f

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    .line 62
    return-void
.end method

.method public setState(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/editor/ViewIdGenerator;Z)V
    .locals 10
    .param p1, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p2, "type"    # Lcom/android/contacts/common/model/account/AccountType;
    .param p3, "vig"    # Lcom/android/contacts/editor/ViewIdGenerator;
    .param p4, "isProfile"    # Z

    .prologue
    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->setState(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/editor/ViewIdGenerator;Z)V

    .line 78
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/contacts/common/model/RawContactDelta;->getAccountType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->isLocalAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    .line 83
    invoke-static {v0, v3, v4}, Lcom/android/contacts/util/AccountDetailsResolver;->getAccountNameDisplayText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 85
    .local v6, "accountNameLabel":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .end local v6    # "accountNameLabel":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->getAccountIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    const-string/jumbo v0, "vnd.android.cursor.item/photo"

    invoke-virtual {p2, v0}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v1

    .line 117
    .local v1, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    if-eqz v1, :cond_2

    .line 118
    const-string/jumbo v0, "vnd.android.cursor.item/photo"

    invoke-static {p1, p2, v0}, Lcom/android/contacts/common/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 119
    const-string/jumbo v0, "vnd.android.cursor.item/photo"

    invoke-virtual {p2, v0}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v8, 0x1

    .line 120
    .local v8, "hasPhotoEditor":Z
    :goto_1
    invoke-virtual {p0, v8}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->setHasPhotoEditor(Z)V

    .line 121
    const-string/jumbo v0, "vnd.android.cursor.item/photo"

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v2

    .line 122
    .local v2, "primary":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v4, 0x0

    :goto_2
    move-object v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/editor/PhotoEditorView;->setValues(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 125
    .end local v2    # "primary":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v8    # "hasPhotoEditor":Z
    :cond_2
    invoke-virtual {p2}, Lcom/android/contacts/common/model/account/AccountType;->getEditContactActivityClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 126
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountContainer:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountContainer:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 74
    :goto_3
    return-void

    .line 86
    .end local v1    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    :cond_3
    if-eqz p4, :cond_5

    .line 87
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 88
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    const v3, 0x7f09016c

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 91
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 92
    .local v7, "accountType":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 93
    const/4 v5, 0x0

    aput-object v7, v4, v5

    const v5, 0x7f090168

    .line 92
    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 97
    .end local v7    # "accountType":Ljava/lang/CharSequence;
    :cond_5
    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 98
    .restart local v7    # "accountType":Ljava/lang/CharSequence;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 99
    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0900c4

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 101
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 102
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    .line 104
    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v5, v4, v9

    const v5, 0x7f09004e

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :goto_4
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 110
    const/4 v5, 0x0

    aput-object v7, v4, v5

    .line 109
    const v5, 0x7f09016b

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 107
    :cond_7
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 119
    .end local v7    # "accountType":Ljava/lang/CharSequence;
    .restart local v1    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    :cond_8
    const/4 v8, 0x0

    .restart local v8    # "hasPhotoEditor":Z
    goto/16 :goto_1

    .line 122
    .restart local v2    # "primary":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_9
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 129
    .end local v2    # "primary":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v8    # "hasPhotoEditor":Z
    :cond_a
    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 130
    .restart local v7    # "accountType":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountContainer:Landroid/view/View;

    new-instance v3, Lcom/android/contacts/editor/RawContactReadOnlyEditorView$1;

    invoke-direct {v3, p0, v7}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView$1;-><init>(Lcom/android/contacts/editor/RawContactReadOnlyEditorView;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3
.end method
