.class public Lcom/android/contacts/common/model/RawContactDelta;
.super Ljava/lang/Object;
.source "RawContactDelta.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/model/RawContactDelta$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/common/model/RawContactDelta;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGV:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContactsQueryUri:Landroid/net/Uri;

.field private final mEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;>;"
        }
    .end annotation
.end field

.field private mValues:Lcom/android/contacts/common/model/ValuesDelta;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/android/contacts/common/model/RawContactDelta;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/model/RawContactDelta;->TAG:Ljava/lang/String;

    .line 549
    new-instance v0, Lcom/android/contacts/common/model/RawContactDelta$1;

    invoke-direct {v0}, Lcom/android/contacts/common/model/RawContactDelta$1;-><init>()V

    .line 548
    sput-object v0, Lcom/android/contacts/common/model/RawContactDelta;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/common/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    .line 80
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/android/contacts/common/model/ValuesDelta;)V
    .locals 1
    .param p1, "values"    # Lcom/android/contacts/common/model/ValuesDelta;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/common/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    .line 80
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    .line 86
    iput-object p1, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    .line 85
    return-void
.end method

.method private containsEntry(Lcom/android/contacts/common/model/ValuesDelta;)Z
    .locals 5
    .param p1, "entry"    # Lcom/android/contacts/common/model/ValuesDelta;

    .prologue
    .line 347
    iget-object v4, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "mimeEntries$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 348
    .local v2, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 350
    .local v0, "child":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v0, p1}, Lcom/android/contacts/common/model/ValuesDelta;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    return v4

    .line 353
    .end local v0    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v1    # "child$iterator":Ljava/util/Iterator;
    .end local v2    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_2
    const/4 v4, 0x0

    return v4
.end method

.method public static fromBefore(Lcom/android/contacts/common/model/RawContact;)Lcom/android/contacts/common/model/RawContactDelta;
    .locals 5
    .param p0, "before"    # Lcom/android/contacts/common/model/RawContact;

    .prologue
    .line 94
    new-instance v2, Lcom/android/contacts/common/model/RawContactDelta;

    invoke-direct {v2}, Lcom/android/contacts/common/model/RawContactDelta;-><init>()V

    .line 95
    .local v2, "rawContactDelta":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/common/model/ValuesDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v3

    iput-object v3, v2, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    .line 96
    iget-object v3, v2, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    const-string/jumbo v4, "_id"

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/ValuesDelta;->setIdColumn(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact;->getDataItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "dataItem$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/dataitem/DataItem;

    .line 98
    .local v0, "dataItem":Lcom/android/contacts/common/model/dataitem/DataItem;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/common/model/ValuesDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    goto :goto_0

    .line 100
    .end local v0    # "dataItem":Lcom/android/contacts/common/model/dataitem/DataItem;
    :cond_0
    return-object v2
.end method

.method private getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "lazyCreate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v1, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 248
    .local v0, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 249
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_0
    return-object v0
.end method

.method public static mergeAfter(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;)Lcom/android/contacts/common/model/RawContactDelta;
    .locals 10
    .param p0, "local"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p1, "remote"    # Lcom/android/contacts/common/model/RawContactDelta;

    .prologue
    const/4 v9, 0x0

    .line 111
    iget-object v7, p1, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    .line 112
    .local v7, "remoteValues":Lcom/android/contacts/common/model/ValuesDelta;
    if-nez p0, :cond_1

    invoke-virtual {v7}, Lcom/android/contacts/common/model/ValuesDelta;->isDelete()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v7}, Lcom/android/contacts/common/model/ValuesDelta;->isTransient()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    return-object v9

    .line 115
    :cond_1
    if-nez p0, :cond_2

    new-instance p0, Lcom/android/contacts/common/model/RawContactDelta;

    .end local p0    # "local":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-direct {p0}, Lcom/android/contacts/common/model/RawContactDelta;-><init>()V

    .line 126
    .restart local p0    # "local":Lcom/android/contacts/common/model/RawContactDelta;
    :cond_2
    iget-object v8, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    iget-object v9, p1, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-static {v8, v9}, Lcom/android/contacts/common/model/ValuesDelta;->mergeAfter(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    .line 129
    iget-object v8, p1, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "mimeEntries$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 130
    .local v3, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "remoteEntry$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/model/ValuesDelta;

    .line 131
    .local v5, "remoteEntry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v5}, Lcom/android/contacts/common/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 134
    .local v0, "childId":Ljava/lang/Long;
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/RawContactDelta;->getEntry(Ljava/lang/Long;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v1

    .line 135
    .local v1, "localEntry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-static {v1, v5}, Lcom/android/contacts/common/model/ValuesDelta;->mergeAfter(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v2

    .line 137
    .local v2, "merged":Lcom/android/contacts/common/model/ValuesDelta;
    if-nez v1, :cond_4

    if-eqz v2, :cond_4

    .line 139
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    goto :goto_0

    .line 144
    .end local v0    # "childId":Ljava/lang/Long;
    .end local v1    # "localEntry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v2    # "merged":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v3    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    .end local v5    # "remoteEntry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v6    # "remoteEntry$iterator":Ljava/util/Iterator;
    :cond_5
    return-object p0
.end method

.method private possibleAdd(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V
    .locals 1
    .param p2, "builder"    # Landroid/content/ContentProviderOperation$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/content/ContentProviderOperation$Builder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 393
    .local p1, "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz p2, :cond_0

    .line 394
    invoke-virtual {p2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    :cond_0
    return-void
.end method


# virtual methods
.method public addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 2
    .param p1, "entry"    # Lcom/android/contacts/common/model/ValuesDelta;

    .prologue
    .line 277
    invoke-virtual {p1}, Lcom/android/contacts/common/model/ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "mimeType":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    return-object p1
.end method

.method public buildAssert(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "buildInto":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v6, 0x0

    .line 404
    iget-object v4, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v4}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v3

    .line 405
    .local v3, "isContactInsert":Z
    if-nez v3, :cond_2

    .line 407
    iget-object v4, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v4}, Lcom/android/contacts/common/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 408
    .local v0, "beforeId":Ljava/lang/Long;
    iget-object v4, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    const-string/jumbo v5, "version"

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 409
    .local v1, "beforeVersion":Ljava/lang/Long;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    return-void

    .line 412
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/common/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    .line 411
    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 413
    .local v2, "builder":Landroid/content/ContentProviderOperation$Builder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 414
    const-string/jumbo v4, "version"

    invoke-virtual {v2, v4, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 415
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    .end local v0    # "beforeId":Ljava/lang/Long;
    .end local v1    # "beforeVersion":Ljava/lang/Long;
    .end local v2    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_2
    return-void
.end method

.method public buildDiff(Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 425
    .local p1, "buildInto":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 427
    .local v8, "firstIndex":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v14}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v10

    .line 428
    .local v10, "isContactInsert":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v14}, Lcom/android/contacts/common/model/ValuesDelta;->isDelete()Z

    move-result v9

    .line 429
    .local v9, "isContactDelete":Z
    if-nez v10, :cond_0

    if-eqz v9, :cond_5

    :cond_0
    const/4 v11, 0x0

    .line 431
    .local v11, "isContactUpdate":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v14}, Lcom/android/contacts/common/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v4

    .line 435
    .local v4, "beforeId":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    const-string/jumbo v15, "aggregation_mode"

    .line 436
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 435
    invoke-virtual/range {v14 .. v16}, Lcom/android/contacts/common/model/ValuesDelta;->getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 438
    .local v3, "aggregationMode":I
    if-eqz v10, :cond_1

    .line 442
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    const-string/jumbo v15, "aggregation_mode"

    const/16 v16, 0x2

    invoke-virtual/range {v14 .. v16}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;I)V

    .line 446
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/common/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-virtual {v14, v15}, Lcom/android/contacts/common/model/ValuesDelta;->buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 447
    .local v5, "builder":Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/contacts/common/model/RawContactDelta;->possibleAdd(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V

    .line 450
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "mimeEntries$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 451
    .local v12, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "child$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/model/ValuesDelta;

    .line 453
    .local v6, "child":Lcom/android/contacts/common/model/ValuesDelta;
    if-nez v9, :cond_3

    .line 456
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    sget-object v15, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    invoke-virtual {v14, v15}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 457
    sget-object v14, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 458
    const-string/jumbo v15, "data"

    .line 457
    invoke-static {v14, v15}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v6, v14}, Lcom/android/contacts/common/model/ValuesDelta;->buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 463
    :goto_2
    if-eqz v5, :cond_3

    .line 465
    invoke-virtual {v6}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 466
    if-eqz v10, :cond_7

    .line 468
    const-string/jumbo v14, "raw_contact_id"

    invoke-virtual {v5, v14, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 477
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/contacts/common/model/RawContactDelta;->possibleAdd(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V

    goto :goto_1

    .line 429
    .end local v3    # "aggregationMode":I
    .end local v4    # "beforeId":Ljava/lang/Long;
    .end local v5    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v6    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v7    # "child$iterator":Ljava/util/Iterator;
    .end local v11    # "isContactUpdate":Z
    .end local v12    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    .end local v13    # "mimeEntries$iterator":Ljava/util/Iterator;
    :cond_5
    const/4 v11, 0x1

    .restart local v11    # "isContactUpdate":Z
    goto/16 :goto_0

    .line 460
    .restart local v3    # "aggregationMode":I
    .restart local v4    # "beforeId":Ljava/lang/Long;
    .restart local v5    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .restart local v6    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .restart local v7    # "child$iterator":Ljava/util/Iterator;
    .restart local v12    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    .restart local v13    # "mimeEntries$iterator":Ljava/util/Iterator;
    :cond_6
    sget-object v14, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v14}, Lcom/android/contacts/common/model/ValuesDelta;->buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    goto :goto_2

    .line 471
    :cond_7
    const-string/jumbo v14, "raw_contact_id"

    invoke-virtual {v5, v14, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_3

    .line 473
    :cond_8
    if-eqz v10, :cond_4

    .line 475
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v15, "When parent insert, child must be also"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 481
    .end local v6    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v7    # "child$iterator":Ljava/util/Iterator;
    .end local v12    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-le v14, v8, :cond_b

    const/4 v2, 0x1

    .line 482
    .local v2, "addedOperations":Z
    :goto_4
    if-eqz v2, :cond_c

    if-eqz v11, :cond_c

    .line 484
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Lcom/android/contacts/common/model/RawContactDelta;->buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 485
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 488
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Lcom/android/contacts/common/model/RawContactDelta;->buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 489
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    :cond_a
    :goto_5
    return-void

    .line 481
    .end local v2    # "addedOperations":Z
    :cond_b
    const/4 v2, 0x0

    .restart local v2    # "addedOperations":Z
    goto :goto_4

    .line 490
    :cond_c
    if-eqz v10, :cond_a

    .line 492
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-static {v14}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 493
    const-string/jumbo v14, "aggregation_mode"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 494
    const-string/jumbo v14, "_id=?"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    invoke-virtual {v5, v14, v15}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 495
    const/4 v14, 0x0

    invoke-virtual {v5, v14, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    .line 496
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5
.end method

.method protected buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;
    .locals 3
    .param p1, "beforeId"    # Ljava/lang/Long;
    .param p2, "mode"    # I

    .prologue
    .line 505
    iget-object v1, p0, Lcom/android/contacts/common/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 506
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v1, "aggregation_mode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 508
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 514
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 327
    instance-of v5, p1, Lcom/android/contacts/common/model/RawContactDelta;

    if-eqz v5, :cond_4

    move-object v4, p1

    .line 328
    check-cast v4, Lcom/android/contacts/common/model/RawContactDelta;

    .line 331
    .local v4, "other":Lcom/android/contacts/common/model/RawContactDelta;
    iget-object v5, v4, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    iget-object v6, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v5, v6}, Lcom/android/contacts/common/model/ValuesDelta;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    return v7

    .line 333
    :cond_0
    iget-object v5, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "mimeEntries$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 334
    .local v2, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 336
    .local v0, "child":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-direct {v4, v0}, Lcom/android/contacts/common/model/RawContactDelta;->containsEntry(Lcom/android/contacts/common/model/ValuesDelta;)Z

    move-result v5

    if-nez v5, :cond_2

    return v7

    .line 341
    .end local v0    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v1    # "child$iterator":Ljava/util/Iterator;
    .end local v2    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_3
    const/4 v5, 0x1

    return v5

    .line 343
    .end local v3    # "mimeEntries$iterator":Ljava/util/Iterator;
    .end local v4    # "other":Lcom/android/contacts/common/model/RawContactDelta;
    :cond_4
    return v7
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    const-string/jumbo v1, "account_name"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountType(Lcom/android/contacts/common/model/AccountTypeManager;)Lcom/android/contacts/common/model/account/AccountType;
    .locals 2
    .param p1, "manager"    # Lcom/android/contacts/common/model/AccountTypeManager;

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDelta;->getAccountType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDelta;->getDataSet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    const-string/jumbo v1, "account_type"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentValues()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 284
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    iget-object v5, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "mimeEntries$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 285
    .local v2, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 286
    .local v0, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->isDelete()Z

    move-result v5

    if-nez v5, :cond_1

    .line 287
    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->getCompleteValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 291
    .end local v0    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v2    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_2
    return-object v4
.end method

.method public getDataSet()Ljava/lang/String;
    .locals 2

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    const-string/jumbo v1, "data_set"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEntry(Ljava/lang/Long;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 6
    .param p1, "childId"    # Ljava/lang/Long;

    .prologue
    const/4 v5, 0x0

    .line 298
    if-nez p1, :cond_0

    .line 300
    return-object v5

    .line 304
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "mimeEntries$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 305
    .local v2, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 306
    .local v0, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 307
    return-object v0

    .line 311
    .end local v0    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v2    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_3
    return-object v5
.end method

.method public getEntryCount(Z)I
    .locals 4
    .param p1, "onlyVisible"    # Z

    .prologue
    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "mimeType$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 320
    .local v1, "mimeType":Ljava/lang/String;
    invoke-virtual {p0, v1, p1}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 322
    .end local v1    # "mimeType":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method public getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMimeEntriesCount(Ljava/lang/String;Z)I
    .locals 5
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "onlyVisible"    # Z

    .prologue
    .line 260
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 261
    .local v3, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-nez v3, :cond_0

    const/4 v4, 0x0

    return v4

    .line 263
    :cond_0
    const/4 v2, 0x0

    .line 264
    .local v2, "count":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 266
    .local v0, "child":Lcom/android/contacts/common/model/ValuesDelta;
    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 267
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 269
    .end local v0    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_3
    return v2
.end method

.method public getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 6
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 160
    invoke-direct {p0, p1, v5}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 161
    .local v2, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-nez v2, :cond_0

    return-object v3

    .line 163
    :cond_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 164
    .local v0, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 165
    return-object v0

    .line 170
    .end local v0    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/ValuesDelta;

    :cond_3
    return-object v3
.end method

.method public getRawContactAccountType(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/common/model/ValuesDelta;->getCompleteValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 209
    .local v1, "entityValues":Landroid/content/ContentValues;
    const-string/jumbo v3, "account_type"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "type":Ljava/lang/String;
    const-string/jumbo v3, "data_set"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "dataSet":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v3

    return-object v3
.end method

.method public getRawContactId()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    const-string/jumbo v1, "_id"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getSuperPrimaryEntry(Ljava/lang/String;Z)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 7
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "forceSelection"    # Z
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 181
    invoke-direct {p0, p1, v6}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 182
    .local v2, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-nez v2, :cond_0

    return-object v4

    .line 184
    :cond_0
    const/4 v3, 0x0

    .line 185
    .local v3, "primary":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v3    # "primary":Lcom/android/contacts/common/model/ValuesDelta;
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 186
    .local v0, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->isSuperPrimary()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 187
    return-object v0

    .line 188
    :cond_2
    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->isPrimary()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 189
    move-object v3, v0

    .local v3, "primary":Lcom/android/contacts/common/model/ValuesDelta;
    goto :goto_0

    .line 193
    .end local v0    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v3    # "primary":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_3
    if-nez p2, :cond_4

    .line 194
    return-object v4

    .line 198
    :cond_4
    if-eqz v3, :cond_5

    .line 199
    return-object v3

    .line 201
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/ValuesDelta;

    :cond_6
    return-object v4
.end method

.method public getValues()Lcom/android/contacts/common/model/ValuesDelta;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    return-object v0
.end method

.method public hasMimeEntries(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 565
    const/4 v0, 0x0

    return v0
.end method

.method public isChameleonPreloadedContact()Z
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    const-string/jumbo v1, "sync1"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils;->isChameleonPreloadedContact(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isContactInsert()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->isVisible()Z

    move-result v0

    return v0
.end method

.method public markDeleted()V
    .locals 5

    .prologue
    .line 360
    iget-object v4, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v4}, Lcom/android/contacts/common/model/ValuesDelta;->markDeleted()V

    .line 361
    iget-object v4, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "mimeEntries$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 362
    .local v2, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 363
    .local v0, "child":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->markDeleted()V

    goto :goto_0

    .line 359
    .end local v0    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v1    # "child$iterator":Ljava/util/Iterator;
    .end local v2    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_1
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDelta;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 532
    .local v2, "loader":Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 533
    .local v3, "size":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/ValuesDelta;

    iput-object v4, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    .line 534
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcom/android/contacts/common/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    .line 535
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 536
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 537
    .local v0, "child":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 535
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 530
    .end local v0    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_0
    return-void
.end method

.method public setProfileQueryUri()V
    .locals 1

    .prologue
    .line 545
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/common/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    .line 544
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 371
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "\n("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    const-string/jumbo v5, "Uri="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    iget-object v5, p0, Lcom/android/contacts/common/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 374
    const-string/jumbo v5, ", Values="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    iget-object v5, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v5}, Lcom/android/contacts/common/model/ValuesDelta;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    const-string/jumbo v5, ", Entries={"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    iget-object v5, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "mimeEntries$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 378
    .local v3, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "child$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/ValuesDelta;

    .line 379
    .local v1, "child":Lcom/android/contacts/common/model/ValuesDelta;
    const-string/jumbo v5, "\n\t"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v1, v0}, Lcom/android/contacts/common/model/ValuesDelta;->toString(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 375
    .end local v1    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v2    # "child$iterator":Ljava/util/Iterator;
    .end local v3    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    .end local v4    # "mimeEntries$iterator":Ljava/util/Iterator;
    :cond_1
    const-string/jumbo v5, "null"

    goto :goto_0

    .line 383
    .restart local v4    # "mimeEntries$iterator":Ljava/util/Iterator;
    :cond_2
    const-string/jumbo v5, "\n})\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 519
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/contacts/common/model/RawContactDelta;->getEntryCount(Z)I

    move-result v4

    .line 520
    .local v4, "size":I
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 521
    iget-object v5, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {p1, v5, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 522
    iget-object v5, p0, Lcom/android/contacts/common/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-virtual {p1, v5, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 523
    iget-object v5, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "mimeEntries$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 524
    .local v2, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 525
    .local v0, "child":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 518
    .end local v0    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v1    # "child$iterator":Ljava/util/Iterator;
    .end local v2    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_1
    return-void
.end method
