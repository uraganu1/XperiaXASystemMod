.class final Lcom/android/contacts/common/model/AccountTypeManagerImpl$2;
.super Ljava/lang/Object;
.source "AccountTypeManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/AccountTypeManagerImpl;
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
        "Landroid/accounts/Account;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/accounts/Account;Landroid/accounts/Account;)I
    .locals 10
    .param p1, "a"    # Landroid/accounts/Account;
    .param p2, "b"    # Landroid/accounts/Account;

    .prologue
    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v9, 0x0

    .line 273
    const/4 v0, 0x0

    .line 274
    .local v0, "aDataSet":Ljava/lang/String;
    const/4 v1, 0x0

    .line 275
    .local v1, "bDataSet":Ljava/lang/String;
    instance-of v5, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    if-eqz v5, :cond_0

    move-object v5, p1

    .line 276
    check-cast v5, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v0, v5, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    .line 278
    .end local v0    # "aDataSet":Ljava/lang/String;
    :cond_0
    instance-of v5, p2, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    if-eqz v5, :cond_1

    move-object v5, p2

    .line 279
    check-cast v5, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v1, v5, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    .line 283
    .end local v1    # "bDataSet":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->-get4()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 284
    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->-wrap0(Ljava/lang/String;)I

    move-result v3

    .line 285
    .local v3, "ia":I
    iget-object v5, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->-wrap0(Ljava/lang/String;)I

    move-result v4

    .line 287
    .local v4, "ib":I
    if-eq v3, v4, :cond_3

    .line 288
    sub-int v5, v3, v4

    if-lez v5, :cond_2

    move v5, v6

    :goto_0
    return v5

    :cond_2
    move v5, v7

    goto :goto_0

    .line 292
    .end local v3    # "ia":I
    .end local v4    # "ib":I
    :cond_3
    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v8, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v5, v8}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v8, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v5, v8}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 293
    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .line 292
    if-eqz v5, :cond_4

    .line 294
    return v9

    .line 295
    :cond_4
    iget-object v5, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    if-nez v5, :cond_6

    .line 296
    :cond_5
    return v7

    .line 297
    :cond_6
    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    if-eqz v5, :cond_7

    iget-object v5, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    if-nez v5, :cond_8

    .line 298
    :cond_7
    return v6

    .line 300
    :cond_8
    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v8, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 301
    .local v2, "diff":I
    if-eqz v2, :cond_9

    .line 302
    return v2

    .line 304
    :cond_9
    iget-object v5, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v8, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 305
    if-eqz v2, :cond_a

    .line 306
    return v2

    .line 310
    :cond_a
    if-eqz v0, :cond_c

    .line 311
    if-nez v1, :cond_b

    :goto_1
    return v6

    :cond_b
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    .line 313
    :cond_c
    return v7
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .prologue
    .line 272
    check-cast p1, Landroid/accounts/Account;

    .end local p1    # "a":Ljava/lang/Object;
    check-cast p2, Landroid/accounts/Account;

    .end local p2    # "b":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$2;->compare(Landroid/accounts/Account;Landroid/accounts/Account;)I

    move-result v0

    return v0
.end method
