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
    .line 551
    new-instance v0, Lcom/android/contacts/common/model/RawContactDelta$1;

    invoke-direct {v0}, Lcom/android/contacts/common/model/RawContactDelta$1;-><init>()V

    .line 550
    sput-object v0, Lcom/android/contacts/common/model/RawContactDelta;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/common/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    .line 83
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    .line 85
    return-void
.end method

.method private containsEntry(Lcom/android/contacts/common/model/ValuesDelta;)Z
    .locals 5
    .param p1, "entry"    # Lcom/android/contacts/common/model/ValuesDelta;

    .prologue
    .line 354
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

    .line 355
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

    .line 357
    .local v0, "child":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v0, p1}, Lcom/android/contacts/common/model/ValuesDelta;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    return v4

    .line 360
    .end local v0    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v1    # "child$iterator":Ljava/util/Iterator;
    .end local v2    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_2
    const/4 v4, 0x0

    return v4
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
    .line 254
    iget-object v1, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 255
    .local v0, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 256
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 257
    iget-object v1, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 2
    .param p1, "entry"    # Lcom/android/contacts/common/model/ValuesDelta;

    .prologue
    .line 284
    invoke-virtual {p1}, Lcom/android/contacts/common/model/ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "mimeType":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    return-object p1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 516
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 334
    instance-of v5, p1, Lcom/android/contacts/common/model/RawContactDelta;

    if-eqz v5, :cond_4

    move-object v4, p1

    .line 335
    check-cast v4, Lcom/android/contacts/common/model/RawContactDelta;

    .line 338
    .local v4, "other":Lcom/android/contacts/common/model/RawContactDelta;
    iget-object v5, v4, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    iget-object v6, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v5, v6}, Lcom/android/contacts/common/model/ValuesDelta;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    return v7

    .line 340
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

    .line 341
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

    .line 343
    .local v0, "child":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-direct {v4, v0}, Lcom/android/contacts/common/model/RawContactDelta;->containsEntry(Lcom/android/contacts/common/model/ValuesDelta;)Z

    move-result v5

    if-nez v5, :cond_2

    return v7

    .line 348
    .end local v0    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v1    # "child$iterator":Ljava/util/Iterator;
    .end local v2    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_3
    const/4 v5, 0x1

    return v5

    .line 350
    .end local v3    # "mimeEntries$iterator":Ljava/util/Iterator;
    .end local v4    # "other":Lcom/android/contacts/common/model/RawContactDelta;
    :cond_4
    return v7
.end method

.method public getEntryCount(Z)I
    .locals 4
    .param p1, "onlyVisible"    # Z

    .prologue
    .line 325
    const/4 v0, 0x0

    .line 326
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

    .line 327
    .local v1, "mimeType":Ljava/lang/String;
    invoke-virtual {p0, v1, p1}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 329
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
    .line 263
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
    .line 267
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 268
    .local v3, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-nez v3, :cond_0

    const/4 v4, 0x0

    return v4

    .line 270
    :cond_0
    const/4 v2, 0x0

    .line 271
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

    .line 273
    .local v0, "child":Lcom/android/contacts/common/model/ValuesDelta;
    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 274
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 276
    .end local v0    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_3
    return v2
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDelta;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 534
    .local v2, "loader":Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 535
    .local v3, "size":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/ValuesDelta;

    iput-object v4, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    .line 536
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcom/android/contacts/common/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    .line 537
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 538
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 539
    .local v0, "child":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 537
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 532
    .end local v0    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "\n("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    const-string/jumbo v5, "Uri="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    iget-object v5, p0, Lcom/android/contacts/common/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 381
    const-string/jumbo v5, ", Values="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    iget-object v5, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v5}, Lcom/android/contacts/common/model/ValuesDelta;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    const-string/jumbo v5, ", Entries={"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
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

    .line 385
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

    .line 386
    .local v1, "child":Lcom/android/contacts/common/model/ValuesDelta;
    const-string/jumbo v5, "\n\t"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {v1, v0}, Lcom/android/contacts/common/model/ValuesDelta;->toString(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 382
    .end local v1    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v2    # "child$iterator":Ljava/util/Iterator;
    .end local v3    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    .end local v4    # "mimeEntries$iterator":Ljava/util/Iterator;
    :cond_1
    const-string/jumbo v5, "null"

    goto :goto_0

    .line 390
    .restart local v4    # "mimeEntries$iterator":Ljava/util/Iterator;
    :cond_2
    const-string/jumbo v5, "\n})\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 521
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/contacts/common/model/RawContactDelta;->getEntryCount(Z)I

    move-result v4

    .line 522
    .local v4, "size":I
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 523
    iget-object v5, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {p1, v5, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 524
    iget-object v5, p0, Lcom/android/contacts/common/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-virtual {p1, v5, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 525
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

    .line 526
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

    .line 527
    .local v0, "child":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 520
    .end local v0    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v1    # "child$iterator":Ljava/util/Iterator;
    .end local v2    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_1
    return-void
.end method
