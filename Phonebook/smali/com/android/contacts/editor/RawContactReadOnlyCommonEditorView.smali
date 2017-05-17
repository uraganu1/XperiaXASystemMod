.class public Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;
.super Lcom/android/contacts/editor/BaseRawContactEditorView;
.source "RawContactReadOnlyCommonEditorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView$Listener;
    }
.end annotation


# instance fields
.field private mAccountIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mEditExternallyButton:Landroid/widget/Button;

.field private mGeneral:Landroid/view/ViewGroup;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView$Listener;

.field private mName:Landroid/widget/TextView;

.field private mRawContactId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;-><init>(Landroid/content/Context;)V

    .line 63
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->mRawContactId:J

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/BaseRawContactEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->mRawContactId:J

    .line 77
    return-void
.end method

.method private bindData(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .locals 11
    .param p1, "titleText"    # Ljava/lang/CharSequence;
    .param p2, "data"    # Ljava/lang/CharSequence;
    .param p3, "type"    # Ljava/lang/CharSequence;
    .param p4, "isFirstEntry"    # Z

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x8

    .line 188
    iget-object v6, p0, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v7, p0, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->mGeneral:Landroid/view/ViewGroup;

    const v8, 0x7f0400aa

    invoke-virtual {v6, v8, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 189
    .local v2, "field":Landroid/view/View;
    const v6, 0x7f0e01be

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 190
    .local v1, "divider":Landroid/view/View;
    if-eqz p4, :cond_0

    .line 191
    const v6, 0x7f0e0137

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 192
    .local v4, "titleView":Landroid/widget/TextView;
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 199
    .end local v4    # "titleView":Landroid/widget/TextView;
    :goto_0
    const/high16 v6, 0x7f0e0000

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 200
    .local v0, "dataView":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    const v6, 0x7f0e005a

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 202
    .local v5, "typeView":Landroid/widget/TextView;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 203
    invoke-virtual {v5, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    :goto_1
    iget-object v6, p0, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->mGeneral:Landroid/view/ViewGroup;

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 187
    return-void

    .line 195
    .end local v0    # "dataView":Landroid/widget/TextView;
    .end local v5    # "typeView":Landroid/widget/TextView;
    :cond_0
    const v6, 0x7f0e01ba

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 196
    .local v3, "titleContainer":Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 197
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 205
    .end local v3    # "titleContainer":Landroid/view/View;
    .restart local v0    # "dataView":Landroid/widget/TextView;
    .restart local v5    # "typeView":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public getAccountIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->mAccountIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getRawContactId()J
    .locals 2

    .prologue
    .line 213
    iget-wide v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->mRawContactId:J

    return-wide v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e01ff

    if-ne v0, v1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->mListener:Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView$Listener;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->mListener:Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView$Listener;

    .line 221
    new-instance v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v2, p0, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->mAccountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->mAccountType:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->mDataSet:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->mRawContactId:J

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 220
    invoke-interface {v0, v1, v2}, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView$Listener;->onExternalEditorRequest(Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/net/Uri;)V

    .line 217
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->onFinishInflate()V

    .line 90
    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 91
    const-string/jumbo v1, "layout_inflater"

    .line 90
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->mInflater:Landroid/view/LayoutInflater;

    .line 93
    const v0, 0x7f0e0201

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->mName:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f0e01ff

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->mEditExternallyButton:Landroid/widget/Button;

    .line 95
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->mEditExternallyButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v0, 0x7f0e0200

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->mGeneral:Landroid/view/ViewGroup;

    .line 87
    return-void
.end method

.method public setListener(Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView$Listener;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->mListener:Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView$Listener;

    .line 81
    return-void
.end method

.method public setState(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/editor/ViewIdGenerator;Z)V
    .locals 17
    .param p1, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p2, "type"    # Lcom/android/contacts/common/model/account/AccountType;
    .param p3, "vig"    # Lcom/android/contacts/editor/ViewIdGenerator;
    .param p4, "isProfile"    # Z

    .prologue
    .line 104
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->mGeneral:Landroid/view/ViewGroup;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 107
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    .line 110
    :cond_1
    const-string/jumbo v14, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v14}, Lcom/android/contacts/common/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 113
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/RawContactDelta;->getAccountName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->mAccountName:Ljava/lang/String;

    .line 114
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/RawContactDelta;->getAccountType()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->mAccountType:Ljava/lang/String;

    .line 115
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/RawContactDelta;->getDataSet()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->mDataSet:Ljava/lang/String;

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->getContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->mAccountIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 121
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/RawContactDelta;->getRawContactId()Ljava/lang/Long;

    move-result-object v12

    .line 123
    .local v12, "rawContactId":Ljava/lang/Long;
    if-eqz v12, :cond_2

    .line 124
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->mRawContactId:J

    .line 130
    :cond_2
    const-string/jumbo v14, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/contacts/common/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v11

    .line 131
    .local v11, "primary":Lcom/android/contacts/common/model/ValuesDelta;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->mName:Landroid/widget/TextView;

    if-eqz v11, :cond_3

    const-string/jumbo v14, "data1"

    invoke-virtual {v11, v14}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :goto_0
    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->mEditExternallyButton:Landroid/widget/Button;

    .line 135
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/common/model/account/AccountType;->getEditContactActivityClassName()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_4

    const/4 v14, 0x0

    .line 134
    :goto_1
    invoke-virtual {v15, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 140
    .local v13, "res":Landroid/content/res/Resources;
    const-string/jumbo v14, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 141
    .local v10, "phones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v10, :cond_7

    .line 142
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v6, v14, :cond_7

    .line 143
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/common/model/ValuesDelta;

    .line 145
    .local v7, "phone":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v7}, Lcom/android/contacts/common/model/ValuesDelta;->getPhoneNumber()Ljava/lang/String;

    move-result-object v14

    .line 146
    invoke-virtual {v7}, Lcom/android/contacts/common/model/ValuesDelta;->getPhoneNormalizedNumber()Ljava/lang/String;

    move-result-object v15

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    .line 144
    invoke-static/range {v14 .. v16}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 149
    .local v8, "phoneNumber":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/contacts/common/model/ValuesDelta;->phoneHasType()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 151
    invoke-virtual {v7}, Lcom/android/contacts/common/model/ValuesDelta;->getPhoneType()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v7}, Lcom/android/contacts/common/model/ValuesDelta;->getPhoneLabel()Ljava/lang/String;

    move-result-object v15

    .line 150
    invoke-static {v13, v14, v15}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 155
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f09007f

    invoke-virtual {v14, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 156
    if-nez v6, :cond_6

    const/4 v14, 0x1

    .line 155
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v8, v9, v14}, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->bindData(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 142
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 132
    .end local v6    # "i":I
    .end local v7    # "phone":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v8    # "phoneNumber":Ljava/lang/String;
    .end local v10    # "phones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    .end local v13    # "res":Landroid/content/res/Resources;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->getContext()Landroid/content/Context;

    move-result-object v14

    const v16, 0x7f090123

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    .line 136
    :cond_4
    const/16 v14, 0x8

    goto :goto_1

    .line 153
    .restart local v6    # "i":I
    .restart local v7    # "phone":Lcom/android/contacts/common/model/ValuesDelta;
    .restart local v8    # "phoneNumber":Ljava/lang/String;
    .restart local v10    # "phones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    .restart local v13    # "res":Landroid/content/res/Resources;
    :cond_5
    const/4 v9, 0x0

    .local v9, "phoneType":Ljava/lang/CharSequence;
    goto :goto_3

    .line 156
    .end local v9    # "phoneType":Ljava/lang/CharSequence;
    :cond_6
    const/4 v14, 0x0

    goto :goto_4

    .line 161
    .end local v6    # "i":I
    .end local v7    # "phone":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v8    # "phoneNumber":Ljava/lang/String;
    :cond_7
    const-string/jumbo v14, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 162
    .local v5, "emails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v5, :cond_a

    .line 163
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v6, v14, :cond_a

    .line 164
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/ValuesDelta;

    .line 165
    .local v2, "email":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v2}, Lcom/android/contacts/common/model/ValuesDelta;->getEmailData()Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "emailAddress":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/contacts/common/model/ValuesDelta;->emailHasType()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 169
    invoke-virtual {v2}, Lcom/android/contacts/common/model/ValuesDelta;->getEmailType()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v2}, Lcom/android/contacts/common/model/ValuesDelta;->getEmailLabel()Ljava/lang/String;

    move-result-object v15

    .line 168
    invoke-static {v13, v14, v15}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 173
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f090080

    invoke-virtual {v14, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 174
    if-nez v6, :cond_9

    const/4 v14, 0x1

    .line 173
    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v3, v4, v14}, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->bindData(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 163
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 171
    :cond_8
    const/4 v4, 0x0

    .local v4, "emailType":Ljava/lang/CharSequence;
    goto :goto_6

    .line 174
    .end local v4    # "emailType":Ljava/lang/CharSequence;
    :cond_9
    const/4 v14, 0x0

    goto :goto_7

    .line 179
    .end local v2    # "email":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v3    # "emailAddress":Ljava/lang/String;
    .end local v6    # "i":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->mGeneral:Landroid/view/ViewGroup;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    if-lez v14, :cond_b

    .line 180
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->mGeneral:Landroid/view/ViewGroup;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 102
    :goto_8
    return-void

    .line 182
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->mGeneral:Landroid/view/ViewGroup;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_8
.end method
