.class final Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;
.super Ljava/lang/Object;
.source "IndexBuilder.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CollationKeyIndex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;",
        ">;",
        "Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapper;"
    }
.end annotation


# instance fields
.field private final mCollationKey:Ljava/text/CollationKey;

.field private final mKeyByteArray:[B

.field private final mKeyByteArrays:[[B

.field private final mSeparatorIndex:I

.field private mToCollationKey:Ljava/text/CollationKey;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;)Ljava/text/CollationKey;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->mCollationKey:Ljava/text/CollationKey;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;)[B
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->mKeyByteArray:[B

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;)[[B
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->mKeyByteArrays:[[B

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->mSeparatorIndex:I

    return v0
.end method

.method static synthetic -get4(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;)Ljava/text/CollationKey;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->mToCollationKey:Ljava/text/CollationKey;

    return-object v0
.end method

.method static synthetic -wrap0([Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;)V
    .locals 0
    .param p0, "aArray"    # [Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;

    .prologue
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->sort([Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;)V

    return-void
.end method

.method private constructor <init>(ILjava/text/CollationKey;)V
    .locals 3
    .param p1, "aSectionIndex"    # I
    .param p2, "aKey"    # Ljava/text/CollationKey;

    .prologue
    const/4 v1, 0x0

    .line 931
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 879
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->mToCollationKey:Ljava/text/CollationKey;

    .line 933
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->mSeparatorIndex:I

    .line 934
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->mCollationKey:Ljava/text/CollationKey;

    .line 935
    invoke-virtual {p2}, Ljava/text/CollationKey;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->mKeyByteArray:[B

    .line 936
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->mKeyByteArrays:[[B

    .line 938
    sget-boolean v0, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 939
    const-string/jumbo v0, "IndexBuilder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CollationKeyIndex: mSeparatorIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 941
    const-string/jumbo v2, " "

    .line 939
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 942
    invoke-virtual {p2}, Ljava/text/CollationKey;->getSourceString()Ljava/lang/String;

    move-result-object v2

    .line 939
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(ILjava/text/CollationKey;Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;)V
    .locals 0
    .param p1, "aSectionIndex"    # I
    .param p2, "aKey"    # Ljava/text/CollationKey;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;-><init>(ILjava/text/CollationKey;)V

    return-void
.end method

.method private constructor <init>(ILjava/text/CollationKey;Ljava/text/CollationKey;)V
    .locals 3
    .param p1, "aSectionIndex"    # I
    .param p2, "aKey"    # Ljava/text/CollationKey;
    .param p3, "aToKey"    # Ljava/text/CollationKey;

    .prologue
    const/4 v0, 0x0

    .line 987
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 879
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->mToCollationKey:Ljava/text/CollationKey;

    .line 990
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->mSeparatorIndex:I

    .line 991
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->mCollationKey:Ljava/text/CollationKey;

    .line 992
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->mToCollationKey:Ljava/text/CollationKey;

    .line 993
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->mKeyByteArray:[B

    .line 994
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->mKeyByteArrays:[[B

    .line 996
    sget-boolean v0, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 997
    const-string/jumbo v0, "IndexBuilder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CollationKeyIndex: mSeparatorIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 999
    const-string/jumbo v2, " "

    .line 997
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1000
    invoke-virtual {p2}, Ljava/text/CollationKey;->getSourceString()Ljava/lang/String;

    move-result-object v2

    .line 997
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1001
    const-string/jumbo v2, " - "

    .line 997
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1002
    invoke-virtual {p3}, Ljava/text/CollationKey;->getSourceString()Ljava/lang/String;

    move-result-object v2

    .line 997
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(ILjava/text/CollationKey;Ljava/text/CollationKey;Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;)V
    .locals 0
    .param p1, "aSectionIndex"    # I
    .param p2, "aKey"    # Ljava/text/CollationKey;
    .param p3, "aToKey"    # Ljava/text/CollationKey;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;-><init>(ILjava/text/CollationKey;Ljava/text/CollationKey;)V

    return-void
.end method

.method private constructor <init>(I[Ljava/text/CollationKey;)V
    .locals 6
    .param p1, "aSectionIndex"    # I
    .param p2, "aKeys"    # [Ljava/text/CollationKey;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 952
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 879
    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->mToCollationKey:Ljava/text/CollationKey;

    .line 954
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->mSeparatorIndex:I

    .line 956
    aget-object v3, p2, v3

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->mCollationKey:Ljava/text/CollationKey;

    .line 957
    array-length v3, p2

    new-array v0, v3, [[B

    .line 958
    .local v0, "array":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_0

    .line 959
    aget-object v3, p2, v1

    invoke-virtual {v3}, Ljava/text/CollationKey;->toByteArray()[B

    move-result-object v3

    aput-object v3, v0, v1

    .line 958
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 961
    :cond_0
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->mKeyByteArrays:[[B

    .line 962
    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->mKeyByteArray:[B

    .line 964
    sget-boolean v3, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->VERBOSE:Z

    if-eqz v3, :cond_3

    .line 965
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 966
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    :goto_1
    array-length v3, p2

    if-ge v1, v3, :cond_2

    .line 967
    if-lez v1, :cond_1

    .line 968
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 970
    :cond_1
    aget-object v3, p2, v1

    invoke-virtual {v3}, Ljava/text/CollationKey;->getSourceString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 972
    :cond_2
    const-string/jumbo v3, "IndexBuilder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CollationKeyIndex: mSeparatorIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 974
    const-string/jumbo v5, " "

    .line 972
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 975
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 972
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    return-void
.end method

.method synthetic constructor <init>(I[Ljava/text/CollationKey;Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;)V
    .locals 0
    .param p1, "aSectionIndex"    # I
    .param p2, "aKeys"    # [Ljava/text/CollationKey;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;-><init>(I[Ljava/text/CollationKey;)V

    return-void
.end method

.method private static sort([Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;)V
    .locals 10
    .param p0, "aArray"    # [Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;

    .prologue
    const/4 v9, 0x0

    .line 889
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 891
    array-length v7, p0

    add-int/lit8 v3, v7, -0x2

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_8

    .line 892
    aget-object v7, p0, v3

    iget-object v7, v7, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->mToCollationKey:Ljava/text/CollationKey;

    if-nez v7, :cond_1

    .line 891
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 895
    :cond_1
    aget-object v7, p0, v3

    iget-object v6, v7, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->mToCollationKey:Ljava/text/CollationKey;

    .line 896
    .local v6, "toKey":Ljava/text/CollationKey;
    add-int/lit8 v7, v3, 0x1

    aget-object v7, p0, v7

    iget-object v7, v7, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->mCollationKey:Ljava/text/CollationKey;

    invoke-virtual {v6, v7}, Ljava/text/CollationKey;->compareTo(Ljava/text/CollationKey;)I

    move-result v7

    if-gez v7, :cond_2

    .line 897
    aget-object v7, p0, v3

    iget-object v7, v7, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->mCollationKey:Ljava/text/CollationKey;

    invoke-virtual {v6, v7}, Ljava/text/CollationKey;->compareTo(Ljava/text/CollationKey;)I

    move-result v7

    if-gtz v7, :cond_3

    .line 898
    :cond_2
    aget-object v7, p0, v3

    iput-object v9, v7, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->mToCollationKey:Ljava/text/CollationKey;

    goto :goto_1

    .line 901
    :cond_3
    aget-object v7, p0, v3

    iget-object v7, v7, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->mCollationKey:Ljava/text/CollationKey;

    invoke-virtual {v7}, Ljava/text/CollationKey;->toByteArray()[B

    move-result-object v1

    .line 902
    .local v1, "b1":[B
    invoke-virtual {v6}, Ljava/text/CollationKey;->toByteArray()[B

    move-result-object v2

    .line 903
    .local v2, "b2":[B
    if-eqz v1, :cond_0

    array-length v7, v1

    if-lez v7, :cond_0

    if-eqz v2, :cond_0

    .line 904
    array-length v5, v1

    .line 905
    .local v5, "l":I
    add-int/lit8 v7, v5, -0x1

    aget-byte v7, v1, v7

    if-nez v7, :cond_4

    .line 906
    add-int/lit8 v5, v5, -0x1

    .line 908
    :cond_4
    const/4 v0, 0x1

    .line 909
    .local v0, "b":Z
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v5, :cond_5

    .line 910
    array-length v7, v2

    if-ne v7, v4, :cond_6

    .line 918
    :cond_5
    :goto_3
    if-eqz v0, :cond_0

    .line 919
    aget-object v7, p0, v3

    iput-object v9, v7, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->mToCollationKey:Ljava/text/CollationKey;

    goto :goto_1

    .line 913
    :cond_6
    aget-byte v7, v1, v4

    aget-byte v8, v2, v4

    if-eq v7, v8, :cond_7

    .line 914
    const/4 v0, 0x0

    .line 915
    goto :goto_3

    .line 909
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 888
    .end local v0    # "b":Z
    .end local v1    # "b1":[B
    .end local v2    # "b2":[B
    .end local v4    # "j":I
    .end local v5    # "l":I
    .end local v6    # "toKey":Ljava/text/CollationKey;
    :cond_8
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;)I
    .locals 2
    .param p1, "anObject"    # Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->mCollationKey:Ljava/text/CollationKey;

    iget-object v1, p1, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->mCollationKey:Ljava/text/CollationKey;

    invoke-virtual {v0, v1}, Ljava/text/CollationKey;->compareTo(Ljava/text/CollationKey;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "anObject"    # Ljava/lang/Object;

    .prologue
    .line 1015
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;

    .end local p1    # "anObject":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->compareTo(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "anObject"    # Ljava/lang/Object;

    .prologue
    .line 1027
    if-ne p0, p1, :cond_0

    .line 1028
    const/4 v1, 0x1

    return v1

    .line 1030
    :cond_0
    instance-of v1, p1, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 1031
    check-cast v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;

    .line 1032
    .local v0, "o":Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->mCollationKey:Ljava/text/CollationKey;

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->mCollationKey:Ljava/text/CollationKey;

    invoke-virtual {v1, v2}, Ljava/text/CollationKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1034
    .end local v0    # "o":Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public getCollationKey()Ljava/text/CollationKey;
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->mCollationKey:Ljava/text/CollationKey;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyIndex;->mCollationKey:Ljava/text/CollationKey;

    invoke-virtual {v0}, Ljava/text/CollationKey;->hashCode()I

    move-result v0

    return v0
.end method
