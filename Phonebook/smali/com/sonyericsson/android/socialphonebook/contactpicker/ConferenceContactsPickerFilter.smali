.class public Lcom/sonyericsson/android/socialphonebook/contactpicker/ConferenceContactsPickerFilter;
.super Ljava/lang/Object;
.source "ConferenceContactsPickerFilter.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/Object;

    .prologue
    .line 24
    check-cast p1, Ljava/lang/String;

    .end local p1    # "number":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ConferenceContactsPickerFilter;->apply(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public apply(Ljava/lang/String;)Z
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 27
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 28
    return v3

    .line 32
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 33
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/util/Constants;->KDDI_DIALING_PREFIXES:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "prefix$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 34
    .local v0, "prefix":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 35
    return v3

    .line 39
    .end local v0    # "prefix":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    return v2
.end method
