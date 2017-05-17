.class public Lcom/android/contacts/editor/RawContactEditorView;
.super Lcom/android/contacts/editor/RawContactCommonEditorView;
.source "RawContactEditorView.java"


# instance fields
.field private mAccountIcon:Landroid/widget/ImageView;

.field private mAccountNameTextView:Landroid/widget/TextView;

.field private mAccountTypeTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/RawContactCommonEditorView;-><init>(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/RawContactCommonEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Lcom/android/contacts/editor/RawContactCommonEditorView;->onFinishInflate()V

    .line 76
    const v0, 0x7f0e013d

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountIcon:Landroid/widget/ImageView;

    .line 77
    const v0, 0x7f0e013e

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0e013f

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    .line 73
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/android/contacts/editor/RawContactCommonEditorView;->setEnabled(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v0

    .line 66
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 62
    :cond_0
    return-void
.end method

.method public setState(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/editor/ViewIdGenerator;Z)V
    .locals 12
    .param p1, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p2, "type"    # Lcom/android/contacts/common/model/account/AccountType;
    .param p3, "vig"    # Lcom/android/contacts/editor/ViewIdGenerator;
    .param p4, "isProfile"    # Z

    .prologue
    .line 85
    invoke-super/range {p0 .. p4}, Lcom/android/contacts/editor/RawContactCommonEditorView;->setState(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/editor/ViewIdGenerator;Z)V

    .line 88
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 93
    .local v6, "accountDisplayLabel":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/contacts/common/model/RawContactDelta;->getAccountType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountName:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->isLocalAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountName:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    .line 95
    invoke-static {v0, v3, v4}, Lcom/android/contacts/util/AccountDetailsResolver;->getAccountNameDisplayText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 97
    .local v7, "accountNameLabel":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v0

    .line 100
    sget-object v3, Lcom/android/contacts/photomanager/ContactPhotoManager;->ACCOUNT_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/photomanager/DefaultImageRequest;

    .line 98
    invoke-virtual {v0, v3}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getDefaultAvatarDrawableForContact(Lcom/android/contacts/photomanager/DefaultImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 101
    .local v8, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    .end local v7    # "accountNameLabel":Ljava/lang/String;
    .end local v8    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    const-string/jumbo v0, "vnd.android.cursor.item/photo"

    invoke-static {p1, p2, v0}, Lcom/android/contacts/common/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 125
    const-string/jumbo v0, "vnd.android.cursor.item/photo"

    invoke-virtual {p2, v0}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactEditorView;->setHasPhotoEditor(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactEditorView;->isEnabled()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/PhotoEditorView;->setEnabled(Z)V

    .line 129
    invoke-virtual {p2}, Lcom/android/contacts/common/model/account/AccountType;->getSortedDataKinds()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "kind$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 131
    .local v1, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    iget-boolean v0, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->editable:Z

    if-eqz v0, :cond_2

    .line 133
    iget-object v10, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    .line 134
    .local v10, "mimeType":Ljava/lang/String;
    const-string/jumbo v0, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    invoke-virtual {p1, v10}, Lcom/android/contacts/common/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v2

    .line 137
    .local v2, "primary":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v0

    const/4 v4, 0x0

    move-object v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/editor/PhotoEditorView;->setValues(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    goto :goto_2

    .line 103
    .end local v1    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    .end local v2    # "primary":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v9    # "kind$iterator":Ljava/util/Iterator;
    .end local v10    # "mimeType":Ljava/lang/String;
    :cond_3
    if-eqz p4, :cond_4

    .line 104
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 105
    const/4 v5, 0x0

    aput-object v6, v4, v5

    const v5, 0x7f090168

    .line 104
    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :goto_3
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v3}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 108
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 109
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 111
    iget-object v5, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountName:Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v5, v4, v11

    const v5, 0x7f09004e

    .line 110
    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :goto_4
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 118
    const/4 v5, 0x0

    aput-object v6, v4, v5

    .line 117
    const v5, 0x7f09016b

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 115
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 125
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 84
    .restart local v9    # "kind$iterator":Ljava/util/Iterator;
    :cond_7
    return-void
.end method
