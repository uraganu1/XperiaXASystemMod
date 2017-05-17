.class public Lcom/google/android/gms/auth/api/signin/SignInAccount;
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
            "Lcom/google/android/gms/auth/api/signin/SignInAccount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final versionCode:I

.field private zzWP:Ljava/lang/String;

.field private zzWQ:Ljava/lang/String;

.field private zzWR:Landroid/net/Uri;

.field private zzWk:Ljava/lang/String;

.field private zzXj:Ljava/lang/String;

.field private zzXm:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

.field private zzXn:Ljava/lang/String;

.field private zzrG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/signin/zze;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/signin/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "versionCode"    # I
    .param p2, "providerId"    # Ljava/lang/String;
    .param p3, "idToken"    # Ljava/lang/String;
    .param p4, "email"    # Ljava/lang/String;
    .param p5, "displayName"    # Ljava/lang/String;
    .param p6, "photoUrl"    # Landroid/net/Uri;
    .param p7, "googleSignInAccount"    # Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .param p8, "userId"    # Ljava/lang/String;
    .param p9, "refreshToken"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->versionCode:I

    const-string/jumbo v0, "Email cannot be empty."

    invoke-static {p4, v0}, Lcom/google/android/gms/common/internal/zzx;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzWP:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzWQ:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzWR:Landroid/net/Uri;

    iput-object p2, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzXj:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzWk:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzXm:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-static {p8}, Lcom/google/android/gms/common/internal/zzx;->zzcM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzrG:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzXn:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzWQ:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzWP:Ljava/lang/String;

    return-object v0
.end method

.method public getIdToken()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzWk:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoUrl()Landroid/net/Uri;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzWR:Landroid/net/Uri;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzrG:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/api/signin/zze;->zza(Lcom/google/android/gms/auth/api/signin/SignInAccount;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzmT()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzXj:Ljava/lang/String;

    return-object v0
.end method

.method public zzmV()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzXm:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-object v0
.end method

.method public zzmW()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzXn:Ljava/lang/String;

    return-object v0
.end method
