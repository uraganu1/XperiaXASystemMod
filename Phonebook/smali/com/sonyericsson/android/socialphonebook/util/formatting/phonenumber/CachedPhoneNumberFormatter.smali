.class public Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/CachedPhoneNumberFormatter;
.super Ljava/lang/Object;
.source "CachedPhoneNumberFormatter.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/Formatter;


# instance fields
.field private final mCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFormatter:Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/Formatter;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/Formatter;I)V
    .locals 1
    .param p1, "formatter"    # Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/Formatter;
    .param p2, "cacheEntrySize"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/CachedPhoneNumberFormatter;->mFormatter:Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/Formatter;

    .line 19
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, p2}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/CachedPhoneNumberFormatter;->mCache:Landroid/util/LruCache;

    .line 17
    return-void
.end method


# virtual methods
.method public formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    const-string/jumbo v2, ""

    return-object v2

    .line 28
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/CachedPhoneNumberFormatter;->mCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 30
    .local v0, "cached":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 31
    return-object v0

    .line 33
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/CachedPhoneNumberFormatter;->mFormatter:Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/Formatter;

    invoke-interface {v2, p1}, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/Formatter;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "formattedNumber":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/CachedPhoneNumberFormatter;->mCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-object v1
.end method
