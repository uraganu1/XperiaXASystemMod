.class public final Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final versionCode:I

.field private final zzXL:Ljava/lang/String;

.field private zzXM:Lcom/google/android/gms/auth/api/signin/EmailSignInOptions;

.field private zzXN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

.field private zzXO:Ljava/lang/String;

.field private zzXd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzp;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/api/signin/EmailSignInOptions;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Ljava/lang/String;)V
    .locals 1
    .param p1, "versionCode"    # I
    .param p2, "consumerPkgName"    # Ljava/lang/String;
    .param p3, "serverClientId"    # Ljava/lang/String;
    .param p4, "emailConfig"    # Lcom/google/android/gms/auth/api/signin/EmailSignInOptions;
    .param p5, "googleConfig"    # Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    .param p6, "apiKey"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->versionCode:I

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzcM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzXL:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzXd:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzXM:Lcom/google/android/gms/auth/api/signin/EmailSignInOptions;

    iput-object p5, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzXN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    iput-object p6, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzXO:Ljava/lang/String;

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
    check-cast p1, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzXL:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zznk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    return v0

    .end local p1    # "obj":Ljava/lang/Object;
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzXd:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzXd:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzmR()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzXO:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzXO:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zznn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzXM:Lcom/google/android/gms/auth/api/signin/EmailSignInOptions;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzXM:Lcom/google/android/gms/auth/api/signin/EmailSignInOptions;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zznl()Lcom/google/android/gms/auth/api/signin/EmailSignInOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/api/signin/EmailSignInOptions;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzXN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzXN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zznm()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzmR()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zznn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_9
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zznl()Lcom/google/android/gms/auth/api/signin/EmailSignInOptions;

    move-result-object v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_a
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zznm()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_6

    goto :goto_0

    :catch_0
    move-exception v1

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/zze;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/signin/internal/zze;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzXL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzp(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/internal/zze;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzXd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzp(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/internal/zze;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzXO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzp(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/internal/zze;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzXM:Lcom/google/android/gms/auth/api/signin/EmailSignInOptions;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzp(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/internal/zze;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzXN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzp(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/internal/zze;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/zze;->zzne()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/api/signin/internal/zzp;->zza(Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzmR()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzXd:Ljava/lang/String;

    return-object v0
.end method

.method public zznk()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzXL:Ljava/lang/String;

    return-object v0
.end method

.method public zznl()Lcom/google/android/gms/auth/api/signin/EmailSignInOptions;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzXM:Lcom/google/android/gms/auth/api/signin/EmailSignInOptions;

    return-object v0
.end method

.method public zznm()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzXN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    return-object v0
.end method

.method public zznn()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzXO:Ljava/lang/String;

    return-object v0
.end method
