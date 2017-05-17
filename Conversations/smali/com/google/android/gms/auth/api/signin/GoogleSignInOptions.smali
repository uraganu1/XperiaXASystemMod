.class public Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

.field private static zzWV:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzWW:Lcom/google/android/gms/common/api/Scope;

.field public static final zzWX:Lcom/google/android/gms/common/api/Scope;

.field public static final zzWY:Lcom/google/android/gms/common/api/Scope;


# instance fields
.field final versionCode:I

.field private zzTI:Landroid/accounts/Account;

.field private final zzWZ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private zzXa:Z

.field private final zzXb:Z

.field private final zzXc:Z

.field private zzXd:Ljava/lang/String;

.field private zzXe:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string/jumbo v1, "profile"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzWW:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string/jumbo v1, "email"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzWX:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string/jumbo v1, "openid"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzWY:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestId()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestProfile()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    new-instance v0, Lcom/google/android/gms/auth/api/signin/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/signin/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$1;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzWV:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(ILjava/util/ArrayList;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p3, "account"    # Landroid/accounts/Account;
    .param p4, "idTokenRequested"    # Z
    .param p5, "serverAuthCodeRequested"    # Z
    .param p6, "forceCodeForRefreshToken"    # Z
    .param p7, "serverClientId"    # Ljava/lang/String;
    .param p8, "hostedDomain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;",
            "Landroid/accounts/Account;",
            "ZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "scopes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/common/api/Scope;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzWZ:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzTI:Landroid/accounts/Account;

    iput-boolean p4, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzXa:Z

    iput-boolean p5, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzXb:Z

    iput-boolean p6, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzXc:Z

    iput-object p7, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzXd:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzXe:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/util/Set;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "idTokenRequested"    # Z
    .param p4, "serverAuthCodeRequested"    # Z
    .param p5, "forceCodeForRefreshToken"    # Z
    .param p6, "serverClientId"    # Ljava/lang/String;
    .param p7, "hostedDomain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;",
            "Landroid/accounts/Account;",
            "ZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "scopes":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/android/gms/common/api/Scope;>;"
    const/4 v1, 0x2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;-><init>(ILjava/util/ArrayList;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Set;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Set;
    .param p2, "x1"    # Landroid/accounts/Account;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Z
    .param p5, "x4"    # Z
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Ljava/lang/String;
    .param p8, "x7"    # Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$1;

    .prologue
    invoke-direct/range {p0 .. p7}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;-><init>(Ljava/util/Set;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzWZ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzmN()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    :cond_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    return v0

    .end local p1    # "obj":Ljava/lang/Object;
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzWZ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzmN()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzTI:Landroid/accounts/Account;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzTI:Landroid/accounts/Account;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_3
    :goto_0
    return v0

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzXd:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzXd:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzmR()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_6
    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzXc:Z

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzmQ()Z

    move-result v2

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzXa:Z

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzmO()Z

    move-result v2

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzXb:Z

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzmP()Z

    move-result v2

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzmR()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :catch_0
    move-exception v1

    return v0
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzTI:Landroid/accounts/Account;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzWZ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/zze;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/signin/internal/zze;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzp(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/internal/zze;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzTI:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzp(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/internal/zze;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzXd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzp(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/internal/zze;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzXc:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzP(Z)Lcom/google/android/gms/auth/api/signin/internal/zze;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzXa:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzP(Z)Lcom/google/android/gms/auth/api/signin/internal/zze;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzXb:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzP(Z)Lcom/google/android/gms/auth/api/signin/internal/zze;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzne()I

    move-result v0

    return v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Scope;->zzpb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/api/signin/zzc;->zza(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzmN()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzWZ:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public zzmO()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzXa:Z

    return v0
.end method

.method public zzmP()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzXb:Z

    return v0
.end method

.method public zzmQ()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzXc:Z

    return v0
.end method

.method public zzmR()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzXd:Ljava/lang/String;

    return-object v0
.end method

.method public zzmS()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzXe:Ljava/lang/String;

    return-object v0
.end method
