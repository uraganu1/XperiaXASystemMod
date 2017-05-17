.class public Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;
.super Landroid/widget/RelativeLayout;
.source "AdnEditorView.java"

# interfaces
.implements Lcom/android/contacts/editor/Editor;


# static fields
.field protected static final CONTACT_NAME_RES_FIELD:I = 0x7f040006

.field protected static final RES_FIELD:I = 0x7f040008


# instance fields
.field protected mEntry:Lcom/android/contacts/common/model/ValuesDelta;

.field protected mFields:Landroid/view/ViewGroup;

.field private mFormatter:Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberFormatter;

.field protected mHideOptional:Z

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mListener:Lcom/android/contacts/editor/Editor$EditorListener;

.field protected mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->mHideOptional:Z

    .line 80
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberFormatter;

    invoke-direct {v0, p1}, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberFormatter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->mFormatter:Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberFormatter;

    .line 78
    return-void
.end method

.method private prepareFiledView(Landroid/widget/TextView;Lcom/android/contacts/common/model/account/AccountType$EditField;Ljava/lang/String;Lcom/android/contacts/common/model/ValuesDelta;ZZ)Z
    .locals 9
    .param p1, "fieldView"    # Landroid/widget/TextView;
    .param p2, "field"    # Lcom/android/contacts/common/model/account/AccountType$EditField;
    .param p3, "mimetype"    # Ljava/lang/String;
    .param p4, "entry"    # Lcom/android/contacts/common/model/ValuesDelta;
    .param p5, "hidePossible"    # Z
    .param p6, "enabled"    # Z

    .prologue
    const/4 v8, 0x3

    const/4 v6, 0x0

    .line 191
    iget v7, p2, Lcom/android/contacts/common/model/account/AccountType$EditField;->titleRes:I

    if-lez v7, :cond_0

    .line 192
    iget v7, p2, Lcom/android/contacts/common/model/account/AccountType$EditField;->titleRes:I

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setHint(I)V

    .line 194
    :cond_0
    iget v2, p2, Lcom/android/contacts/common/model/account/AccountType$EditField;->inputType:I

    .line 195
    .local v2, "inputType":I
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 196
    if-ne v2, v8, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 197
    invoke-static {v7}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->createPhoneNumberTextWatcher(Landroid/content/Context;)Landroid/text/TextWatcher;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 200
    :cond_1
    iget v7, p2, Lcom/android/contacts/common/model/account/AccountType$EditField;->minLines:I

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setMinLines(I)V

    .line 203
    iget-object v0, p2, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    .line 204
    .local v0, "column":Ljava/lang/String;
    invoke-virtual {p4, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 205
    .local v4, "value":Ljava/lang/String;
    if-ne v2, v8, :cond_4

    .line 206
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->mFormatter:Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberFormatter;

    invoke-virtual {v7, v4}, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberFormatter;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, "phonenumber":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    .end local v3    # "phonenumber":Ljava/lang/String;
    :goto_0
    iget-object v7, p2, Lcom/android/contacts/common/model/account/AccountType$EditField;->inputFilters:[Landroid/text/InputFilter;

    if-eqz v7, :cond_2

    .line 214
    iget-object v7, p2, Lcom/android/contacts/common/model/account/AccountType$EditField;->inputFilters:[Landroid/text/InputFilter;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 218
    :cond_2
    new-instance v7, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView$1;

    invoke-direct {v7, p0, p1, v0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView$1;-><init>(Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 242
    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-boolean v1, p2, Lcom/android/contacts/common/model/account/AccountType$EditField;->optional:Z

    .line 243
    :goto_1
    iget-boolean v7, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->mHideOptional:Z

    if-eqz v7, :cond_6

    move v5, v1

    .line 244
    :goto_2
    instance-of v7, p1, Landroid/widget/EditText;

    if-eqz v7, :cond_7

    .line 245
    if-eqz v5, :cond_3

    const/16 v6, 0x8

    :cond_3
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    :goto_3
    invoke-virtual {p1, p6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 250
    if-nez p5, :cond_8

    move p5, v1

    .line 251
    .end local p5    # "hidePossible":Z
    :goto_4
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v6, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 253
    return p5

    .line 209
    .restart local p5    # "hidePossible":Z
    :cond_4
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 242
    :cond_5
    const/4 v1, 0x0

    .local v1, "couldHide":Z
    goto :goto_1

    .line 243
    .end local v1    # "couldHide":Z
    :cond_6
    const/4 v5, 0x0

    .local v5, "willHide":Z
    goto :goto_2

    .line 247
    .end local v5    # "willHide":Z
    :cond_7
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 250
    :cond_8
    const/4 p5, 0x1

    .local p5, "hidePossible":Z
    goto :goto_4
.end method


# virtual methods
.method public clearAllFields()V
    .locals 0

    .prologue
    .line 272
    return-void
.end method

.method public deleteEditor()V
    .locals 0

    .prologue
    .line 267
    return-void
.end method

.method public editNewlyAddedField()V
    .locals 0

    .prologue
    .line 277
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method public onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/contacts/editor/Editor$EditorListener;->onRequest(I)V

    .line 124
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 87
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 88
    const-string/jumbo v1, "layout_inflater"

    .line 87
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->mInflater:Landroid/view/LayoutInflater;

    .line 90
    const v0, 0x7f0e003b

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->mTitle:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->mTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    :cond_0
    const v0, 0x7f0e003c

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->mFields:Landroid/view/ViewGroup;

    .line 84
    return-void
.end method

.method public setDeletable(Z)V
    .locals 0
    .param p1, "deletable"    # Z

    .prologue
    .line 257
    return-void
.end method

.method public setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/editor/Editor$EditorListener;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    .line 102
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 116
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 117
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 118
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 119
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleRes"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 110
    return-void
.end method

.method public setTitleVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 107
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->mTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    return-void

    .line 107
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setValues(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 18
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p2, "values"    # Lcom/android/contacts/common/model/ValuesDelta;
    .param p3, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p4, "readOnly"    # Z
    .param p5, "vig"    # Lcom/android/contacts/editor/ViewIdGenerator;

    .prologue
    .line 135
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    .line 137
    if-eqz p4, :cond_0

    const/4 v8, 0x0

    .line 139
    .local v8, "enabled":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/common/model/ValuesDelta;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 141
    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->setVisibility(I)V

    .line 142
    return-void

    .line 137
    .end local v8    # "enabled":Z
    :cond_0
    const/4 v8, 0x1

    .restart local v8    # "enabled":Z
    goto :goto_0

    .line 144
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->setVisibility(I)V

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 149
    const/4 v7, 0x0

    .line 150
    .local v7, "hidePossible":Z
    const-string/jumbo v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 151
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .end local v7    # "hidePossible":Z
    .local v16, "field$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/account/AccountType$EditField;

    .line 152
    .local v4, "field":Lcom/android/contacts/common/model/account/AccountType$EditField;
    const-string/jumbo v2, "data2"

    iget-object v5, v4, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->mInflater:Landroid/view/LayoutInflater;

    .line 155
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->mFields:Landroid/view/ViewGroup;

    const v6, 0x7f040006

    const/4 v9, 0x0

    .line 154
    invoke-virtual {v2, v6, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/sonyericsson/android/socialphonebook/widget/PhoneticNameTransliterator;

    .line 156
    .local v17, "givenNameEditor":Lcom/sonyericsson/android/socialphonebook/widget/PhoneticNameTransliterator;
    move-object/from16 v3, v17

    .line 158
    .local v3, "fieldView":Landroid/widget/EditText;
    const/high16 v2, 0x10000000

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 159
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    .line 160
    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0x32

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v6, 0x0

    aput-object v5, v2, v6

    .line 159
    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 162
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v8}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->prepareFiledView(Landroid/widget/TextView;Lcom/android/contacts/common/model/account/AccountType$EditField;Ljava/lang/String;Lcom/android/contacts/common/model/ValuesDelta;ZZ)Z

    move-result v7

    .line 165
    .local v7, "hidePossible":Z
    iget-boolean v2, v4, Lcom/android/contacts/common/model/account/AccountType$EditField;->needFocus:Z

    if-eqz v2, :cond_2

    .line 166
    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    .line 171
    .end local v3    # "fieldView":Landroid/widget/EditText;
    .end local v4    # "field":Lcom/android/contacts/common/model/account/AccountType$EditField;
    .end local v16    # "field$iterator":Ljava/util/Iterator;
    .end local v17    # "givenNameEditor":Lcom/sonyericsson/android/socialphonebook/widget/PhoneticNameTransliterator;
    .local v7, "hidePossible":Z
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .end local v7    # "hidePossible":Z
    .restart local v16    # "field$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/account/AccountType$EditField;

    .line 173
    .restart local v4    # "field":Lcom/android/contacts/common/model/account/AccountType$EditField;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->mFields:Landroid/view/ViewGroup;

    const v6, 0x7f040008

    const/4 v9, 0x0

    invoke-virtual {v2, v6, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/sonyericsson/android/socialphonebook/widget/ItemGenericEditor;

    .line 174
    .local v10, "fieldView":Lcom/sonyericsson/android/socialphonebook/widget/ItemGenericEditor;
    iget v2, v4, Lcom/android/contacts/common/model/account/AccountType$EditField;->inputType:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_5

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v10, v2}, Lcom/sonyericsson/android/socialphonebook/widget/ItemGenericEditor;->setIsPhoneNumber(Z)V

    .line 176
    const/high16 v2, 0x10000000

    invoke-virtual {v10, v2}, Lcom/sonyericsson/android/socialphonebook/widget/ItemGenericEditor;->setImeOptions(I)V

    .line 177
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v9, p0

    move-object v11, v4

    move-object/from16 v13, p2

    move v14, v7

    move v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->prepareFiledView(Landroid/widget/TextView;Lcom/android/contacts/common/model/account/AccountType$EditField;Ljava/lang/String;Lcom/android/contacts/common/model/ValuesDelta;ZZ)Z

    move-result v7

    .line 179
    .local v7, "hidePossible":Z
    iget-object v2, v4, Lcom/android/contacts/common/model/account/AccountType$EditField;->inputFilters:[Landroid/text/InputFilter;

    if-nez v2, :cond_4

    .line 180
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    .line 181
    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    .line 182
    const/16 v6, 0x32

    .line 181
    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v6, 0x0

    aput-object v5, v2, v6

    .line 180
    invoke-virtual {v10, v2}, Lcom/sonyericsson/android/socialphonebook/widget/ItemGenericEditor;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_2

    .line 174
    .end local v7    # "hidePossible":Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    .line 134
    .end local v4    # "field":Lcom/android/contacts/common/model/account/AccountType$EditField;
    .end local v10    # "fieldView":Lcom/sonyericsson/android/socialphonebook/widget/ItemGenericEditor;
    :cond_6
    return-void
.end method
