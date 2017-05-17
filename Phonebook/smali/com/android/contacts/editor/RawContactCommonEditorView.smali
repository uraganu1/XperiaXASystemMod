.class public Lcom/android/contacts/editor/RawContactCommonEditorView;
.super Lcom/android/contacts/editor/BaseRawContactEditorView;
.source "RawContactCommonEditorView.java"


# instance fields
.field private mAccountIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mAddFieldButton:Landroid/widget/Button;

.field private mAutoAddToDefaultGroup:Z

.field private mFields:Landroid/view/ViewGroup;

.field private mGroupMembershipKind:Lcom/android/contacts/common/model/dataitem/DataKind;

.field private mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

.field private mGroupMetaData:Landroid/database/Cursor;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mName:Lcom/android/contacts/editor/StructuredNameEditorView;

.field private mRawContactId:J

.field private mState:Lcom/android/contacts/common/model/RawContactDelta;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;-><init>(Landroid/content/Context;)V

    .line 75
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mRawContactId:J

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mAutoAddToDefaultGroup:Z

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/BaseRawContactEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mRawContactId:J

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mAutoAddToDefaultGroup:Z

    .line 85
    return-void
.end method

.method private addToDefaultGroupIfNeeded()V
    .locals 12

    .prologue
    .line 255
    iget-boolean v8, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mAutoAddToDefaultGroup:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mGroupMetaData:Landroid/database/Cursor;

    if-nez v8, :cond_1

    .line 257
    :cond_0
    return-void

    .line 255
    :cond_1
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_0

    .line 256
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mState:Lcom/android/contacts/common/model/RawContactDelta;

    if-eqz v8, :cond_0

    .line 260
    const/4 v4, 0x0

    .line 261
    .local v4, "hasGroupMembership":Z
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mState:Lcom/android/contacts/common/model/RawContactDelta;

    const-string/jumbo v9, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v8, v9}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 262
    .local v2, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v2, :cond_3

    .line 263
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "values$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/model/ValuesDelta;

    .line 264
    .local v6, "values":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v6}, Lcom/android/contacts/common/model/ValuesDelta;->getGroupRowId()Ljava/lang/Long;

    move-result-object v5

    .line 265
    .local v5, "id":Ljava/lang/Long;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 266
    const/4 v4, 0x1

    .line 272
    .end local v5    # "id":Ljava/lang/Long;
    .end local v6    # "values":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v7    # "values$iterator":Ljava/util/Iterator;
    :cond_3
    if-nez v4, :cond_4

    .line 273
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactCommonEditorView;->getDefaultGroupId()J

    move-result-wide v0

    .line 274
    .local v0, "defaultGroupId":J
    const-wide/16 v8, -0x1

    cmp-long v8, v0, v8

    if-eqz v8, :cond_4

    .line 275
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mState:Lcom/android/contacts/common/model/RawContactDelta;

    iget-object v9, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mGroupMembershipKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-static {v8, v9}, Lcom/android/contacts/common/model/RawContactModifier;->insertChild(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v3

    .line 276
    .local v3, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v3, v0, v1}, Lcom/android/contacts/common/model/ValuesDelta;->setGroupRowId(J)V

    .line 254
    .end local v0    # "defaultGroupId":J
    .end local v3    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_4
    return-void
.end method

.method private disableSimNumberEditingIfNeeded(Lcom/android/contacts/editor/KindSectionView;)V
    .locals 10
    .param p1, "section"    # Lcom/android/contacts/editor/KindSectionView;

    .prologue
    const/4 v9, 0x0

    .line 215
    invoke-virtual {p1}, Lcom/android/contacts/editor/KindSectionView;->getEditors()Landroid/view/ViewGroup;

    move-result-object v7

    .line 216
    .local v7, "vg":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactCommonEditorView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getSimPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 217
    .local v6, "simNumber":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 218
    return-void

    .line 220
    :cond_0
    const/4 v5, 0x0

    .line 221
    .local v5, "row":Landroid/view/View;
    const/4 v3, 0x0

    .end local v5    # "row":Landroid/view/View;
    .local v3, "i":I
    :goto_0
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 222
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 223
    .local v5, "row":Landroid/view/View;
    const v8, 0x7f0e00a6

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 224
    .local v2, "editor":Landroid/view/View;
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "editor":Landroid/view/View;
    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, "editTextView":Landroid/view/View;
    move-object v0, v1

    .line 225
    check-cast v0, Landroid/widget/EditText;

    .line 226
    .local v0, "editText":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 227
    .local v4, "number":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 228
    invoke-virtual {v5, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 229
    const v8, 0x7f0e0222

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 214
    .end local v0    # "editText":Landroid/widget/EditText;
    .end local v1    # "editTextView":Landroid/view/View;
    .end local v4    # "number":Ljava/lang/String;
    .end local v5    # "row":Landroid/view/View;
    :cond_1
    return-void

    .line 221
    .restart local v0    # "editText":Landroid/widget/EditText;
    .restart local v1    # "editTextView":Landroid/view/View;
    .restart local v4    # "number":Ljava/lang/String;
    .restart local v5    # "row":Landroid/view/View;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getDefaultGroupId()J
    .locals 12

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x0

    .line 286
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mState:Lcom/android/contacts/common/model/RawContactDelta;

    invoke-virtual {v8}, Lcom/android/contacts/common/model/RawContactDelta;->getAccountType()Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, "accountType":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mState:Lcom/android/contacts/common/model/RawContactDelta;

    invoke-virtual {v8}, Lcom/android/contacts/common/model/RawContactDelta;->getAccountName()Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "accountName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mState:Lcom/android/contacts/common/model/RawContactDelta;

    invoke-virtual {v8}, Lcom/android/contacts/common/model/RawContactDelta;->getDataSet()Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "accountDataSet":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, -0x1

    invoke-interface {v8, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 290
    :cond_0
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 291
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 292
    .local v6, "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 293
    .local v7, "type":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 294
    .local v3, "dataSet":Ljava/lang/String;
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 295
    invoke-static {v3, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    .line 294
    if-eqz v8, :cond_0

    .line 296
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 297
    .local v4, "groupId":J
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v8, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 298
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_0

    .line 299
    return-wide v4

    .line 303
    .end local v3    # "dataSet":Ljava/lang/String;
    .end local v4    # "groupId":J
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    :cond_1
    const-wide/16 v8, -0x1

    return-wide v8
.end method


# virtual methods
.method protected addNewField(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactCommonEditorView;->getSectionViewsWithoutFields()Ljava/util/ArrayList;

    move-result-object v0

    .line 353
    .local v0, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/editor/KindSectionView;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/KindSectionView;

    .line 354
    .local v1, "view":Lcom/android/contacts/editor/KindSectionView;
    invoke-virtual {v1}, Lcom/android/contacts/editor/KindSectionView;->addItem()V

    .line 358
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 359
    iget-object v2, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mAddFieldButton:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 351
    :cond_0
    return-void
.end method

.method public getAccountIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mAccountIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getNameEditor()Lcom/android/contacts/editor/TextFieldsEditorView;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    return-object v0
.end method

.method public getRawContactId()J
    .locals 2

    .prologue
    .line 312
    iget-wide v0, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mRawContactId:J

    return-wide v0
.end method

.method protected getSectionViewsWithoutFields()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/editor/KindSectionView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    new-instance v1, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 323
    .local v1, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/editor/KindSectionView;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 324
    iget-object v5, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 325
    .local v0, "child":Landroid/view/View;
    instance-of v5, v0, Lcom/android/contacts/editor/KindSectionView;

    if-eqz v5, :cond_0

    move-object v4, v0

    .line 326
    check-cast v4, Lcom/android/contacts/editor/KindSectionView;

    .line 329
    .local v4, "sectionView":Lcom/android/contacts/editor/KindSectionView;
    invoke-virtual {v4}, Lcom/android/contacts/editor/KindSectionView;->getEditorCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 323
    .end local v4    # "sectionView":Lcom/android/contacts/editor/KindSectionView;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 333
    .restart local v4    # "sectionView":Lcom/android/contacts/editor/KindSectionView;
    :cond_1
    invoke-virtual {v4}, Lcom/android/contacts/editor/KindSectionView;->getKind()Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v3

    .line 335
    .local v3, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    iget v5, v3, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    invoke-virtual {v4}, Lcom/android/contacts/editor/KindSectionView;->getEditorCount()I

    move-result v5

    if-nez v5, :cond_0

    .line 340
    :cond_2
    const-string/jumbo v5, "vnd.android.cursor.item/sip_address"

    iget-object v6, v3, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 341
    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactCommonEditorView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/detail/ContactDisplayUtils;->shouldShowSip(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 345
    :cond_3
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 348
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    .end local v4    # "sectionView":Lcom/android/contacts/editor/KindSectionView;
    :cond_4
    return-object v1
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->onFinishInflate()V

    .line 117
    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactCommonEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mInflater:Landroid/view/LayoutInflater;

    .line 118
    const v0, 0x7f0e0037

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactCommonEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/StructuredNameEditorView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    .line 119
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/StructuredNameEditorView;->setDeletable(Z)V

    .line 120
    const v0, 0x7f0e01fb

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactCommonEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mFields:Landroid/view/ViewGroup;

    .line 121
    const v0, 0x7f0e01fc

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactCommonEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mAddFieldButton:Landroid/widget/Button;

    .line 114
    return-void
.end method

.method public setAutoAddToDefaultGroup(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 245
    iput-boolean p1, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mAutoAddToDefaultGroup:Z

    .line 244
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setEnabled(Z)V

    .line 94
    iget-object v2, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    if-eqz v2, :cond_0

    .line 95
    iget-object v2, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    invoke-virtual {v2, p1}, Lcom/android/contacts/editor/StructuredNameEditorView;->setEnabled(Z)V

    .line 98
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mFields:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 99
    iget-object v2, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 100
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 101
    iget-object v2, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    if-eqz v2, :cond_2

    .line 106
    iget-object v2, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual {v2, p1}, Lcom/android/contacts/editor/GroupMembershipView;->setEnabled(Z)V

    .line 109
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mAddFieldButton:Landroid/widget/Button;

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 91
    return-void
.end method

.method public setGroupMetaData(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "groupMetaData"    # Landroid/database/Cursor;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mGroupMetaData:Landroid/database/Cursor;

    .line 238
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactCommonEditorView;->addToDefaultGroupIfNeeded()V

    .line 239
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual {v0, p1}, Lcom/android/contacts/editor/GroupMembershipView;->setGroupMetaData(Landroid/database/Cursor;)V

    .line 236
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
    .line 129
    iput-object p1, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mState:Lcom/android/contacts/common/model/RawContactDelta;

    .line 132
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 135
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    .line 137
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, -0x1

    invoke-virtual {p3, p1, v0, v1, v3}, Lcom/android/contacts/editor/ViewIdGenerator;->getId(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactCommonEditorView;->setId(I)V

    .line 140
    const-string/jumbo v0, "vnd.android.cursor.item/name"

    invoke-static {p1, p2, v0}, Lcom/android/contacts/common/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 142
    invoke-virtual {p1}, Lcom/android/contacts/common/model/RawContactDelta;->getRawContactId()Ljava/lang/Long;

    move-result-object v9

    .line 144
    .local v9, "rawContactId":Ljava/lang/Long;
    if-eqz v9, :cond_2

    .line 145
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mRawContactId:J

    .line 148
    :cond_2
    invoke-virtual {p1}, Lcom/android/contacts/common/model/RawContactDelta;->getAccountName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mAccountName:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Lcom/android/contacts/common/model/RawContactDelta;->getAccountType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mAccountType:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Lcom/android/contacts/common/model/RawContactDelta;->getDataSet()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mDataSet:Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactCommonEditorView;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/StructuredNameEditorView;->setEnabled(Z)V

    .line 155
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/StructuredNameEditorView;->setVisibility(I)V

    .line 159
    if-nez p4, :cond_3

    .line 160
    const-string/jumbo v0, "vnd.android.cursor.item/group_membership"

    invoke-virtual {p2, v0}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mGroupMembershipKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 161
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mGroupMembershipKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    if-eqz v0, :cond_3

    .line 162
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mInflater:Landroid/view/LayoutInflater;

    .line 163
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mFields:Landroid/view/ViewGroup;

    const v3, 0x7f0400a7

    const/4 v4, 0x0

    .line 162
    invoke-virtual {v0, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/GroupMembershipView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    .line 164
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    iget-object v1, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mGroupMembershipKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/GroupMembershipView;->setKind(Lcom/android/contacts/common/model/dataitem/DataKind;)V

    .line 165
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactCommonEditorView;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/GroupMembershipView;->setEnabled(Z)V

    .line 170
    :cond_3
    invoke-virtual {p2}, Lcom/android/contacts/common/model/account/AccountType;->getSortedDataKinds()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "kind$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 172
    .local v6, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    iget-boolean v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->editable:Z

    if-eqz v0, :cond_4

    .line 174
    iget-object v8, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    .line 175
    .local v8, "mimeType":Ljava/lang/String;
    const-string/jumbo v0, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 177
    invoke-virtual {p1, v8}, Lcom/android/contacts/common/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v2

    .line 178
    .local v2, "primary":Lcom/android/contacts/common/model/ValuesDelta;
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    const-string/jumbo v1, "vnd.android.cursor.item/name"

    invoke-virtual {p2, v1}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v1

    .line 179
    const/4 v4, 0x0

    move-object v3, p1

    move-object v5, p3

    .line 178
    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/editor/StructuredNameEditorView;->setValues(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    goto :goto_0

    .line 180
    .end local v2    # "primary":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_5
    const-string/jumbo v0, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 181
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    if-eqz v0, :cond_4

    .line 182
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual {v0, p1}, Lcom/android/contacts/editor/GroupMembershipView;->setState(Lcom/android/contacts/common/model/RawContactDelta;)V

    goto :goto_0

    .line 184
    :cond_6
    const-string/jumbo v0, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 188
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 189
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mInflater:Landroid/view/LayoutInflater;

    .line 190
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mFields:Landroid/view/ViewGroup;

    const v3, 0x7f0400a8

    const/4 v4, 0x0

    .line 189
    invoke-virtual {v0, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/contacts/editor/KindSectionView;

    .line 191
    .local v10, "section":Lcom/android/contacts/editor/KindSectionView;
    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactCommonEditorView;->isEnabled()Z

    move-result v0

    invoke-virtual {v10, v0}, Lcom/android/contacts/editor/KindSectionView;->setEnabled(Z)V

    .line 192
    const/4 v0, 0x0

    invoke-virtual {v10, v6, p1, v0, p3}, Lcom/android/contacts/editor/KindSectionView;->setState(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 194
    if-eqz p4, :cond_7

    const-string/jumbo v0, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 195
    invoke-direct {p0, v10}, Lcom/android/contacts/editor/RawContactCommonEditorView;->disableSimNumberEditingIfNeeded(Lcom/android/contacts/editor/KindSectionView;)V

    .line 197
    :cond_7
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 201
    .end local v6    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    .end local v8    # "mimeType":Ljava/lang/String;
    .end local v10    # "section":Lcom/android/contacts/editor/KindSectionView;
    :cond_8
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    if-eqz v0, :cond_9

    .line 202
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mFields:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 205
    :cond_9
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactCommonEditorView;->addToDefaultGroupIfNeeded()V

    .line 207
    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactCommonEditorView;->getSectionViewsWithoutFields()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 208
    .local v11, "sectionCount":I
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mAddFieldButton:Landroid/widget/Button;

    if-lez v11, :cond_a

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mAddFieldButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactCommonEditorView;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 211
    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactCommonEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactCommonEditorView;->mAccountIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 127
    return-void

    .line 208
    :cond_a
    const/16 v0, 0x8

    goto :goto_1
.end method
