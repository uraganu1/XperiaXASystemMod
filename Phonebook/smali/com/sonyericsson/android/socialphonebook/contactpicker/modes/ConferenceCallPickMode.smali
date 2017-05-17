.class public Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ConferenceCallPickMode;
.super Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ConversationPickMode;
.source "ConferenceCallPickMode.java"


# instance fields
.field private mFilteringColumnName:Ljava/lang/String;

.field private mFilteringPredicate:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 28
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ConversationPickMode;-><init>(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 24
    const-string/jumbo v0, "data1"

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ConferenceCallPickMode;->mFilteringColumnName:Ljava/lang/String;

    .line 29
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ConferenceContactsPickerFilter;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ConferenceContactsPickerFilter;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ConferenceCallPickMode;->mFilteringPredicate:Lcom/google/common/base/Predicate;

    .line 27
    return-void
.end method


# virtual methods
.method public getColumnNameForFilteringByPredicate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ConferenceCallPickMode;->mFilteringColumnName:Ljava/lang/String;

    return-object v0
.end method

.method protected getModeConfiguration()I
    .locals 2

    .prologue
    .line 34
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ConversationPickMode;->getModeConfiguration()I

    move-result v0

    .line 35
    const/high16 v1, 0x80000

    .line 34
    or-int/2addr v0, v1

    .line 36
    const/high16 v1, 0x40000

    .line 34
    or-int/2addr v0, v1

    .line 37
    const/high16 v1, 0x20000

    .line 34
    or-int/2addr v0, v1

    return v0
.end method

.method public getPredicateForFiltering()Lcom/google/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ConferenceCallPickMode;->mFilteringPredicate:Lcom/google/common/base/Predicate;

    return-object v0
.end method

.method public getSelection(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 43
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ConferenceCallPickMode;->getNumbersForFiltering()[Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "numbers":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v5, v2

    if-nez v5, :cond_1

    .line 46
    :cond_0
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ConversationPickMode;->getSelection(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 49
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "NOT PHONE_NUMBERS_EQUAL("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ConferenceCallPickMode;->mFilteringColumnName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", \'%s\', 0)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, "sqlPattern":Ljava/lang/String;
    array-length v5, v2

    new-array v0, v5, [Ljava/lang/String;

    .line 52
    .local v0, "equalParts":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v2

    if-ge v1, v5, :cond_2

    .line 53
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aget-object v6, v2, v1

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string/jumbo v5, " AND "

    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string/jumbo v5, ") AND ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ConversationPickMode;->getSelection(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string/jumbo v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
