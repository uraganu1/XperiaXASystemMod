.class public Lcom/android/contacts/common/model/dataitem/DataItem;
.super Ljava/lang/Object;
.source "DataItem.java"

# interfaces
.implements Lcom/android/contacts/common/Collapser$Collapsible;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/contacts/common/Collapser$Collapsible",
        "<",
        "Lcom/android/contacts/common/model/dataitem/DataItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContentValues:Landroid/content/ContentValues;

.field private mDataKind:Lcom/android/contacts/common/model/dataitem/DataKind;

.field private final mRawContact:Lcom/android/contacts/common/model/RawContact;


# direct methods
.method protected constructor <init>(Lcom/android/contacts/common/model/RawContact;Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "rawContact"    # Lcom/android/contacts/common/model/RawContact;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p2, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    .line 65
    iput-object p1, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mRawContact:Lcom/android/contacts/common/model/RawContact;

    .line 63
    return-void
.end method

.method public static createFrom(Lcom/android/contacts/common/model/RawContact;Landroid/content/ContentValues;)Lcom/android/contacts/common/model/dataitem/DataItem;
    .locals 2
    .param p0, "rawContact"    # Lcom/android/contacts/common/model/RawContact;
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 73
    const-string/jumbo v1, "mimetype"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "mimeType":Ljava/lang/String;
    const-string/jumbo v1, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    new-instance v1, Lcom/android/contacts/common/model/dataitem/GroupMembershipDataItem;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/common/model/dataitem/GroupMembershipDataItem;-><init>(Lcom/android/contacts/common/model/RawContact;Landroid/content/ContentValues;)V

    return-object v1

    .line 76
    :cond_0
    const-string/jumbo v1, "vnd.android.cursor.item/name"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    new-instance v1, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;-><init>(Lcom/android/contacts/common/model/RawContact;Landroid/content/ContentValues;)V

    return-object v1

    .line 78
    :cond_1
    const-string/jumbo v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    new-instance v1, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;-><init>(Lcom/android/contacts/common/model/RawContact;Landroid/content/ContentValues;)V

    return-object v1

    .line 80
    :cond_2
    const-string/jumbo v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 81
    new-instance v1, Lcom/android/contacts/common/model/dataitem/EmailDataItem;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/common/model/dataitem/EmailDataItem;-><init>(Lcom/android/contacts/common/model/RawContact;Landroid/content/ContentValues;)V

    return-object v1

    .line 82
    :cond_3
    const-string/jumbo v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 83
    new-instance v1, Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;-><init>(Lcom/android/contacts/common/model/RawContact;Landroid/content/ContentValues;)V

    return-object v1

    .line 84
    :cond_4
    const-string/jumbo v1, "vnd.android.cursor.item/im"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 85
    new-instance v1, Lcom/android/contacts/common/model/dataitem/ImDataItem;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/common/model/dataitem/ImDataItem;-><init>(Lcom/android/contacts/common/model/RawContact;Landroid/content/ContentValues;)V

    return-object v1

    .line 86
    :cond_5
    const-string/jumbo v1, "vnd.android.cursor.item/organization"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 87
    new-instance v1, Lcom/android/contacts/common/model/dataitem/OrganizationDataItem;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/common/model/dataitem/OrganizationDataItem;-><init>(Lcom/android/contacts/common/model/RawContact;Landroid/content/ContentValues;)V

    return-object v1

    .line 88
    :cond_6
    const-string/jumbo v1, "vnd.android.cursor.item/nickname"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 89
    new-instance v1, Lcom/android/contacts/common/model/dataitem/NicknameDataItem;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/common/model/dataitem/NicknameDataItem;-><init>(Lcom/android/contacts/common/model/RawContact;Landroid/content/ContentValues;)V

    return-object v1

    .line 90
    :cond_7
    const-string/jumbo v1, "vnd.android.cursor.item/note"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 91
    new-instance v1, Lcom/android/contacts/common/model/dataitem/NoteDataItem;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/common/model/dataitem/NoteDataItem;-><init>(Lcom/android/contacts/common/model/RawContact;Landroid/content/ContentValues;)V

    return-object v1

    .line 92
    :cond_8
    const-string/jumbo v1, "vnd.android.cursor.item/website"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 93
    new-instance v1, Lcom/android/contacts/common/model/dataitem/WebsiteDataItem;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/common/model/dataitem/WebsiteDataItem;-><init>(Lcom/android/contacts/common/model/RawContact;Landroid/content/ContentValues;)V

    return-object v1

    .line 94
    :cond_9
    const-string/jumbo v1, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 95
    new-instance v1, Lcom/android/contacts/common/model/dataitem/SipAddressDataItem;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/common/model/dataitem/SipAddressDataItem;-><init>(Lcom/android/contacts/common/model/RawContact;Landroid/content/ContentValues;)V

    return-object v1

    .line 96
    :cond_a
    const-string/jumbo v1, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 97
    new-instance v1, Lcom/android/contacts/common/model/dataitem/EventDataItem;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/common/model/dataitem/EventDataItem;-><init>(Lcom/android/contacts/common/model/RawContact;Landroid/content/ContentValues;)V

    return-object v1

    .line 98
    :cond_b
    const-string/jumbo v1, "vnd.android.cursor.item/relation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 99
    new-instance v1, Lcom/android/contacts/common/model/dataitem/RelationDataItem;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/common/model/dataitem/RelationDataItem;-><init>(Lcom/android/contacts/common/model/RawContact;Landroid/content/ContentValues;)V

    return-object v1

    .line 100
    :cond_c
    const-string/jumbo v1, "vnd.android.cursor.item/identity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 101
    new-instance v1, Lcom/android/contacts/common/model/dataitem/IdentityDataItem;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/common/model/dataitem/IdentityDataItem;-><init>(Lcom/android/contacts/common/model/RawContact;Landroid/content/ContentValues;)V

    return-object v1

    .line 102
    :cond_d
    const-string/jumbo v1, "vnd.android.cursor.item/photo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 103
    new-instance v1, Lcom/android/contacts/common/model/dataitem/PhotoDataItem;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/common/model/dataitem/PhotoDataItem;-><init>(Lcom/android/contacts/common/model/RawContact;Landroid/content/ContentValues;)V

    return-object v1

    .line 107
    :cond_e
    new-instance v1, Lcom/android/contacts/common/model/dataitem/DataItem;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/common/model/dataitem/DataItem;-><init>(Lcom/android/contacts/common/model/RawContact;Landroid/content/ContentValues;)V

    return-object v1
.end method


# virtual methods
.method public buildDataString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 213
    iget-object v3, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mRawContact:Lcom/android/contacts/common/model/RawContact;

    if-nez v3, :cond_0

    .line 214
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "mRawContact must be non-null to call getDataKind()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getDataKind()Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v1

    .line 218
    .local v1, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    iget-object v3, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    if-nez v3, :cond_1

    .line 219
    return-object v2

    .line 221
    :cond_1
    iget-object v3, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    iget-object v4, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mRawContact:Lcom/android/contacts/common/model/RawContact;

    invoke-virtual {v4}, Lcom/android/contacts/common/model/RawContact;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 222
    iget-object v5, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    .line 221
    invoke-interface {v3, v4, v5}, Lcom/android/contacts/common/model/account/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 223
    .local v0, "actionBody":Ljava/lang/CharSequence;
    if-nez v0, :cond_2

    :goto_0
    return-object v2

    :cond_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public buildDataStringForDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->buildDataString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public buildDataStringForHeader()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 233
    iget-object v3, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mRawContact:Lcom/android/contacts/common/model/RawContact;

    if-nez v3, :cond_0

    .line 234
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "mRawContact must be non-null to call getDataKind()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getDataKind()Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v1

    .line 238
    .local v1, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    iget-object v3, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    if-nez v3, :cond_1

    .line 239
    return-object v2

    .line 241
    :cond_1
    iget-object v3, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    iget-object v4, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mRawContact:Lcom/android/contacts/common/model/RawContact;

    invoke-virtual {v4}, Lcom/android/contacts/common/model/RawContact;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 242
    iget-object v5, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    .line 241
    invoke-interface {v3, v4, v5}, Lcom/android/contacts/common/model/account/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 243
    .local v0, "actionHeader":Ljava/lang/CharSequence;
    if-nez v0, :cond_2

    :goto_0
    return-object v2

    :cond_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public collapseWith(Lcom/android/contacts/common/model/dataitem/DataItem;)V
    .locals 0
    .param p1, "t"    # Lcom/android/contacts/common/model/dataitem/DataItem;

    .prologue
    .line 264
    return-void
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Object;

    .prologue
    .line 264
    check-cast p1, Lcom/android/contacts/common/model/dataitem/DataItem;

    .end local p1    # "t":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->collapseWith(Lcom/android/contacts/common/model/dataitem/DataItem;)V

    return-void
.end method

.method public getAccountType()Lcom/android/contacts/common/model/account/AccountType;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 166
    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mRawContact:Lcom/android/contacts/common/model/RawContact;

    if-nez v0, :cond_0

    .line 167
    return-object v1

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mRawContact:Lcom/android/contacts/common/model/RawContact;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContact;->getAccountType()Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    return-object v0
.end method

.method public getAccountTypeManager()Lcom/android/contacts/common/model/AccountTypeManager;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 158
    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mRawContact:Lcom/android/contacts/common/model/RawContact;

    if-nez v0, :cond_0

    .line 159
    return-object v1

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mRawContact:Lcom/android/contacts/common/model/RawContact;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContact;->getAccountTypeManager()Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    return-object v0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method public getDataKind()Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 4

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mRawContact:Lcom/android/contacts/common/model/RawContact;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "mRawContact must be non-null to call getDataKind()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mDataKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    if-nez v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mRawContact:Lcom/android/contacts/common/model/RawContact;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContact;->getAccountTypeManager()Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mRawContact:Lcom/android/contacts/common/model/RawContact;

    invoke-virtual {v1}, Lcom/android/contacts/common/model/RawContact;->getAccountTypeString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mRawContact:Lcom/android/contacts/common/model/RawContact;

    invoke-virtual {v2}, Lcom/android/contacts/common/model/RawContact;->getDataSet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    .line 182
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/contacts/common/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mDataKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mDataKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    return-object v0
.end method

.method public getDataVersion()I
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "data_version"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getKindString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getDataKind()Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    .line 259
    .local v0, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    iget v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->titleRes:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->titleRes:I

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, ""

    :goto_0
    return-object v1

    .line 260
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mRawContact:Lcom/android/contacts/common/model/RawContact;

    invoke-virtual {v1}, Lcom/android/contacts/common/model/RawContact;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->titleRes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getKindTypeColumn()I
    .locals 2

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getDataKind()Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v1

    iget-object v0, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 204
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getLastTimeUsed()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "last_time_used"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "mimetype"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRawContact()Lcom/android/contacts/common/model/RawContact;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mRawContact:Lcom/android/contacts/common/model/RawContact;

    return-object v0
.end method

.method public getRawContactId()J
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "raw_contact_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimesUsed()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "times_used"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hasKindTypeColumn()Z
    .locals 2

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getDataKind()Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v1

    iget-object v0, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 199
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPrimary()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 144
    iget-object v2, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v3, "is_primary"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 145
    .local v0, "primary":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isSuperPrimary()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 149
    iget-object v2, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v3, "is_super_primary"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 150
    .local v0, "superPrimary":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "mimetype"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public setRawContactId(J)V
    .locals 3
    .param p1, "rawContactId"    # J

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 118
    return-void
.end method

.method public shouldCollapseWith(Lcom/android/contacts/common/model/dataitem/DataItem;Landroid/content/Context;)Z
    .locals 4
    .param p1, "t"    # Lcom/android/contacts/common/model/dataitem/DataItem;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mDataKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getDataKind()Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    if-nez v0, :cond_1

    .line 271
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 273
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->buildDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .line 274
    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->buildDataString()Ljava/lang/String;

    move-result-object v3

    .line 273
    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/common/MoreContactUtils;->shouldCollapse(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;Landroid/content/Context;)Z
    .locals 1
    .param p1, "t"    # Ljava/lang/Object;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 269
    check-cast p1, Lcom/android/contacts/common/model/dataitem/DataItem;

    .end local p1    # "t":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/model/dataitem/DataItem;->shouldCollapseWith(Lcom/android/contacts/common/model/dataitem/DataItem;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
