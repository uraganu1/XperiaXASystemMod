.class public Lcom/android/contacts/common/model/ContactLoader$ExcludedAccountsBuilder;
.super Ljava/lang/Object;
.source "ContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/ContactLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExcludedAccountsBuilder"
.end annotation


# instance fields
.field private mExcludedAccounts:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 954
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 955
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/ContactLoader$ExcludedAccountsBuilder;->mExcludedAccounts:Ljava/util/Collection;

    .line 954
    return-void
.end method


# virtual methods
.method public addExcludedAccount(Ljava/lang/String;)Lcom/android/contacts/common/model/ContactLoader$ExcludedAccountsBuilder;
    .locals 1
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 958
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader$ExcludedAccountsBuilder;->mExcludedAccounts:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 961
    :cond_0
    return-object p0
.end method

.method public build()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 965
    iget-object v0, p0, Lcom/android/contacts/common/model/ContactLoader$ExcludedAccountsBuilder;->mExcludedAccounts:Ljava/util/Collection;

    return-object v0
.end method
