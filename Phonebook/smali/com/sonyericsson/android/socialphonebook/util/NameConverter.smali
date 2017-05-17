.class public Lcom/sonyericsson/android/socialphonebook/util/NameConverter;
.super Ljava/lang/Object;
.source "NameConverter.java"


# static fields
.field public static final STRUCTURED_NAME_FIELDS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 47
    const-string/jumbo v1, "data4"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 48
    const-string/jumbo v1, "data2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 49
    const-string/jumbo v1, "data5"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 50
    const-string/jumbo v1, "data3"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 51
    const-string/jumbo v1, "data6"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 46
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/NameConverter;->STRUCTURED_NAME_FIELDS:[Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendQueryParameter(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "builder"    # Landroid/net/Uri$Builder;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 173
    :cond_0
    return-void
.end method

.method private static buildName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "firstName"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "lastName"    # Ljava/lang/String;

    .prologue
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .local v0, "displayName":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static displayNameToStructuredName(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 162
    if-nez p2, :cond_0

    .line 163
    new-instance p2, Landroid/content/ContentValues;

    .end local p2    # "contentValues":Landroid/content/ContentValues;
    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 165
    .restart local p2    # "contentValues":Landroid/content/ContentValues;
    :cond_0
    invoke-static {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/NameConverter;->displayNameToStructuredName(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 166
    .local v2, "mapValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 167
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 170
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-object p2
.end method

.method public static displayNameToStructuredName(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    new-instance v9, Ljava/util/TreeMap;

    invoke-direct {v9}, Ljava/util/TreeMap;-><init>()V

    .line 126
    .local v9, "structuredName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "complete_name"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 128
    .local v6, "builder":Landroid/net/Uri$Builder;
    const-string/jumbo v0, "data1"

    invoke-static {v6, v0, p1}, Lcom/sonyericsson/android/socialphonebook/util/NameConverter;->appendQueryParameter(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v7, 0x0

    .line 132
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/socialphonebook/util/NameConverter;->STRUCTURED_NAME_FIELDS:[Ljava/lang/String;

    .line 133
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 132
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 134
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/NameConverter;->STRUCTURED_NAME_FIELDS:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_0

    .line 136
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/NameConverter;->STRUCTURED_NAME_FIELDS:[Ljava/lang/String;

    aget-object v0, v0, v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 140
    .end local v8    # "i":I
    :cond_0
    if-eqz v7, :cond_1

    .line 141
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 144
    :cond_1
    return-object v9

    .line 139
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 140
    if-eqz v7, :cond_2

    .line 141
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 139
    :cond_2
    throw v0
.end method

.method private static fetchDisplayName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 96
    const/4 v7, 0x0

    .line 97
    .local v7, "displayName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 99
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 100
    const-string/jumbo v1, "data1"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 101
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    .line 99
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 102
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 106
    .end local v7    # "displayName":Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 107
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 110
    :cond_1
    return-object v7

    .line 105
    .end local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "displayName":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 106
    if-eqz v6, :cond_2

    .line 107
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 105
    :cond_2
    throw v0
.end method

.method public static structuredNameToDisplayName(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 83
    sget-object v2, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "complete_name"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 84
    .local v0, "builder":Landroid/net/Uri$Builder;
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/util/NameConverter;->STRUCTURED_NAME_FIELDS:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 85
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 86
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lcom/sonyericsson/android/socialphonebook/util/NameConverter;->appendQueryParameter(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sonyericsson/android/socialphonebook/util/NameConverter;->fetchDisplayName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static structuredNameToDisplayName(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "structuredName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v2, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "complete_name"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 68
    .local v0, "builder":Landroid/net/Uri$Builder;
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/util/NameConverter;->STRUCTURED_NAME_FIELDS:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v4, v3

    .line 69
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/NameConverter;->appendQueryParameter(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 73
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sonyericsson/android/socialphonebook/util/NameConverter;->fetchDisplayName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static structuredNameToSimName(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v5, 0x0

    .line 193
    if-nez p1, :cond_0

    return-object v5

    .line 195
    :cond_0
    const-string/jumbo v5, "data2"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "givenName":Ljava/lang/String;
    if-nez v3, :cond_1

    const-string/jumbo v3, ""

    .line 198
    :goto_0
    const-string/jumbo v5, "data3"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "familyName":Ljava/lang/String;
    if-nez v2, :cond_2

    const-string/jumbo v2, ""

    .line 201
    :goto_1
    const-string/jumbo v0, ""

    .line 206
    .local v0, "displayName":Ljava/lang/String;
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;

    move-result-object v4

    .line 208
    .local v4, "mContactsPrefs":Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;
    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->getDisplayOrder()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    const/4 v1, 0x1

    .line 210
    .local v1, "displayOrderGivenNameFirst":Z
    :goto_2
    if-eqz v1, :cond_4

    .line 211
    const-string/jumbo v5, " "

    invoke-static {v3, v5, v2}, Lcom/sonyericsson/android/socialphonebook/util/NameConverter;->buildName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    :goto_3
    return-object v0

    .line 196
    .end local v0    # "displayName":Ljava/lang/String;
    .end local v1    # "displayOrderGivenNameFirst":Z
    .end local v2    # "familyName":Ljava/lang/String;
    .end local v4    # "mContactsPrefs":Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 199
    .restart local v2    # "familyName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 208
    .restart local v0    # "displayName":Ljava/lang/String;
    .restart local v4    # "mContactsPrefs":Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "displayOrderGivenNameFirst":Z
    goto :goto_2

    .line 213
    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 216
    :cond_5
    const-string/jumbo v5, ""

    invoke-static {v2, v5, v3}, Lcom/sonyericsson/android/socialphonebook/util/NameConverter;->buildName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 214
    :cond_6
    const-string/jumbo v5, ", "

    invoke-static {v2, v5, v3}, Lcom/sonyericsson/android/socialphonebook/util/NameConverter;->buildName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method
