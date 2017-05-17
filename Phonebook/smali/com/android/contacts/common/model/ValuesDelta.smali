.class public Lcom/android/contacts/common/model/ValuesDelta;
.super Ljava/lang/Object;
.source "ValuesDelta.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/model/ValuesDelta$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;"
        }
    .end annotation
.end field

.field private static sNextInsertId:I


# instance fields
.field protected mAfter:Landroid/content/ContentValues;

.field protected mBefore:Landroid/content/ContentValues;

.field private mFromTemplate:Z

.field protected mIdColumn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, -0x1

    sput v0, Lcom/android/contacts/common/model/ValuesDelta;->sNextInsertId:I

    .line 473
    new-instance v0, Lcom/android/contacts/common/model/ValuesDelta$1;

    invoke-direct {v0}, Lcom/android/contacts/common/model/ValuesDelta$1;-><init>()V

    sput-object v0, Lcom/android/contacts/common/model/ValuesDelta;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 51
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string/jumbo v0, "_id"

    iput-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mIdColumn:Ljava/lang/String;

    .line 65
    return-void
.end method

.method private ensureUpdate()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    .line 273
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 271
    :cond_0
    return-void
.end method

.method public static fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 5
    .param p0, "after"    # Landroid/content/ContentValues;

    .prologue
    .line 84
    new-instance v0, Lcom/android/contacts/common/model/ValuesDelta;

    invoke-direct {v0}, Lcom/android/contacts/common/model/ValuesDelta;-><init>()V

    .line 85
    .local v0, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    .line 86
    iput-object p0, v0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 89
    iget-object v1, v0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    iget-object v2, v0, Lcom/android/contacts/common/model/ValuesDelta;->mIdColumn:Ljava/lang/String;

    sget v3, Lcom/android/contacts/common/model/ValuesDelta;->sNextInsertId:I

    add-int/lit8 v4, v3, -0x1

    sput v4, Lcom/android/contacts/common/model/ValuesDelta;->sNextInsertId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 90
    return-object v0
.end method

.method public static fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 2
    .param p0, "before"    # Landroid/content/ContentValues;

    .prologue
    .line 73
    new-instance v0, Lcom/android/contacts/common/model/ValuesDelta;

    invoke-direct {v0}, Lcom/android/contacts/common/model/ValuesDelta;-><init>()V

    .line 74
    .local v0, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    iput-object p0, v0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    .line 75
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iput-object v1, v0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 76
    return-object v0
.end method

.method public static mergeAfter(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 2
    .param p0, "local"    # Lcom/android/contacts/common/model/ValuesDelta;
    .param p1, "remote"    # Lcom/android/contacts/common/model/ValuesDelta;

    .prologue
    const/4 v1, 0x0

    .line 355
    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/android/contacts/common/model/ValuesDelta;->isDelete()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/contacts/common/model/ValuesDelta;->isTransient()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-object v1

    .line 358
    :cond_1
    if-nez p0, :cond_2

    new-instance p0, Lcom/android/contacts/common/model/ValuesDelta;

    .end local p0    # "local":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-direct {p0}, Lcom/android/contacts/common/model/ValuesDelta;-><init>()V

    .line 360
    .restart local p0    # "local":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ValuesDelta;->beforeExists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 362
    invoke-virtual {p1}, Lcom/android/contacts/common/model/ValuesDelta;->getCompleteValues()Landroid/content/ContentValues;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 368
    :goto_0
    return-object p0

    .line 365
    :cond_3
    iget-object v0, p1, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    iput-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    goto :goto_0
.end method


# virtual methods
.method public beforeExists()Z
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    iget-object v1, p0, Lcom/android/contacts/common/model/ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    .locals 4
    .param p1, "targetUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 434
    const/4 v0, 0x0

    .line 435
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 437
    iget-object v1, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    iget-object v2, p0, Lcom/android/contacts/common/model/ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 438
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 439
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    iget-object v1, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 450
    .end local v0    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_0
    :goto_0
    return-object v0

    .line 440
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ValuesDelta;->isDelete()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 442
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 443
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/contacts/common/model/ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/common/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 444
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ValuesDelta;->isUpdate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 447
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/contacts/common/model/ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/common/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 448
    iget-object v1, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 103
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 104
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public copyStringFrom(Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V
    .locals 1
    .param p1, "from"    # Lcom/android/contacts/common/model/ValuesDelta;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/android/contacts/common/model/ValuesDelta;->ensureUpdate()V

    .line 304
    invoke-virtual {p1, p2}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method public copyStructuredNameFieldsFrom(Lcom/android/contacts/common/model/ValuesDelta;)V
    .locals 1
    .param p1, "name"    # Lcom/android/contacts/common/model/ValuesDelta;

    .prologue
    .line 588
    const-string/jumbo v0, "data1"

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/ValuesDelta;->copyStringFrom(Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V

    .line 590
    const-string/jumbo v0, "data2"

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/ValuesDelta;->copyStringFrom(Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V

    .line 591
    const-string/jumbo v0, "data3"

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/ValuesDelta;->copyStringFrom(Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V

    .line 592
    const-string/jumbo v0, "data4"

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/ValuesDelta;->copyStringFrom(Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V

    .line 593
    const-string/jumbo v0, "data5"

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/ValuesDelta;->copyStringFrom(Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V

    .line 594
    const-string/jumbo v0, "data6"

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/ValuesDelta;->copyStringFrom(Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V

    .line 596
    const-string/jumbo v0, "data7"

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/ValuesDelta;->copyStringFrom(Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V

    .line 597
    const-string/jumbo v0, "data8"

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/ValuesDelta;->copyStringFrom(Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V

    .line 598
    const-string/jumbo v0, "data9"

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/ValuesDelta;->copyStringFrom(Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V

    .line 600
    const-string/jumbo v0, "data10"

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/ValuesDelta;->copyStringFrom(Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V

    .line 601
    const-string/jumbo v0, "data11"

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/ValuesDelta;->copyStringFrom(Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V

    .line 587
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 456
    const/4 v0, 0x0

    return v0
.end method

.method public emailHasType()Z
    .locals 1

    .prologue
    .line 629
    const-string/jumbo v0, "data2"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 373
    instance-of v2, p1, Lcom/android/contacts/common/model/ValuesDelta;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 375
    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 376
    .local v0, "other":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->subsetEquals(Lcom/android/contacts/common/model/ValuesDelta;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/contacts/common/model/ValuesDelta;->subsetEquals(Lcom/android/contacts/common/model/ValuesDelta;)Z

    move-result v1

    :cond_0
    return v1

    .line 378
    .end local v0    # "other":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_1
    return v1
.end method

.method public getAfter()Landroid/content/ContentValues;
    .locals 1
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    return-object v0
.end method

.method public getAsByteArray(Ljava/lang/String;)[B
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 118
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 123
    :cond_1
    return-object v1
.end method

.method public getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Integer;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 147
    :cond_1
    return-object p2
.end method

.method public getAsLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 133
    :cond_1
    return-object v1
.end method

.method public getAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 108
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 113
    :cond_1
    return-object v1
.end method

.method public getBefore()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    return-object v0
.end method

.method public getCompleteValues()Landroid/content/ContentValues;
    .locals 2

    .prologue
    .line 333
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 334
    .local v0, "values":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v1, :cond_1

    .line 338
    iget-object v1, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 340
    :cond_1
    const-string/jumbo v1, "data1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 342
    const-string/jumbo v1, "group_sourceid"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 345
    :cond_2
    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 542
    const-string/jumbo v0, "data1"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 625
    const-string/jumbo v0, "data1"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 637
    const-string/jumbo v0, "data3"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 633
    const-string/jumbo v0, "data2"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 514
    const-string/jumbo v0, "data3"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGivenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    const-string/jumbo v0, "data2"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroupRowId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 490
    const-string/jumbo v0, "data1"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getMimetype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    const-string/jumbo v0, "mimetype"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 621
    const-string/jumbo v0, "data3"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNormalizedNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 609
    const-string/jumbo v0, "data4"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 605
    const-string/jumbo v0, "data1"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 617
    const-string/jumbo v0, "data2"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneticFamilyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 530
    const-string/jumbo v0, "data9"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneticGivenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 538
    const-string/jumbo v0, "data7"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneticMiddleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 534
    const-string/jumbo v0, "data8"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoto()[B
    .locals 1

    .prologue
    .line 498
    const-string/jumbo v0, "data15"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getViewId()I
    .locals 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 175
    .local v0, "id":Ljava/lang/Long;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 642
    const/4 v0, 0x0

    return v0
.end method

.method public isChanged(Ljava/lang/String;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 152
    iget-object v4, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v4, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 156
    iget-object v4, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v4, p1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 157
    .local v0, "newValue":Ljava/lang/Object;
    iget-object v4, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v4, p1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 159
    .local v1, "oldValue":Ljava/lang/Object;
    if-nez v1, :cond_2

    .line 160
    if-eqz v0, :cond_1

    :goto_0
    return v2

    .line 153
    .end local v0    # "newValue":Ljava/lang/Object;
    .end local v1    # "oldValue":Ljava/lang/Object;
    :cond_0
    return v3

    .restart local v0    # "newValue":Ljava/lang/Object;
    .restart local v1    # "oldValue":Ljava/lang/Object;
    :cond_1
    move v2, v3

    .line 160
    goto :goto_0

    .line 163
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_1
    return v3

    :cond_3
    move v3, v2

    goto :goto_1
.end method

.method public isDelete()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 219
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ValuesDelta;->beforeExists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isFromTemplate()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mFromTemplate:Z

    return v0
.end method

.method public isInsert()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 261
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ValuesDelta;->beforeExists()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isNoop()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 254
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ValuesDelta;->beforeExists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isPrimary()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 187
    const-string/jumbo v2, "is_primary"

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 188
    .local v0, "isPrimary":Ljava/lang/Long;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSuperPrimary()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 200
    const-string/jumbo v2, "is_super_primary"

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 201
    .local v0, "isSuperPrimary":Ljava/lang/Long;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isTransient()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 226
    iget-object v1, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isUpdate()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 233
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ValuesDelta;->beforeExists()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-nez v4, :cond_1

    .line 234
    :cond_0
    return v5

    .line 233
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v4}, Landroid/content/ContentValues;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 236
    iget-object v4, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v4}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 237
    .local v0, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 238
    .local v2, "newValue":Ljava/lang/Object;
    iget-object v4, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 239
    .local v3, "oldValue":Ljava/lang/Object;
    if-nez v3, :cond_3

    .line 240
    if-eqz v2, :cond_2

    .line 241
    return v6

    .line 243
    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 244
    return v6

    .line 247
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "newValue":Ljava/lang/Object;
    .end local v3    # "oldValue":Ljava/lang/Object;
    :cond_4
    return v5
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 313
    .local v2, "keys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v3, :cond_0

    .line 314
    iget-object v3, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 315
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 319
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v3, :cond_1

    .line 320
    iget-object v3, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 321
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 325
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_1
    return-object v2
.end method

.method public markDeleted()V
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 264
    return-void
.end method

.method public phoneHasType()Z
    .locals 1

    .prologue
    .line 613
    const-string/jumbo v0, "data2"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/android/contacts/common/model/ValuesDelta;->ensureUpdate()V

    .line 289
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 287
    return-void
.end method

.method public put(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/android/contacts/common/model/ValuesDelta;->ensureUpdate()V

    .line 294
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 292
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/android/contacts/common/model/ValuesDelta;->ensureUpdate()V

    .line 279
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public put(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/android/contacts/common/model/ValuesDelta;->ensureUpdate()V

    .line 284
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 282
    return-void
.end method

.method public putNull(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/android/contacts/common/model/ValuesDelta;->ensureUpdate()V

    .line 299
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ValuesDelta;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 468
    .local v0, "loader":Ljava/lang/ClassLoader;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    iput-object v1, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    .line 469
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    iput-object v1, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 470
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/model/ValuesDelta;->mIdColumn:Ljava/lang/String;

    .line 466
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 546
    if-nez p1, :cond_0

    .line 547
    const-string/jumbo v0, "data1"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->putNull(Ljava/lang/String;)V

    .line 545
    :goto_0
    return-void

    .line 549
    :cond_0
    const-string/jumbo v0, "data1"

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFirstAndLastName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "firstName"    # Ljava/lang/String;
    .param p2, "lastName"    # Ljava/lang/String;

    .prologue
    .line 554
    if-nez p1, :cond_0

    .line 555
    const-string/jumbo v0, "data2"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->putNull(Ljava/lang/String;)V

    .line 560
    :goto_0
    if-nez p2, :cond_1

    .line 561
    const-string/jumbo v0, "data3"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->putNull(Ljava/lang/String;)V

    .line 553
    :goto_1
    return-void

    .line 557
    :cond_0
    const-string/jumbo v0, "data2"

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 563
    :cond_1
    const-string/jumbo v0, "data3"

    invoke-virtual {p0, v0, p2}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setFromTemplate(Z)V
    .locals 0
    .param p1, "isFromTemplate"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/android/contacts/common/model/ValuesDelta;->mFromTemplate:Z

    .line 191
    return-void
.end method

.method public setGroupRowId(J)V
    .locals 1
    .param p1, "groupId"    # J

    .prologue
    .line 486
    const-string/jumbo v0, "data1"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;J)V

    .line 485
    return-void
.end method

.method public setIdColumn(Ljava/lang/String;)V
    .locals 0
    .param p1, "idColumn"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/contacts/common/model/ValuesDelta;->mIdColumn:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setPhoneticFamilyName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 518
    const-string/jumbo v0, "data9"

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    return-void
.end method

.method public setPhoneticGivenName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 526
    const-string/jumbo v0, "data7"

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    return-void
.end method

.method public setPhoneticMiddleName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 522
    const-string/jumbo v0, "data8"

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    return-void
.end method

.method public setPhoto([B)V
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 494
    const-string/jumbo v0, "data15"

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;[B)V

    .line 493
    return-void
.end method

.method public setPrefixMiddleAndSuffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "middleName"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;

    .prologue
    .line 568
    if-nez p1, :cond_0

    .line 569
    const-string/jumbo v0, "data4"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->putNull(Ljava/lang/String;)V

    .line 574
    :goto_0
    if-nez p2, :cond_1

    .line 575
    const-string/jumbo v0, "data5"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->putNull(Ljava/lang/String;)V

    .line 580
    :goto_1
    if-nez p3, :cond_2

    .line 581
    const-string/jumbo v0, "data6"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->putNull(Ljava/lang/String;)V

    .line 567
    :goto_2
    return-void

    .line 571
    :cond_0
    const-string/jumbo v0, "data4"

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 577
    :cond_1
    const-string/jumbo v0, "data5"

    invoke-virtual {p0, v0, p2}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 583
    :cond_2
    const-string/jumbo v0, "data6"

    invoke-virtual {p0, v0, p3}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public setSuperPrimary(Z)V
    .locals 4
    .param p1, "val"    # Z

    .prologue
    .line 502
    if-eqz p1, :cond_0

    .line 503
    const-string/jumbo v0, "is_super_primary"

    const-wide/16 v2, 0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;J)V

    .line 501
    :goto_0
    return-void

    .line 505
    :cond_0
    const-string/jumbo v0, "is_super_primary"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public subsetEquals(Lcom/android/contacts/common/model/ValuesDelta;)Z
    .locals 6
    .param p1, "other"    # Lcom/android/contacts/common/model/ValuesDelta;

    .prologue
    const/4 v5, 0x0

    .line 413
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ValuesDelta;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 414
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 415
    .local v2, "ourValue":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 416
    .local v3, "theirValue":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 418
    if-eqz v3, :cond_0

    return v5

    .line 421
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    return v5

    .line 425
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "ourValue":Ljava/lang/String;
    .end local v3    # "theirValue":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    return v4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->toString(Ljava/lang/StringBuilder;)V

    .line 385
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 393
    const-string/jumbo v2, "{ "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    const-string/jumbo v2, "IdColumn="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    iget-object v2, p0, Lcom/android/contacts/common/model/ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    const-string/jumbo v2, ", FromTemplate="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    iget-boolean v2, p0, Lcom/android/contacts/common/model/ValuesDelta;->mFromTemplate:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 398
    const-string/jumbo v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ValuesDelta;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 400
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    const-string/jumbo v2, "="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    const-string/jumbo v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 405
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "}"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 462
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 463
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 460
    return-void
.end method
