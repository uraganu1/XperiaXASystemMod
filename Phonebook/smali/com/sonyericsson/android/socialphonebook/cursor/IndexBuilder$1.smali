.class final Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$1;
.super Ljava/lang/Object;
.source "IndexBuilder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapper;Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapper;)I
    .locals 2
    .param p1, "aObject1"    # Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapper;
    .param p2, "aObject2"    # Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapper;

    .prologue
    .line 63
    invoke-interface {p1}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapper;->getCollationKey()Ljava/text/CollationKey;

    move-result-object v0

    .line 64
    invoke-interface {p2}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapper;->getCollationKey()Ljava/text/CollationKey;

    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Ljava/text/CollationKey;->compareTo(Ljava/text/CollationKey;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "aObject1"    # Ljava/lang/Object;
    .param p2, "aObject2"    # Ljava/lang/Object;

    .prologue
    .line 61
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapper;

    .end local p1    # "aObject1":Ljava/lang/Object;
    check-cast p2, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapper;

    .end local p2    # "aObject2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$1;->compare(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapper;Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapper;)I

    move-result v0

    return v0
.end method
