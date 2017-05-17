.class public abstract Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;
.super Ljava/lang/Object;
.source "BasePickMode.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;


# static fields
.field protected static final MODE_FUNDAMENTAL_MASK:I = 0xffff

.field protected static final MODE_INSERT_OR_EDIT_CONTACT_BASE:I = 0x4

.field protected static final MODE_MASK_CREATE_NEW:I = 0x10000000

.field protected static final MODE_MASK_DISABLE_QUICKCONTACT:I = 0x1000000

.field protected static final MODE_MASK_DISABLE_SECTION_HEADER:I = 0x2000000

.field protected static final MODE_MASK_EDIT:I = 0x800000

.field protected static final MODE_MASK_FILTER_OUT_BY_PREDICATE:I = 0x20000

.field protected static final MODE_MASK_FILTER_OUT_PROVIDED_NUMBERS:I = 0x40000

.field protected static final MODE_MASK_LOAD_PROFILE:I = 0x100000

.field protected static final MODE_MASK_MULTI_CHOICE:I = 0x400000

.field protected static final MODE_MASK_NO_DATA:I = 0x4000000

.field protected static final MODE_MASK_NO_FILTER:I = 0x20000000

.field protected static final MODE_MASK_NO_PRESENCE:I = 0x40000000

.field protected static final MODE_MASK_RETURN_DATA_RESULT:I = 0x80000

.field protected static final MODE_MASK_SHOW_PHOTOS:I = 0x8000000

.field protected static final MODE_MASK_SUPPORT_GAL:I = 0x200000

.field protected static final MODE_PICK_CONTACT_BASE:I = 0x1

.field protected static final MODE_PICK_CONVERSATION_BASE:I = 0x20

.field protected static final MODE_PICK_EMAIL_BASE:I = 0x10

.field protected static final MODE_PICK_GROUP_BASE:I = 0x80

.field protected static final MODE_PICK_OR_CREATE_CONTACT_BASE:I = 0x2

.field protected static final MODE_PICK_PHONE_BASE:I = 0x8

.field protected static final MODE_PICK_POSTAL_BASE:I = 0x40

.field protected static final MODE_QUERY_PICK_VIEW_BASE:I = 0x100

.field protected static final MODE_UNKNOWN:I


# instance fields
.field private mFavorite:Z

.field private mGroupAccDataSet:Ljava/lang/String;

.field private mGroupAccName:Ljava/lang/String;

.field private mGroupAccType:Ljava/lang/String;

.field private mGroupMemberIds:[J

.field private mMaxRecipient:I

.field private mNumbersForFiltering:[Ljava/lang/String;

.field private mSimContactInvisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const-string/jumbo v1, "disable_sim_account"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;->mSimContactInvisible:Z

    .line 98
    const-string/jumbo v1, "extraNumbersForFiltering"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;->mNumbersForFiltering:[Ljava/lang/String;

    .line 100
    const-string/jumbo v1, "com.sonyericsson.android.socialphonebook.intent.extra.MAX_RECIPIENT"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 102
    .local v0, "maxSize":I
    if-nez v0, :cond_0

    .line 103
    const-string/jumbo v1, "max_recipient"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 105
    :cond_0
    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;->mMaxRecipient:I

    .line 106
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;->resolveGroupParam(Landroid/content/Intent;)V

    .line 96
    return-void
.end method

.method private resolveGroupParam(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 110
    const-string/jumbo v0, "group_account_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const-string/jumbo v0, "group_account_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    .line 110
    if-eqz v0, :cond_0

    .line 112
    const-string/jumbo v0, "group_account_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;->mGroupAccType:Ljava/lang/String;

    .line 113
    const-string/jumbo v0, "group_account_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;->mGroupAccName:Ljava/lang/String;

    .line 114
    const-string/jumbo v0, "group_account_data_set"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;->mGroupAccDataSet:Ljava/lang/String;

    .line 115
    const-string/jumbo v0, "group_member_ids"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;->mGroupMemberIds:[J

    .line 109
    :cond_0
    return-void
.end method


# virtual methods
.method public canCreateContact()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 126
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;->getModeConfiguration()I

    move-result v1

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public canEditContact()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;->getModeConfiguration()I

    move-result v1

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public createNewRecipientItem(Landroid/net/Uri;Landroid/database/Cursor;Landroid/content/res/Resources;)Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 265
    const/4 v2, 0x7

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "data":Ljava/lang/String;
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;

    invoke-direct {v2, p1, v1, v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;-><init>(Landroid/net/Uri;Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v2
.end method

.method public getActivityTitle()I
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public getColumnNameForFilteringByPredicate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;->shouldFilterOutByPredicate()Z

    move-result v1

    if-nez v1, :cond_0

    .line 316
    const-string/jumbo v0, "This pick mode is not configured for filtering out results by predicate.You should either not use this method, or configure current pick mode tofilter out results by predicate."

    .line 319
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 322
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, ""

    return-object v1
.end method

.method public getGroupAccountDataset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;->mGroupAccDataSet:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;->mGroupAccName:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;->mGroupAccType:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupMembers()[J
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 218
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;->mGroupMemberIds:[J

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;->mGroupMemberIds:[J

    array-length v2, v2

    if-nez v2, :cond_1

    .line 219
    :cond_0
    new-array v2, v3, [J

    return-object v2

    .line 222
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;->mGroupMemberIds:[J

    array-length v1, v2

    .line 223
    .local v1, "len":I
    new-array v0, v1, [J

    .line 224
    .local v0, "ids":[J
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;->mGroupMemberIds:[J

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 225
    return-object v0
.end method

.method public getMaxRecipient()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;->mMaxRecipient:I

    return v0
.end method

.method protected abstract getModeConfiguration()I
.end method

.method protected getNumbersForFiltering()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;->shouldFilterOutProvidedNumbers()Z

    move-result v1

    if-nez v1, :cond_0

    .line 279
    const-string/jumbo v0, "This pick mode is not configured for filtering out results by numbers.You should either not use this method, or configure current pick mode tofilter out results by numbers."

    .line 282
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 285
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;->mNumbersForFiltering:[Ljava/lang/String;

    return-object v1
.end method

.method public getPredicateForFiltering()Lcom/google/common/base/Predicate;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;->shouldFilterOutByPredicate()Z

    move-result v2

    if-nez v2, :cond_0

    .line 292
    const-string/jumbo v1, "This pick mode is not configured for filtering out results by predicate.You should either not use this method, or configure current pick mode tofilter out results by predicate."

    .line 295
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 298
    .end local v1    # "message":Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode$1;-><init>(Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;)V

    .line 309
    .local v0, "defaultPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/lang/String;>;"
    return-object v0
.end method

.method public getQueryHintResourceId()I
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public getShortcutAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitleResourceId()I
    .locals 1

    .prologue
    .line 255
    const v0, 0x1040014

    return v0
.end method

.method public getUriFromPosition(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;IJ)Landroid/net/Uri;
    .locals 3
    .param p1, "adapter"    # Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;
    .param p2, "position"    # I
    .param p3, "directoryId"    # J

    .prologue
    .line 273
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasProfile()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;->getModeConfiguration()I

    move-result v1

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isDisableQuickContact()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 141
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;->getModeConfiguration()I

    move-result v1

    const/high16 v2, 0x1000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isDisableSectionHeader()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 146
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;->getModeConfiguration()I

    move-result v1

    const/high16 v2, 0x2000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isFavorite()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;->mFavorite:Z

    return v0
.end method

.method public isMultiChoice()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 121
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;->getModeConfiguration()I

    move-result v1

    const/high16 v2, 0x400000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isNoData()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 156
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;->getModeConfiguration()I

    move-result v1

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isNoFilter()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 136
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;->getModeConfiguration()I

    move-result v1

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isShowPhotos()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;->getModeConfiguration()I

    move-result v1

    const/high16 v2, 0x8000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSimContactInvisible()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;->mSimContactInvisible:Z

    return v0
.end method

.method public isSpecificGroup()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 171
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;->getModeConfiguration()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;->mGroupAccType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v0

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;->mGroupAccName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSupportGalSearch()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 161
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;->getModeConfiguration()I

    move-result v1

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isValidSearchString(Ljava/lang/String;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public setFavorite(Z)V
    .locals 0
    .param p1, "favorite"    # Z

    .prologue
    .line 240
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;->mFavorite:Z

    .line 239
    return-void
.end method

.method public shouldFilterOutByPredicate()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 183
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;->getModeConfiguration()I

    move-result v1

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public shouldFilterOutProvidedNumbers()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 188
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;->getModeConfiguration()I

    move-result v1

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public shouldReturnDataResult()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 178
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;->getModeConfiguration()I

    move-result v1

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
