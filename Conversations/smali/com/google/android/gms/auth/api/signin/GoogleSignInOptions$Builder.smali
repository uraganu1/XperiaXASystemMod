.class public final Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zzTI:Landroid/accounts/Account;

.field private zzXa:Z

.field private zzXb:Z

.field private zzXc:Z

.field private zzXd:Ljava/lang/String;

.field private zzXe:Ljava/lang/String;

.field private zzXf:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zzXf:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    .locals 9

    .prologue
    const/4 v8, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zzXa:Z

    if-nez v0, :cond_0

    :goto_0
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zzXf:Ljava/util/Set;

    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zzTI:Landroid/accounts/Account;

    iget-boolean v3, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zzXa:Z

    iget-boolean v4, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zzXb:Z

    iget-boolean v5, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zzXc:Z

    iget-object v6, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zzXd:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zzXe:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;-><init>(Ljava/util/Set;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$1;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zzTI:Landroid/accounts/Account;

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestId()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zzXf:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method public requestId()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zzXf:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzWY:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public requestProfile()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zzXf:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzWW:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
