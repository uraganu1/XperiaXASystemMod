.class Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$SortFields;
.super Ljava/lang/Object;
.source "ContactSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SortFields"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public timesContacted:I

.field public timesUsed:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "timesContacted"    # I
    .param p2, "timesUsed"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$SortFields;->timesContacted:I

    .line 524
    iput p2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$SortFields;->timesUsed:I

    .line 526
    if-nez p3, :cond_0

    const-string/jumbo p3, ""

    .end local p3    # "name":Ljava/lang/String;
    :cond_0
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$SortFields;->name:Ljava/lang/String;

    .line 522
    return-void
.end method
