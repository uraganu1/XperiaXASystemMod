.class public Lcom/android/contacts/common/model/account/AccountWithDataSet;
.super Landroid/accounts/Account;
.source "AccountWithDataSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/model/account/AccountWithDataSet$1;
    }
.end annotation


# static fields
.field private static final ARRAY_STRINGIFY_SEPARATOR:Ljava/lang/String; = "\u0002"

.field private static final ARRAY_STRINGIFY_SEPARATOR_PAT:Ljava/util/regex/Pattern;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static final RAW_CONTACTS_URI_LIMIT_1:Landroid/net/Uri;

.field private static final STRINGIFY_SEPARATOR:Ljava/lang/String; = "\u0001"

.field private static final STRINGIFY_SEPARATOR_PAT:Ljava/util/regex/Pattern;


# instance fields
.field public final dataSet:Ljava/lang/String;

.field private final mAccountTypeWithDataSet:Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const-string/jumbo v0, "\u0001"

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 43
    sput-object v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->STRINGIFY_SEPARATOR_PAT:Ljava/util/regex/Pattern;

    .line 46
    const-string/jumbo v0, "\u0002"

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 45
    sput-object v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->ARRAY_STRINGIFY_SEPARATOR_PAT:Ljava/util/regex/Pattern;

    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->ID_PROJECTION:[Ljava/lang/String;

    .line 52
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 53
    const-string/jumbo v1, "limit"

    const-string/jumbo v2, "1"

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->RAW_CONTACTS_URI_LIMIT_1:Landroid/net/Uri;

    .line 75
    new-instance v0, Lcom/android/contacts/common/model/account/AccountWithDataSet$1;

    invoke-direct {v0}, Lcom/android/contacts/common/model/account/AccountWithDataSet$1;-><init>()V

    sput-object v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/accounts/Account;-><init>(Landroid/os/Parcel;)V

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->mAccountTypeWithDataSet:Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "dataSet"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iput-object p3, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    .line 59
    invoke-static {p2, p3}, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->mAccountTypeWithDataSet:Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    .line 56
    return-void
.end method

.method private static addStringified(Ljava/lang/StringBuilder;Lcom/android/contacts/common/model/account/AccountWithDataSet;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    .line 134
    iget-object v0, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string/jumbo v0, "\u0001"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-object v0, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string/jumbo v0, "\u0001"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget-object v0, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_0
    return-object p0
.end method

.method public static stringifyList(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "account$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 171
    .local v0, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 172
    const-string/jumbo v3, "\u0002"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :cond_0
    invoke-static {v2, v0}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->addStringified(Ljava/lang/StringBuilder;Lcom/android/contacts/common/model/account/AccountWithDataSet;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 177
    .end local v0    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static unstringify(Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x2

    .line 156
    sget-object v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->STRINGIFY_SEPARATOR_PAT:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "array":[Ljava/lang/String;
    array-length v1, v0

    if-ge v1, v2, :cond_0

    .line 158
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid string "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    :cond_0
    new-instance v2, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    const/4 v1, 0x0

    aget-object v3, v0, v1

    const/4 v1, 0x1

    aget-object v4, v0, v1

    .line 161
    aget-object v1, v0, v5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 160
    :goto_0
    invoke-direct {v2, v3, v4, v1}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 161
    :cond_1
    aget-object v1, v0, v5

    goto :goto_0
.end method

.method public static unstringifyList(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 187
    .local v2, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    return-object v2

    .line 191
    :cond_0
    sget-object v3, Lcom/android/contacts/common/model/account/AccountWithDataSet;->ARRAY_STRINGIFY_SEPARATOR_PAT:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "array":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 194
    aget-object v3, v0, v1

    invoke-static {v3}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->unstringify(Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    :cond_1
    return-object v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 118
    instance-of v0, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    check-cast p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 118
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAccountTypeWithDataSet()Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->mAccountTypeWithDataSet:Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    return-object v0
.end method

.method public hasData(Landroid/content/Context;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 95
    const-string/jumbo v6, "account_type = ? AND account_name = ?"

    .line 98
    .local v6, "BASE_SELECTION":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const-string/jumbo v3, "account_type = ? AND account_name = ? AND data_set IS NULL"

    .line 100
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    aput-object v0, v4, v8

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    aput-object v0, v4, v1

    .line 106
    .local v4, "args":[Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->RAW_CONTACTS_URI_LIMIT_1:Landroid/net/Uri;

    .line 107
    sget-object v2, Lcom/android/contacts/common/model/account/AccountWithDataSet;->ID_PROJECTION:[Ljava/lang/String;

    .line 106
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 108
    .local v7, "c":Landroid/database/Cursor;
    if-nez v7, :cond_1

    return v8

    .line 102
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "args":[Ljava/lang/String;
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_0
    const-string/jumbo v3, "account_type = ? AND account_name = ? AND data_set = ?"

    .line 103
    .restart local v3    # "selection":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    aput-object v0, v4, v8

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    aput-object v0, v4, v1

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    aput-object v0, v4, v2

    .restart local v4    # "args":[Ljava/lang/String;
    goto :goto_0

    .line 110
    .restart local v7    # "c":Landroid/database/Cursor;
    :cond_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 112
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 110
    return v0

    .line 111
    :catchall_0
    move-exception v0

    .line 112
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 111
    throw v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Landroid/accounts/Account;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    .line 125
    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 124
    :goto_0
    add-int/2addr v0, v1

    return v0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public stringify()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->addStringified(Ljava/lang/StringBuilder;Lcom/android/contacts/common/model/account/AccountWithDataSet;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AccountWithDataSet {name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", dataSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    .line 71
    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    return-void
.end method
