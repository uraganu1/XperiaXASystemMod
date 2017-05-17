.class public Lcom/android/contacts/common/model/RawContact;
.super Ljava/lang/Object;
.source "RawContact.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/model/RawContact$NamedDataItem;
    }
.end annotation


# instance fields
.field private mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

.field private final mContext:Landroid/content/Context;

.field private final mDataItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/RawContact$NamedDataItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/model/RawContact;-><init>(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/android/contacts/common/model/RawContact;->mContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/android/contacts/common/model/RawContact;->mValues:Landroid/content/ContentValues;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    .line 91
    return-void
.end method

.method public static createFrom(Landroid/content/Entity;)Lcom/android/contacts/common/model/RawContact;
    .locals 7
    .param p0, "entity"    # Landroid/content/Entity;

    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v4

    .line 70
    .local v4, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v3

    .line 72
    .local v3, "subValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    new-instance v0, Lcom/android/contacts/common/model/RawContact;

    const/4 v5, 0x0

    invoke-direct {v0, v5, v4}, Lcom/android/contacts/common/model/RawContact;-><init>(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 73
    .local v0, "rawContact":Lcom/android/contacts/common/model/RawContact;
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "subValue$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Entity$NamedContentValues;

    .line 74
    .local v1, "subValue":Landroid/content/Entity$NamedContentValues;
    iget-object v5, v1, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    iget-object v6, v1, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    invoke-virtual {v0, v5, v6}, Lcom/android/contacts/common/model/RawContact;->addNamedDataItemValues(Landroid/net/Uri;Landroid/content/ContentValues;)Lcom/android/contacts/common/model/RawContact$NamedDataItem;

    goto :goto_0

    .line 76
    .end local v1    # "subValue":Landroid/content/Entity$NamedContentValues;
    :cond_0
    return-object v0
.end method

.method private setAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "dataSet"    # Ljava/lang/String;

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 200
    .local v0, "values":Landroid/content/ContentValues;
    if-nez p1, :cond_0

    .line 201
    if-nez p2, :cond_2

    if-nez p3, :cond_2

    .line 203
    const-string/jumbo v1, "account_name"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 204
    const-string/jumbo v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 205
    const-string/jumbo v1, "data_set"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 206
    return-void

    .line 209
    :cond_0
    if-eqz p2, :cond_2

    .line 211
    const-string/jumbo v1, "account_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string/jumbo v1, "account_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    if-nez p3, :cond_1

    .line 214
    const-string/jumbo v1, "data_set"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 218
    :goto_0
    return-void

    .line 216
    :cond_1
    const-string/jumbo v1, "data_set"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 222
    const-string/jumbo v2, "Not a valid combination of account name, type, and data set."

    .line 221
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addDataItemValues(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/dataitem/DataItem;
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 241
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, p1}, Lcom/android/contacts/common/model/RawContact;->addNamedDataItemValues(Landroid/net/Uri;Landroid/content/ContentValues;)Lcom/android/contacts/common/model/RawContact$NamedDataItem;

    move-result-object v0

    .line 242
    .local v0, "namedItem":Lcom/android/contacts/common/model/RawContact$NamedDataItem;
    iget-object v1, v0, Lcom/android/contacts/common/model/RawContact$NamedDataItem;->dataItem:Lcom/android/contacts/common/model/dataitem/DataItem;

    return-object v1
.end method

.method public addNamedDataItemValues(Landroid/net/Uri;Landroid/content/ContentValues;)Lcom/android/contacts/common/model/RawContact$NamedDataItem;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 246
    new-instance v0, Lcom/android/contacts/common/model/RawContact$NamedDataItem;

    invoke-static {p0, p2}, Lcom/android/contacts/common/model/dataitem/DataItem;->createFrom(Lcom/android/contacts/common/model/RawContact;Landroid/content/ContentValues;)Lcom/android/contacts/common/model/dataitem/DataItem;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/common/model/RawContact$NamedDataItem;-><init>(Landroid/net/Uri;Lcom/android/contacts/common/model/dataitem/DataItem;)V

    .line 247
    .local v0, "namedItem":Lcom/android/contacts/common/model/RawContact$NamedDataItem;
    iget-object v1, p0, Lcom/android/contacts/common/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    return-object v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "account_name"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountType()Lcom/android/contacts/common/model/account/AccountType;
    .locals 3

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact;->getAccountTypeManager()Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact;->getAccountTypeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact;->getDataSet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    return-object v0
.end method

.method public getAccountTypeAndDataSetString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "account_type_and_data_set"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountTypeManager()Lcom/android/contacts/common/model/AccountTypeManager;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/contacts/common/model/RawContact;->mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/contacts/common/model/RawContact;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/RawContact;->mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/model/RawContact;->mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

    return-object v0
.end method

.method public getAccountTypeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContactId()J
    .locals 2

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "contact_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/contacts/common/model/RawContact;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDataItems()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/dataitem/DataItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/dataitem/DataItem;>;"
    iget-object v3, p0, Lcom/android/contacts/common/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "dataItem$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/RawContact$NamedDataItem;

    .line 254
    .local v0, "dataItem":Lcom/android/contacts/common/model/RawContact$NamedDataItem;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, v0, Lcom/android/contacts/common/model/RawContact$NamedDataItem;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 255
    iget-object v3, v0, Lcom/android/contacts/common/model/RawContact$NamedDataItem;->dataItem:Lcom/android/contacts/common/model/dataitem/DataItem;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 258
    .end local v0    # "dataItem":Lcom/android/contacts/common/model/RawContact$NamedDataItem;
    :cond_1
    return-object v2
.end method

.method public getDataSet()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "data_set"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getNamedDataItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/RawContact$NamedDataItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/contacts/common/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "sourceid"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSync1()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "sync1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSync2()Ljava/lang/String;
    .locals 2

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "sync2"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSync3()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "sync3"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSync4()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "sync4"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValues()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/contacts/common/model/RawContact;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method public getVersion()J
    .locals 2

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "dirty"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public isChameleonPreloadedContact()Z
    .locals 2

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 277
    const-string/jumbo v1, "sync1"

    .line 276
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils;->isChameleonPreloadedContact(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDeleted()Z
    .locals 2

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "deleted"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isDirty()Z
    .locals 2

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "dirty"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isStarred()Z
    .locals 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "starred"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setAccount(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 3
    .param p1, "accountWithDataSet"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    .line 226
    iget-object v0, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/contacts/common/model/RawContact;->setAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public setAccountToLocalContact()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/contacts/common/model/RawContact;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->getLocalAccountForContacts(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/RawContact;->setAccount(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    .line 233
    return-void
.end method

.method public setAccountToLocalProfile()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/contacts/common/model/RawContact;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->getLocalAccountForProfile(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/RawContact;->setAccount(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    .line 229
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "RawContact: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/model/RawContact;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 268
    iget-object v3, p0, Lcom/android/contacts/common/model/RawContact;->mDataItems:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "namedDataItem$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/RawContact$NamedDataItem;

    .line 269
    .local v0, "namedDataItem":Lcom/android/contacts/common/model/RawContact$NamedDataItem;
    const-string/jumbo v3, "\n  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/contacts/common/model/RawContact$NamedDataItem;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 270
    const-string/jumbo v3, "\n  -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/contacts/common/model/RawContact$NamedDataItem;->dataItem:Lcom/android/contacts/common/model/dataitem/DataItem;

    invoke-virtual {v4}, Lcom/android/contacts/common/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 272
    .end local v0    # "namedDataItem":Lcom/android/contacts/common/model/RawContact$NamedDataItem;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
