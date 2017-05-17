.class public Lcom/google/android/gms/common/zzf;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static final zzafS:Lcom/google/android/gms/common/zzf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/common/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/zzf;->zzafS:Lcom/google/android/gms/common/zzf;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzoO()Lcom/google/android/gms/common/zzf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/zzf;->zzafS:Lcom/google/android/gms/common/zzf;

    return-object v0
.end method


# virtual methods
.method varargs zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzd$zza;)Lcom/google/android/gms/common/zzd$zza;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    new-instance v2, Lcom/google/android/gms/common/zzd$zzb;

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/common/zzd$zzb;-><init>([B)V

    move v0, v1

    :goto_0
    array-length v3, p2

    if-lt v0, v3, :cond_1

    const-string/jumbo v0, "GoogleSignatureVerifier"

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_1
    return-object v5

    :cond_0
    const-string/jumbo v0, "GoogleSignatureVerifier"

    const-string/jumbo v1, "Package has more than one signature."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_1
    aget-object v3, p2, v0

    invoke-virtual {v3, v2}, Lcom/google/android/gms/common/zzd$zza;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    aget-object v0, p2, v0

    return-object v0

    :cond_3
    const-string/jumbo v0, "GoogleSignatureVerifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Signature not valid.  Found: \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/common/zzd$zza;->getBytes()[B

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public zza(Landroid/content/pm/PackageInfo;Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    :cond_0
    :goto_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_0

    if-nez p2, :cond_3

    new-array v2, v0, [Lcom/google/android/gms/common/zzd$zza;

    sget-object v3, Lcom/google/android/gms/common/zzd$zzd;->zzafK:[Lcom/google/android/gms/common/zzd$zza;

    aget-object v3, v3, v1

    aput-object v3, v2, v1

    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/common/zzf;->zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzd$zza;)Lcom/google/android/gms/common/zzd$zza;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_1

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/google/android/gms/common/zzd$zzd;->zzafK:[Lcom/google/android/gms/common/zzd$zza;

    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/common/zzf;->zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzd$zza;)Lcom/google/android/gms/common/zzd$zza;

    move-result-object v2

    goto :goto_1
.end method

.method public zza(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/common/zze;->zzc(Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p2, v1}, Lcom/google/android/gms/common/zzf;->zza(Landroid/content/pm/PackageInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    :goto_0
    return v0

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p0, p2, v2}, Lcom/google/android/gms/common/zzf;->zza(Landroid/content/pm/PackageInfo;Z)Z

    move-result v0

    return v0

    :cond_3
    invoke-virtual {p0, p2, v2}, Lcom/google/android/gms/common/zzf;->zza(Landroid/content/pm/PackageInfo;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "GoogleSignatureVerifier"

    const-string/jumbo v2, "Test-keys aren\'t accepted on this build."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
