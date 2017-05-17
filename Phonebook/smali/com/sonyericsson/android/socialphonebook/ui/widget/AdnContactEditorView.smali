.class public Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;
.super Lcom/android/contacts/editor/BaseRawContactEditorView;
.source "AdnContactEditorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView$AdnNameLengthFilter;,
        Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView$PhoneNumberLengthFilter;
    }
.end annotation


# instance fields
.field private mAccountContainer:Landroid/view/View;

.field private mAccountIcon:Landroid/widget/ImageView;

.field private mAccountIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mAccountNameTextView:Landroid/widget/TextView;

.field private mAccountTypeTextView:Landroid/widget/TextView;

.field private mAdnNumber:Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;

.field private mAnrNumber:Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;

.field private mEmail:Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;

.field private mName:Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;

.field private mPbrIndex:I

.field private mRawContactId:J

.field private phoneValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;-><init>(Landroid/content/Context;)V

    .line 72
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mRawContactId:J

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->phoneValues:Ljava/util/List;

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mPbrIndex:I

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/BaseRawContactEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mRawContactId:J

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->phoneValues:Ljava/util/List;

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mPbrIndex:I

    .line 110
    return-void
.end method

.method private ensureSimKinds(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;)V
    .locals 6
    .param p1, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p2, "source"    # Lcom/android/contacts/common/model/account/AccountType;

    .prologue
    const/4 v5, 0x2

    .line 266
    const-string/jumbo v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {p2, v3}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v2

    .line 267
    .local v2, "phoneKind":Lcom/android/contacts/common/model/dataitem/DataKind;
    const-string/jumbo v3, "vnd.android.cursor.item/phone_v2"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v1, 0x1

    .line 268
    .local v1, "hasPhoneType":Z
    :goto_0
    const/4 v0, 0x0

    .line 269
    .local v0, "child":Lcom/android/contacts/common/model/ValuesDelta;
    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    .line 270
    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 271
    invoke-static {v5}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v4

    .line 270
    invoke-direct {v3, v5, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;-><init>(II)V

    invoke-static {p1, v2, v3}, Lcom/android/contacts/common/model/RawContactModifier;->insertChild(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/account/AccountType$EditType;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    .line 275
    .local v0, "child":Lcom/android/contacts/common/model/ValuesDelta;
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->phoneValues:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    return-void

    .line 267
    .end local v0    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v1    # "hasPhoneType":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "hasPhoneType":Z
    goto :goto_0

    .line 273
    .local v0, "child":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_1
    const-string/jumbo v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {p1, v3}, Lcom/android/contacts/common/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    .local v0, "child":Lcom/android/contacts/common/model/ValuesDelta;
    goto :goto_1
.end method

.method private ensureUsimKinds(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;)V
    .locals 11
    .param p1, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p2, "source"    # Lcom/android/contacts/common/model/account/AccountType;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    .line 287
    const-string/jumbo v7, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {p2, v7}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v5

    .line 288
    .local v5, "phoneKind":Lcom/android/contacts/common/model/dataitem/DataKind;
    const-string/jumbo v7, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {p1, v7}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 289
    .local v6, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-nez v6, :cond_0

    const/4 v4, 0x0

    .line 290
    .local v4, "phoneCount":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 291
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->phoneValues:Ljava/util/List;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/common/model/ValuesDelta;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 289
    .end local v3    # "i":I
    .end local v4    # "phoneCount":I
    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .restart local v4    # "phoneCount":I
    goto :goto_0

    .line 293
    .restart local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    :goto_2
    rsub-int/lit8 v7, v4, 0x2

    if-ge v3, v7, :cond_2

    .line 294
    new-instance v7, Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 295
    invoke-static {v9}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v8

    .line 294
    invoke-direct {v7, v9, v8}, Lcom/android/contacts/common/model/account/AccountType$EditType;-><init>(II)V

    invoke-static {p1, v5, v7}, Lcom/android/contacts/common/model/RawContactModifier;->insertChild(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/account/AccountType$EditType;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    .line 296
    .local v0, "child":Lcom/android/contacts/common/model/ValuesDelta;
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->phoneValues:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 300
    .end local v0    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_2
    const-string/jumbo v7, "vnd.android.cursor.item/email_v2"

    invoke-virtual {p2, v7}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v2

    .line 301
    .local v2, "emalKind":Lcom/android/contacts/common/model/dataitem/DataKind;
    const-string/jumbo v7, "vnd.android.cursor.item/email_v2"

    invoke-virtual {p1, v7}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 302
    .local v1, "emailValuesDelta":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_4

    .line 304
    :cond_3
    new-instance v7, Lcom/android/contacts/common/model/account/AccountType$EditType;

    invoke-static {v10}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabelResource(I)I

    move-result v8

    invoke-direct {v7, v10, v8}, Lcom/android/contacts/common/model/account/AccountType$EditType;-><init>(II)V

    .line 303
    invoke-static {p1, v2, v7}, Lcom/android/contacts/common/model/RawContactModifier;->insertChild(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/account/AccountType$EditType;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 285
    :cond_4
    return-void
.end method

.method private isEntryNewAdded(Lcom/android/contacts/common/model/ValuesDelta;)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/contacts/common/model/ValuesDelta;

    .prologue
    .line 315
    invoke-virtual {p1}, Lcom/android/contacts/common/model/ValuesDelta;->beforeExists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getAccountIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mAccountIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getRawContactId()J
    .locals 2

    .prologue
    .line 320
    iget-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mRawContactId:J

    return-wide v0
.end method

.method public hideAccountContainer()V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mAccountContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 414
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 116
    const v0, 0x7f0e0037

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mName:Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;

    .line 118
    const v0, 0x7f0e0038

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mAdnNumber:Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;

    .line 120
    const v0, 0x7f0e0039

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mAnrNumber:Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mAnrNumber:Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->setVisibility(I)V

    .line 123
    const v0, 0x7f0e003a

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mEmail:Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mEmail:Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->setVisibility(I)V

    .line 126
    const v0, 0x7f0e013c

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mAccountContainer:Landroid/view/View;

    .line 127
    const v0, 0x7f0e013d

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mAccountIcon:Landroid/widget/ImageView;

    .line 128
    const v0, 0x7f0e013e

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f0e013f

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    .line 131
    invoke-super {p0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->onFinishInflate()V

    .line 115
    return-void
.end method

.method public setGroupMetaData(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "groupMetaData"    # Landroid/database/Cursor;

    .prologue
    .line 405
    return-void
.end method

.method public setPbrIndex(I)V
    .locals 0
    .param p1, "pbrIndex"    # I

    .prologue
    .line 401
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mPbrIndex:I

    .line 400
    return-void
.end method

.method public setState(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/editor/ViewIdGenerator;Z)V
    .locals 31
    .param p1, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p2, "type"    # Lcom/android/contacts/common/model/account/AccountType;
    .param p3, "vig"    # Lcom/android/contacts/editor/ViewIdGenerator;
    .param p4, "isProfile"    # Z

    .prologue
    .line 142
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 143
    :cond_0
    return-void

    .line 147
    :cond_1
    const-string/jumbo v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 149
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v30

    .line 150
    .local v30, "values":Lcom/android/contacts/common/model/ValuesDelta;
    const-string/jumbo v2, "_id"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v26

    .line 151
    .local v26, "id":Ljava/lang/Long;
    if-eqz v26, :cond_5

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    :goto_0
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mRawContactId:J

    .line 156
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->setHasPhotoEditor(Z)V

    .line 158
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/RawContactDelta;->getAccountName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mAccountName:Ljava/lang/String;

    .line 159
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/RawContactDelta;->getAccountType()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mAccountType:Ljava/lang/String;

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v17

    .line 162
    .local v17, "accountType":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 164
    const v6, 0x7f0902f3

    .line 163
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mAccountIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mAccountIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mAccountIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 169
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mAccountType:Ljava/lang/String;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getSlotNumber(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    .line 168
    invoke-static {v2, v6, v5}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getInstance(Landroid/content/Context;ZI)Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;

    move-result-object v18

    .line 170
    .local v18, "adnHelper":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mPbrIndex:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getNameLength(I)I

    move-result v29

    .line 171
    .local v29, "nameLength":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mPbrIndex:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getAdnNumberLength(I)I

    move-result v19

    .line 172
    .local v19, "adnNumberLength":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mPbrIndex:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getAnrNumberLength(I)I

    move-result v20

    .line 173
    .local v20, "anrNumberLength":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mPbrIndex:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getEmailLength(I)I

    move-result v22

    .line 174
    .local v22, "emailLength":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mPbrIndex:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getEmailRemainCapacity(I)I

    move-result v23

    .line 175
    .local v23, "emailRemainNum":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mPbrIndex:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getAnrNumberRemainCapacity(I)I

    move-result v21

    .line 177
    .local v21, "anrRemainNum":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mName:Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->setEnabled(Z)V

    .line 178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mName:Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->setVisibility(I)V

    .line 180
    invoke-virtual/range {v18 .. v18}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getUiccType()I

    move-result v25

    .line 181
    .local v25, "iccType":I
    if-eqz v25, :cond_2

    const/4 v2, 0x2

    move/from16 v0, v25

    if-ne v0, v2, :cond_6

    .line 182
    :cond_2
    invoke-direct/range {p0 .. p2}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->ensureSimKinds(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;)V

    .line 188
    :cond_3
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/common/model/account/AccountType;->getSortedDataKinds()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, "kind$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 190
    .local v3, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    iget-boolean v2, v3, Lcom/android/contacts/common/model/dataitem/DataKind;->editable:Z

    if-eqz v2, :cond_4

    .line 193
    iget-object v0, v3, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 194
    .local v28, "mimeType":Ljava/lang/String;
    const-string/jumbo v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 195
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v4

    .line 196
    .local v4, "primary":Lcom/android/contacts/common/model/ValuesDelta;
    iget-object v2, v3, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/contacts/common/model/account/AccountType$EditField;

    .line 197
    .local v24, "field":Lcom/android/contacts/common/model/account/AccountType$EditField;
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    .line 198
    new-instance v5, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView$AdnNameLengthFilter;

    move/from16 v0, v29

    invoke-direct {v5, v0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView$AdnNameLengthFilter;-><init>(I)V

    const/4 v6, 0x0

    aput-object v5, v2, v6

    .line 197
    move-object/from16 v0, v24

    iput-object v2, v0, Lcom/android/contacts/common/model/account/AccountType$EditField;->inputFilters:[Landroid/text/InputFilter;

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mName:Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v6, 0x0

    :goto_3
    move-object/from16 v5, p1

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->setValues(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mName:Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;

    const v5, 0x7f0900b3

    invoke-virtual {v2, v5}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->setTitle(I)V

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mName:Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->setTitleVisibility(Z)V

    goto :goto_2

    .line 151
    .end local v3    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    .end local v4    # "primary":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v17    # "accountType":Ljava/lang/CharSequence;
    .end local v18    # "adnHelper":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    .end local v19    # "adnNumberLength":I
    .end local v20    # "anrNumberLength":I
    .end local v21    # "anrRemainNum":I
    .end local v22    # "emailLength":I
    .end local v23    # "emailRemainNum":I
    .end local v24    # "field":Lcom/android/contacts/common/model/account/AccountType$EditField;
    .end local v25    # "iccType":I
    .end local v27    # "kind$iterator":Ljava/util/Iterator;
    .end local v28    # "mimeType":Ljava/lang/String;
    .end local v29    # "nameLength":I
    :cond_5
    const-wide/16 v8, -0x1

    goto/16 :goto_0

    .line 183
    .restart local v17    # "accountType":Ljava/lang/CharSequence;
    .restart local v18    # "adnHelper":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    .restart local v19    # "adnNumberLength":I
    .restart local v20    # "anrNumberLength":I
    .restart local v21    # "anrRemainNum":I
    .restart local v22    # "emailLength":I
    .restart local v23    # "emailRemainNum":I
    .restart local v25    # "iccType":I
    .restart local v29    # "nameLength":I
    :cond_6
    const/4 v2, 0x1

    move/from16 v0, v25

    if-eq v0, v2, :cond_7

    const/4 v2, 0x3

    move/from16 v0, v25

    if-ne v0, v2, :cond_3

    .line 184
    :cond_7
    invoke-direct/range {p0 .. p2}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->ensureUsimKinds(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;)V

    goto :goto_1

    .line 200
    .restart local v3    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    .restart local v4    # "primary":Lcom/android/contacts/common/model/ValuesDelta;
    .restart local v24    # "field":Lcom/android/contacts/common/model/account/AccountType$EditField;
    .restart local v27    # "kind$iterator":Ljava/util/Iterator;
    .restart local v28    # "mimeType":Ljava/lang/String;
    :cond_8
    const/4 v6, 0x1

    goto :goto_3

    .line 203
    .end local v4    # "primary":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v24    # "field":Lcom/android/contacts/common/model/account/AccountType$EditField;
    :cond_9
    const-string/jumbo v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 204
    iget-object v2, v3, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/contacts/common/model/account/AccountType$EditField;

    .line 205
    .restart local v24    # "field":Lcom/android/contacts/common/model/account/AccountType$EditField;
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    .line 206
    new-instance v5, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView$PhoneNumberLengthFilter;

    move/from16 v0, v19

    invoke-direct {v5, v0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView$PhoneNumberLengthFilter;-><init>(I)V

    const/4 v6, 0x0

    aput-object v5, v2, v6

    .line 205
    move-object/from16 v0, v24

    iput-object v2, v0, Lcom/android/contacts/common/model/account/AccountType$EditField;->inputFilters:[Landroid/text/InputFilter;

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->phoneValues:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/common/model/ValuesDelta;

    .line 209
    .local v7, "adnEntry":Lcom/android/contacts/common/model/ValuesDelta;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mAdnNumber:Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v9, 0x0

    :goto_4
    move-object v6, v3

    move-object/from16 v8, p1

    move-object/from16 v10, p3

    invoke-virtual/range {v5 .. v10}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->setValues(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mAdnNumber:Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;

    iget v5, v3, Lcom/android/contacts/common/model/dataitem/DataKind;->titleRes:I

    invoke-virtual {v2, v5}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->setTitle(I)V

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mAdnNumber:Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->setTitleVisibility(Z)V

    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mAdnNumber:Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->setVisibility(I)V

    .line 214
    const/4 v10, 0x0

    .line 215
    .local v10, "anrEntry":Lcom/android/contacts/common/model/ValuesDelta;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->phoneValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    if-le v2, v5, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mPbrIndex:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getAnrNumberTotalCapacity(I)I

    move-result v2

    if-lez v2, :cond_a

    .line 216
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    .line 217
    new-instance v5, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView$PhoneNumberLengthFilter;

    move/from16 v0, v20

    invoke-direct {v5, v0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView$PhoneNumberLengthFilter;-><init>(I)V

    const/4 v6, 0x0

    aput-object v5, v2, v6

    .line 216
    move-object/from16 v0, v24

    iput-object v2, v0, Lcom/android/contacts/common/model/account/AccountType$EditField;->inputFilters:[Landroid/text/InputFilter;

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->phoneValues:Ljava/util/List;

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "anrEntry":Lcom/android/contacts/common/model/ValuesDelta;
    check-cast v10, Lcom/android/contacts/common/model/ValuesDelta;

    .line 220
    .local v10, "anrEntry":Lcom/android/contacts/common/model/ValuesDelta;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mAnrNumber:Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v12, 0x0

    :goto_5
    move-object v9, v3

    move-object/from16 v11, p1

    move-object/from16 v13, p3

    invoke-virtual/range {v8 .. v13}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->setValues(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mAnrNumber:Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;

    iget v5, v3, Lcom/android/contacts/common/model/dataitem/DataKind;->titleRes:I

    invoke-virtual {v2, v5}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->setTitle(I)V

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mAnrNumber:Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->setTitleVisibility(Z)V

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mAnrNumber:Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->setVisibility(I)V

    .line 231
    .end local v10    # "anrEntry":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_a
    const/4 v2, 0x1

    move/from16 v0, v21

    if-ge v0, v2, :cond_4

    if-eqz v10, :cond_b

    invoke-virtual {v10}, Lcom/android/contacts/common/model/ValuesDelta;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 232
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mAnrNumber:Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->setEnabled(Z)V

    goto/16 :goto_2

    .line 209
    :cond_c
    const/4 v9, 0x1

    goto/16 :goto_4

    .line 220
    .restart local v10    # "anrEntry":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_d
    const/4 v12, 0x1

    goto :goto_5

    .line 234
    .end local v7    # "adnEntry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v10    # "anrEntry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v24    # "field":Lcom/android/contacts/common/model/account/AccountType$EditField;
    :cond_e
    const-string/jumbo v2, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 236
    const/4 v2, 0x1

    move/from16 v0, v25

    if-eq v0, v2, :cond_f

    const/4 v2, 0x3

    move/from16 v0, v25

    if-ne v0, v2, :cond_4

    .line 237
    :cond_f
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v4

    .line 238
    .restart local v4    # "primary":Lcom/android/contacts/common/model/ValuesDelta;
    if-eqz v4, :cond_4

    .line 239
    iget-object v2, v3, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/contacts/common/model/account/AccountType$EditField;

    .line 240
    .restart local v24    # "field":Lcom/android/contacts/common/model/account/AccountType$EditField;
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    .line 241
    new-instance v5, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView$AdnNameLengthFilter;

    move/from16 v0, v22

    invoke-direct {v5, v0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView$AdnNameLengthFilter;-><init>(I)V

    const/4 v6, 0x0

    aput-object v5, v2, v6

    .line 240
    move-object/from16 v0, v24

    iput-object v2, v0, Lcom/android/contacts/common/model/account/AccountType$EditField;->inputFilters:[Landroid/text/InputFilter;

    .line 243
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mEmail:Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v15, 0x0

    :goto_6
    move-object v12, v3

    move-object v13, v4

    move-object/from16 v14, p1

    move-object/from16 v16, p3

    invoke-virtual/range {v11 .. v16}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->setValues(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mEmail:Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->setVisibility(I)V

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mEmail:Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;

    iget v5, v3, Lcom/android/contacts/common/model/dataitem/DataKind;->titleRes:I

    invoke-virtual {v2, v5}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->setTitle(I)V

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mEmail:Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->setTitleVisibility(Z)V

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mEmail:Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->setVisibility(I)V

    .line 249
    const/4 v2, 0x1

    move/from16 v0, v23

    if-ge v0, v2, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->isEntryNewAdded(Lcom/android/contacts/common/model/ValuesDelta;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->mEmail:Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnEditorView;->setEnabled(Z)V

    goto/16 :goto_2

    .line 243
    :cond_10
    const/4 v15, 0x1

    goto :goto_6

    .line 140
    .end local v3    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    .end local v4    # "primary":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v24    # "field":Lcom/android/contacts/common/model/account/AccountType$EditField;
    .end local v28    # "mimeType":Ljava/lang/String;
    :cond_11
    return-void
.end method
