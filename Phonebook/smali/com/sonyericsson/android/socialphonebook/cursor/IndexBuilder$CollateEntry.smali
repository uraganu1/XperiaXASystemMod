.class final Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;
.super Ljava/lang/Object;
.source "IndexBuilder.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CollateEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private final mEntry:Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private final mKey:Ljava/text/CollationKey;

.field private final mSeparatorIndex:I

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;)Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;->mEntry:Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;->mSeparatorIndex:I

    return v0
.end method

.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;ILjava/text/CollationKey;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;
    .param p3, "aSeparatorIndex"    # I
    .param p4, "aKey"    # Ljava/text/CollationKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I",
            "Ljava/text/CollationKey;",
            ")V"
        }
    .end annotation

    .prologue
    .line 565
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;, "Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry<TE;>;"
    .local p2, "aEntry":Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;, "TE;"
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;->this$0:Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;->mEntry:Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;

    .line 568
    iput p3, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;->mSeparatorIndex:I

    .line 569
    iput-object p4, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;->mKey:Ljava/text/CollationKey;

    .line 566
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;ILjava/text/CollationKey;Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;
    .param p2, "aEntry"    # Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;
    .param p3, "aSeparatorIndex"    # I
    .param p4, "aKey"    # Ljava/text/CollationKey;

    .prologue
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;, "Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry<TE;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;-><init>(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;ILjava/text/CollationKey;)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry",
            "<TE;>;)I"
        }
    .end annotation

    .prologue
    .line 586
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;, "Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry<TE;>;"
    .local p1, "aAnother":Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;, "Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry<TE;>;"
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;->mSeparatorIndex:I

    iget v2, p1, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;->mSeparatorIndex:I

    sub-int v0, v1, v2

    .line 587
    .local v0, "result":I
    if-eqz v0, :cond_0

    .line 588
    return v0

    .line 590
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;->mKey:Ljava/text/CollationKey;

    if-nez v1, :cond_2

    .line 592
    iget-object v1, p1, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;->mKey:Ljava/text/CollationKey;

    if-nez v1, :cond_1

    .line 593
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;->mEntry:Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;->getId()J

    move-result-wide v2

    iget-object v1, p1, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;->mEntry:Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;->getId()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->-wrap0(JJ)I

    move-result v1

    return v1

    .line 595
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 597
    :cond_2
    iget-object v1, p1, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;->mKey:Ljava/text/CollationKey;

    if-nez v1, :cond_3

    .line 599
    const/4 v1, -0x1

    return v1

    .line 601
    :cond_3
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;->mSeparatorIndex:I

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;->this$0:Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->-get0(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;)I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 603
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;->mKey:Ljava/text/CollationKey;

    iget-object v2, p1, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;->mKey:Ljava/text/CollationKey;

    invoke-virtual {v1, v2}, Ljava/text/CollationKey;->compareTo(Ljava/text/CollationKey;)I

    move-result v0

    .line 604
    if-eqz v0, :cond_4

    .line 605
    return v0

    .line 609
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;->mKey:Ljava/text/CollationKey;

    invoke-virtual {v1}, Ljava/text/CollationKey;->getSourceString()Ljava/lang/String;

    move-result-object v1

    .line 610
    iget-object v2, p1, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;->mKey:Ljava/text/CollationKey;

    invoke-virtual {v2}, Ljava/text/CollationKey;->getSourceString()Ljava/lang/String;

    move-result-object v2

    .line 609
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 611
    if-eqz v0, :cond_5

    .line 612
    return v0

    .line 614
    :cond_5
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;->mEntry:Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;->getId()J

    move-result-wide v2

    iget-object v1, p1, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;->mEntry:Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/cursor/CursorRow;->getId()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;->-wrap0(JJ)I

    move-result v1

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "aAnother"    # Ljava/lang/Object;

    .prologue
    .line 585
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;, "Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry<TE;>;"
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;

    .end local p1    # "aAnother":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;->compareTo(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "anObject"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;, "Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry<TE;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 625
    if-ne p0, p1, :cond_0

    .line 626
    return v1

    .line 628
    :cond_0
    instance-of v3, p1, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;

    if-eqz v3, :cond_2

    move-object v0, p1

    .line 630
    check-cast v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;

    .line 631
    .local v0, "o":Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;, "Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry<TE;>;"
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;->compareTo(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;)I

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    .line 633
    .end local v0    # "o":Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;, "Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry<TE;>;"
    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 643
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;, "Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry<TE;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;->mKey:Ljava/text/CollationKey;

    if-nez v0, :cond_0

    .line 644
    const/4 v0, 0x0

    return v0

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollateEntry;->mKey:Ljava/text/CollationKey;

    invoke-virtual {v0}, Ljava/text/CollationKey;->hashCode()I

    move-result v0

    return v0
.end method
