.class public Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$TinySmartSearchCursor;
.super Ljava/lang/Object;
.source "ContactSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TinySmartSearchCursor"
.end annotation


# instance fields
.field public mContactId:[J

.field public mCount:I

.field public mKey:[Ljava/lang/String;

.field public mType:[I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    const/4 v1, 0x0

    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$TinySmartSearchCursor;->mCount:I

    .line 503
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$TinySmartSearchCursor;->mCount:I

    if-gtz v0, :cond_0

    .line 504
    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$TinySmartSearchCursor;->mCount:I

    .line 505
    return-void

    .line 507
    :cond_0
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$TinySmartSearchCursor;->mKey:[Ljava/lang/String;

    .line 508
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$TinySmartSearchCursor;->mContactId:[J

    .line 509
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$TinySmartSearchCursor;->mType:[I

    .line 501
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 513
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$TinySmartSearchCursor;->mCount:I

    return v0
.end method
