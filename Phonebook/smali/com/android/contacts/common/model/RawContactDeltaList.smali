.class public Lcom/android/contacts/common/model/RawContactDeltaList;
.super Ljava/util/ArrayList;
.source "RawContactDeltaList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/model/RawContactDeltaList$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/contacts/common/model/RawContactDelta;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/common/model/RawContactDeltaList;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final VERBOSE_LOGGING:Z


# instance fields
.field private mIsUnlinkingRawContact:Z

.field private mJoinWithRawContactIds:[J

.field private mUnlinkRawContactId:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/model/RawContactDeltaList;->TAG:Ljava/lang/String;

    .line 52
    sget-boolean v0, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->VERBOSE:Z

    sput-boolean v0, Lcom/android/contacts/common/model/RawContactDeltaList;->VERBOSE_LOGGING:Z

    .line 448
    new-instance v0, Lcom/android/contacts/common/model/RawContactDeltaList$1;

    invoke-direct {v0}, Lcom/android/contacts/common/model/RawContactDeltaList$1;-><init>()V

    .line 447
    sput-object v0, Lcom/android/contacts/common/model/RawContactDeltaList;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 50
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/RawContactDeltaList;->mUnlinkRawContactId:Ljava/lang/Long;

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/model/RawContactDeltaList;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/contacts/common/model/RawContactDeltaList;-><init>()V

    return-void
.end method

.method private buildSplitContactDiff(Ljava/util/ArrayList;II[I)V
    .locals 10
    .param p2, "index1"    # I
    .param p3, "index2"    # I
    .param p4, "backRefs"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;II[I)V"
        }
    .end annotation

    .prologue
    .local p1, "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-wide/16 v8, 0x0

    .line 297
    sget-object v5, Landroid/provider/ContactsContract$AggregationExceptions;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 298
    .local v2, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v5, "type"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 300
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/model/RawContactDelta;

    invoke-virtual {v5}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v5

    const-string/jumbo v6, "_id"

    invoke-virtual {v5, v6}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 301
    .local v3, "rawContactId1":Ljava/lang/Long;
    aget v0, p4, p2

    .line 302
    .local v0, "backRef1":I
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v5, v6, v8

    if-ltz v5, :cond_0

    .line 303
    const-string/jumbo v5, "raw_contact_id1"

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 310
    :goto_0
    invoke-virtual {p0, p3}, Lcom/android/contacts/common/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/model/RawContactDelta;

    invoke-virtual {v5}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v5

    const-string/jumbo v6, "_id"

    invoke-virtual {v5, v6}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 311
    .local v4, "rawContactId2":Ljava/lang/Long;
    aget v1, p4, p3

    .line 312
    .local v1, "backRef2":I
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v5, v6, v8

    if-ltz v5, :cond_2

    .line 313
    const-string/jumbo v5, "raw_contact_id2"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 320
    :goto_1
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    return-void

    .line 304
    .end local v1    # "backRef2":I
    .end local v4    # "rawContactId2":Ljava/lang/Long;
    :cond_0
    if-ltz v0, :cond_1

    .line 305
    const-string/jumbo v5, "raw_contact_id1"

    invoke-virtual {v2, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 307
    :cond_1
    return-void

    .line 314
    .restart local v1    # "backRef2":I
    .restart local v4    # "rawContactId2":Ljava/lang/Long;
    :cond_2
    if-ltz v1, :cond_3

    .line 315
    const-string/jumbo v5, "raw_contact_id2"

    invoke-virtual {v2, v5, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    .line 317
    :cond_3
    return-void
.end method

.method private buildSplitContactDiff(Ljava/util/ArrayList;[I)V
    .locals 4
    .param p2, "backRefs"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .line 263
    .local p1, "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v3, p0, Lcom/android/contacts/common/model/RawContactDeltaList;->mUnlinkRawContactId:Ljava/lang/Long;

    invoke-direct {p0, v3}, Lcom/android/contacts/common/model/RawContactDeltaList;->getIndex(Ljava/lang/Long;)I

    move-result v2

    .line 264
    .local v2, "unlinkRawContactIndex":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    return-void

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->size()I

    move-result v0

    .line 267
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 268
    if-eq v2, v1, :cond_1

    .line 269
    invoke-direct {p0, p1, v2, v1, p2}, Lcom/android/contacts/common/model/RawContactDeltaList;->buildSplitContactDiff(Ljava/util/ArrayList;II[I)V

    .line 267
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    :cond_2
    return-void
.end method

.method private static diffToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "[\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "op$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentProviderOperation;

    .line 239
    .local v0, "op":Landroid/content/ContentProviderOperation;
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const-string/jumbo v3, ",\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 242
    .end local v0    # "op":Landroid/content/ContentProviderOperation;
    :cond_0
    const-string/jumbo v3, "]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static fromIterator(Ljava/util/Iterator;)Lcom/android/contacts/common/model/RawContactDeltaList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;)",
            "Lcom/android/contacts/common/model/RawContactDeltaList;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    new-instance v3, Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-direct {v3}, Lcom/android/contacts/common/model/RawContactDeltaList;-><init>()V

    .line 107
    .local v3, "state":Lcom/android/contacts/common/model/RawContactDeltaList;
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 109
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 110
    .local v1, "nextObject":Ljava/lang/Object;
    instance-of v4, v1, Landroid/content/Entity;

    if-eqz v4, :cond_0

    .line 111
    check-cast v1, Landroid/content/Entity;

    .end local v1    # "nextObject":Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/contacts/common/model/RawContact;->createFrom(Landroid/content/Entity;)Lcom/android/contacts/common/model/RawContact;

    move-result-object v0

    .line 113
    .local v0, "before":Lcom/android/contacts/common/model/RawContact;
    :goto_1
    invoke-static {v0}, Lcom/android/contacts/common/model/RawContactDelta;->fromBefore(Lcom/android/contacts/common/model/RawContact;)Lcom/android/contacts/common/model/RawContactDelta;

    move-result-object v2

    .line 114
    .local v2, "rawContactDelta":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-virtual {v3, v2}, Lcom/android/contacts/common/model/RawContactDeltaList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "before":Lcom/android/contacts/common/model/RawContact;
    .end local v2    # "rawContactDelta":Lcom/android/contacts/common/model/RawContactDelta;
    .restart local v1    # "nextObject":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 112
    check-cast v0, Lcom/android/contacts/common/model/RawContact;

    .restart local v0    # "before":Lcom/android/contacts/common/model/RawContact;
    goto :goto_1

    .line 116
    .end local v0    # "before":Lcom/android/contacts/common/model/RawContact;
    .end local v1    # "nextObject":Ljava/lang/Object;
    :cond_1
    return-object v3
.end method

.method public static fromQuery(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/RawContactDeltaList;
    .locals 8
    .param p0, "entityUri"    # Landroid/net/Uri;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 86
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 87
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 88
    sget-object v0, Lcom/android/contacts/common/model/RawContactDeltaList;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "fromQuery() returned null Cursor"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v0, Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-direct {v0}, Lcom/android/contacts/common/model/RawContactDeltaList;-><init>()V

    return-object v0

    .line 91
    :cond_0
    invoke-static {v6}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v7

    .line 93
    .local v7, "iterator":Landroid/content/EntityIterator;
    :try_start_0
    invoke-static {v7}, Lcom/android/contacts/common/model/RawContactDeltaList;->fromIterator(Ljava/util/Iterator;)Lcom/android/contacts/common/model/RawContactDeltaList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 95
    invoke-interface {v7}, Landroid/content/EntityIterator;->close()V

    .line 93
    return-object v0

    .line 94
    :catchall_0
    move-exception v0

    .line 95
    invoke-interface {v7}, Landroid/content/EntityIterator;->close()V

    .line 94
    throw v0
.end method

.method public static fromSingle(Lcom/android/contacts/common/model/RawContactDelta;)Lcom/android/contacts/common/model/RawContactDeltaList;
    .locals 1
    .param p0, "delta"    # Lcom/android/contacts/common/model/RawContactDelta;

    .prologue
    .line 67
    new-instance v0, Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-direct {v0}, Lcom/android/contacts/common/model/RawContactDeltaList;-><init>()V

    .line 68
    .local v0, "state":Lcom/android/contacts/common/model/RawContactDeltaList;
    invoke-virtual {v0, p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->add(Ljava/lang/Object;)Z

    .line 69
    return-object v0
.end method

.method private getIndex(Ljava/lang/Long;)I
    .locals 3
    .param p1, "rawContactId"    # Ljava/lang/Long;

    .prologue
    .line 280
    if-nez p1, :cond_0

    const/4 v2, -0x1

    return v2

    .line 282
    :cond_0
    const/4 v1, -0x1

    .line 283
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 284
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/RawContactDeltaList;->getRawContactId(I)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 285
    move v1, v0

    .line 289
    :cond_1
    return v1

    .line 283
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static mergeAfter(Lcom/android/contacts/common/model/RawContactDeltaList;Lcom/android/contacts/common/model/RawContactDeltaList;)Lcom/android/contacts/common/model/RawContactDeltaList;
    .locals 6
    .param p0, "local"    # Lcom/android/contacts/common/model/RawContactDeltaList;
    .param p1, "remote"    # Lcom/android/contacts/common/model/RawContactDeltaList;

    .prologue
    .line 126
    if-nez p0, :cond_0

    new-instance p0, Lcom/android/contacts/common/model/RawContactDeltaList;

    .end local p0    # "local":Lcom/android/contacts/common/model/RawContactDeltaList;
    invoke-direct {p0}, Lcom/android/contacts/common/model/RawContactDeltaList;-><init>()V

    .line 129
    .restart local p0    # "local":Lcom/android/contacts/common/model/RawContactDeltaList;
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "remoteEntity$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/RawContactDelta;

    .line 130
    .local v3, "remoteEntity":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-virtual {v3}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/common/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v2

    .line 133
    .local v2, "rawContactId":Ljava/lang/Long;
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/model/RawContactDeltaList;->getByRawContactId(Ljava/lang/Long;)Lcom/android/contacts/common/model/RawContactDelta;

    move-result-object v0

    .line 134
    .local v0, "localEntity":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-static {v0, v3}, Lcom/android/contacts/common/model/RawContactDelta;->mergeAfter(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;)Lcom/android/contacts/common/model/RawContactDelta;

    move-result-object v1

    .line 136
    .local v1, "merged":Lcom/android/contacts/common/model/RawContactDelta;
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 138
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/model/RawContactDeltaList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    .end local v0    # "localEntity":Lcom/android/contacts/common/model/RawContactDelta;
    .end local v1    # "merged":Lcom/android/contacts/common/model/RawContactDelta;
    .end local v2    # "rawContactId":Ljava/lang/Long;
    .end local v3    # "remoteEntity":Lcom/android/contacts/common/model/RawContactDelta;
    :cond_2
    return-object p0
.end method


# virtual methods
.method protected beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;
    .locals 3

    .prologue
    .line 252
    sget-object v1, Landroid/provider/ContactsContract$AggregationExceptions;->CONTENT_URI:Landroid/net/Uri;

    .line 251
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 253
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v1, "type"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 254
    return-object v0
.end method

.method public buildDiff()Ljava/util/ArrayList;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    sget-boolean v16, Lcom/android/contacts/common/model/RawContactDeltaList;->VERBOSE_LOGGING:Z

    if-eqz v16, :cond_0

    .line 153
    sget-object v16, Lcom/android/contacts/common/model/RawContactDeltaList;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "buildDiff: list="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 157
    .local v7, "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->findRawContactId()J

    move-result-wide v12

    .line 158
    .local v12, "rawContactId":J
    const/4 v9, -0x1

    .line 161
    .local v9, "firstInsertRow":I
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "delta$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/model/RawContactDelta;

    .line 162
    .local v5, "delta":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-virtual {v5, v7}, Lcom/android/contacts/common/model/RawContactDelta;->buildAssert(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 165
    .end local v5    # "delta":Lcom/android/contacts/common/model/RawContactDelta;
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 166
    .local v2, "assertMark":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v3, v0, [I

    .line 168
    .local v3, "backRefs":[I
    const/4 v14, 0x0

    .line 171
    .local v14, "rawContactIndex":I
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/model/RawContactDelta;

    .line 172
    .restart local v5    # "delta":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 173
    .local v8, "firstBatch":I
    invoke-virtual {v5}, Lcom/android/contacts/common/model/RawContactDelta;->isContactInsert()Z

    move-result v10

    .line 174
    .local v10, "isInsert":Z
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "rawContactIndex":I
    .local v15, "rawContactIndex":I
    if-eqz v10, :cond_2

    move/from16 v16, v8

    :goto_2
    aput v16, v3, v14

    .line 176
    invoke-virtual {v5, v7}, Lcom/android/contacts/common/model/RawContactDelta;->buildDiff(Ljava/util/ArrayList;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/RawContactDeltaList;->mJoinWithRawContactIds:[J

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/RawContactDeltaList;->mJoinWithRawContactIds:[J

    move-object/from16 v17, v0

    const/16 v16, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    :goto_3
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    aget-wide v20, v17, v16

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 182
    .local v11, "joinedRawContactId":Ljava/lang/Long;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 183
    .local v4, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v19, "raw_contact_id1"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 184
    const-wide/16 v20, -0x1

    cmp-long v19, v12, v20

    if-eqz v19, :cond_3

    .line 185
    const-string/jumbo v19, "raw_contact_id2"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 190
    :goto_4
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 174
    .end local v4    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v11    # "joinedRawContactId":Ljava/lang/Long;
    :cond_2
    const/16 v16, -0x1

    goto :goto_2

    .line 188
    .restart local v4    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .restart local v11    # "joinedRawContactId":Ljava/lang/Long;
    :cond_3
    const-string/jumbo v19, "raw_contact_id2"

    .line 187
    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_4

    .line 195
    .end local v4    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v11    # "joinedRawContactId":Ljava/lang/Long;
    :cond_4
    if-nez v10, :cond_6

    :cond_5
    :goto_5
    move v14, v15

    .end local v15    # "rawContactIndex":I
    .restart local v14    # "rawContactIndex":I
    goto :goto_1

    .line 198
    .end local v14    # "rawContactIndex":I
    .restart local v15    # "rawContactIndex":I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/common/model/RawContactDeltaList;->mIsUnlinkingRawContact:Z

    move/from16 v16, v0

    if-nez v16, :cond_5

    .line 200
    const-wide/16 v16, -0x1

    cmp-long v16, v12, v16

    if-eqz v16, :cond_7

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 203
    .restart local v4    # "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v16, "raw_contact_id1"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 204
    const-string/jumbo v16, "raw_contact_id2"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 205
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 207
    .end local v4    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_7
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v9, v0, :cond_8

    .line 209
    move v9, v8

    goto :goto_5

    .line 213
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 214
    .restart local v4    # "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v16, "raw_contact_id1"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 216
    const-string/jumbo v16, "raw_contact_id2"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 217
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 221
    .end local v4    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v5    # "delta":Lcom/android/contacts/common/model/RawContactDelta;
    .end local v8    # "firstBatch":I
    .end local v10    # "isInsert":Z
    .end local v15    # "rawContactIndex":I
    .restart local v14    # "rawContactIndex":I
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/common/model/RawContactDeltaList;->mIsUnlinkingRawContact:Z

    move/from16 v16, v0

    if-eqz v16, :cond_a

    .line 222
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v3}, Lcom/android/contacts/common/model/RawContactDeltaList;->buildSplitContactDiff(Ljava/util/ArrayList;[I)V

    .line 226
    :cond_a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ne v0, v2, :cond_b

    .line 227
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 229
    :cond_b
    sget-boolean v16, Lcom/android/contacts/common/model/RawContactDeltaList;->VERBOSE_LOGGING:Z

    if-eqz v16, :cond_c

    .line 230
    sget-object v16, Lcom/android/contacts/common/model/RawContactDeltaList;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "buildDiff: ops="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v7}, Lcom/android/contacts/common/model/RawContactDeltaList;->diffToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_c
    return-object v7
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x0

    return v0
.end method

.method public findRawContactId()J
    .locals 8

    .prologue
    .line 331
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "delta$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/RawContactDelta;

    .line 332
    .local v0, "delta":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v3

    const-string/jumbo v4, "_id"

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 335
    .local v2, "rawContactId":Ljava/lang/Long;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 336
    iget-boolean v3, p0, Lcom/android/contacts/common/model/RawContactDeltaList;->mIsUnlinkingRawContact:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/common/model/RawContactDeltaList;->mUnlinkRawContactId:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 337
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    return-wide v4

    .line 340
    .end local v0    # "delta":Lcom/android/contacts/common/model/RawContactDelta;
    .end local v2    # "rawContactId":Ljava/lang/Long;
    :cond_2
    const-wide/16 v4, -0x1

    return-wide v4
.end method

.method public getByRawContactId(Ljava/lang/Long;)Lcom/android/contacts/common/model/RawContactDelta;
    .locals 2
    .param p1, "rawContactId"    # Ljava/lang/Long;

    .prologue
    .line 361
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/RawContactDeltaList;->indexOfRawContactId(Ljava/lang/Long;)I

    move-result v0

    .line 362
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/RawContactDelta;

    goto :goto_0
.end method

.method public getFirstWritablePhotoCapableRawContact(Landroid/content/Context;)Lcom/android/contacts/common/model/RawContactDelta;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 385
    const/4 v2, 0x0

    .line 386
    .local v2, "entityIndex":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "delta$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/RawContactDelta;

    .line 387
    .local v0, "delta":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-virtual {v0, p1}, Lcom/android/contacts/common/model/RawContactDelta;->getRawContactAccountType(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v3

    .line 388
    .local v3, "type":Lcom/android/contacts/common/model/account/AccountType;
    invoke-virtual {v3}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->isAccountPhotoCapable(Lcom/android/contacts/common/model/account/AccountType;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 389
    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContactDelta;->isChameleonPreloadedContact()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 392
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 390
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/RawContactDelta;

    return-object v4

    .line 394
    .end local v0    # "delta":Lcom/android/contacts/common/model/RawContactDelta;
    .end local v3    # "type":Lcom/android/contacts/common/model/account/AccountType;
    :cond_2
    const/4 v4, 0x0

    return-object v4
.end method

.method public getRawContactId(I)Ljava/lang/Long;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 347
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 348
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/RawContactDelta;

    .line 349
    .local v0, "delta":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v1

    .line 350
    .local v1, "values":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    const-string/jumbo v2, "_id"

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    return-object v2

    .line 354
    .end local v0    # "delta":Lcom/android/contacts/common/model/RawContactDelta;
    .end local v1    # "values":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public indexOfRawContactId(Ljava/lang/Long;)I
    .locals 5
    .param p1, "rawContactId"    # Ljava/lang/Long;

    .prologue
    const/4 v4, -0x1

    .line 369
    if-nez p1, :cond_0

    return v4

    .line 370
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->size()I

    move-result v2

    .line 371
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 372
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/model/RawContactDeltaList;->getRawContactId(I)Ljava/lang/Long;

    move-result-object v0

    .line 373
    .local v0, "currentId":Ljava/lang/Long;
    invoke-virtual {p1, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 374
    return v1

    .line 371
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 377
    .end local v0    # "currentId":Ljava/lang/Long;
    :cond_2
    return v4
.end method

.method public isMarkedForJoining()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 406
    iget-object v1, p0, Lcom/android/contacts/common/model/RawContactDeltaList;->mJoinWithRawContactIds:[J

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/model/RawContactDeltaList;->mJoinWithRawContactIds:[J

    array-length v1, v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isMarkedForUnlinking()Z
    .locals 1

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/android/contacts/common/model/RawContactDeltaList;->mIsUnlinkingRawContact:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    .line 437
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 438
    .local v1, "loader":Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 439
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 440
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/RawContactDelta;

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/model/RawContactDeltaList;->add(Ljava/lang/Object;)Z

    .line 439
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 442
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/common/model/RawContactDeltaList;->mJoinWithRawContactIds:[J

    .line 443
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/android/contacts/common/model/RawContactDeltaList;->mIsUnlinkingRawContact:Z

    .line 444
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/common/model/RawContactDeltaList;->mUnlinkRawContactId:Ljava/lang/Long;

    .line 436
    return-void

    :cond_1
    move v3, v4

    .line 443
    goto :goto_1
.end method

.method public setJoinWithRawContacts([J)V
    .locals 1
    .param p1, "rawContactIds"    # [J

    .prologue
    .line 402
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iput-object v0, p0, Lcom/android/contacts/common/model/RawContactDeltaList;->mJoinWithRawContactIds:[J

    .line 401
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 465
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    const-string/jumbo v1, "Unlink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    iget-boolean v1, p0, Lcom/android/contacts/common/model/RawContactDeltaList;->mIsUnlinkingRawContact:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 468
    const-string/jumbo v1, ", RawContactIdToUnlink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    iget-object v1, p0, Lcom/android/contacts/common/model/RawContactDeltaList;->mUnlinkRawContactId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 470
    const-string/jumbo v1, ", Join=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    iget-object v1, p0, Lcom/android/contacts/common/model/RawContactDeltaList;->mJoinWithRawContactIds:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    const-string/jumbo v1, "], Values="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-super {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unlinkRawContact(J)V
    .locals 1
    .param p1, "unlinkRawContactId"    # J

    .prologue
    .line 414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/model/RawContactDeltaList;->mIsUnlinkingRawContact:Z

    .line 415
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/RawContactDeltaList;->mUnlinkRawContactId:Ljava/lang/Long;

    .line 413
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->size()I

    move-result v2

    .line 427
    .local v2, "size":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "delta$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/RawContactDelta;

    .line 429
    .local v0, "delta":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 431
    .end local v0    # "delta":Lcom/android/contacts/common/model/RawContactDelta;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/common/model/RawContactDeltaList;->mJoinWithRawContactIds:[J

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 432
    iget-boolean v3, p0, Lcom/android/contacts/common/model/RawContactDeltaList;->mIsUnlinkingRawContact:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    iget-object v3, p0, Lcom/android/contacts/common/model/RawContactDeltaList;->mUnlinkRawContactId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 425
    return-void

    .line 432
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
