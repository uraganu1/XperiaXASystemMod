.class public Lcom/google/android/gms/internal/zzoc;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static final zzamr:Ljava/lang/reflect/Method;

.field private static final zzams:Ljava/lang/reflect/Method;

.field private static final zzamt:Ljava/lang/reflect/Method;

.field private static final zzamu:Ljava/lang/reflect/Method;

.field private static final zzamv:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzoc;->zzrZ()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzoc;->zzamr:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/zzoc;->zzsa()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzoc;->zzams:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/zzoc;->zzsb()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzoc;->zzamt:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/zzoc;->zzsc()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzoc;->zzamu:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/zzoc;->zzsd()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzoc;->zzamv:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static zza(Landroid/os/WorkSource;)I
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzoc;->zzamt:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    :goto_0
    return v3

    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzoc;->zzamt:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WorkSourceUtil"

    const-string/jumbo v2, "Unable to assign blame through WorkSource"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static zza(Landroid/os/WorkSource;I)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzoc;->zzamv:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    :goto_0
    return-object v4

    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzoc;->zzamv:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WorkSourceUtil"

    const-string/jumbo v2, "Unable to assign blame through WorkSource"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static zza(Landroid/os/WorkSource;ILjava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/zzoc;->zzams:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzoc;->zzamr:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    :goto_1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzoc;->zzams:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :cond_1
    const-string/jumbo p2, ""

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WorkSourceUtil"

    const-string/jumbo v2, "Unable to assign blame through WorkSource"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_2
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/zzoc;->zzamr:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "WorkSourceUtil"

    const-string/jumbo v2, "Unable to assign blame through WorkSource"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static zzaz(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v2, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    return v0

    :cond_0
    return v0

    :cond_1
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static zzb(Landroid/os/WorkSource;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/WorkSource;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzoc;->zza(Landroid/os/WorkSource;)I

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-lt v0, v1, :cond_2

    return-object v2

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    :cond_2
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzoc;->zza(Landroid/os/WorkSource;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzob;->zzcP(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public static zzh(ILjava/lang/String;)Landroid/os/WorkSource;
    .locals 1

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/zzoc;->zza(Landroid/os/WorkSource;ILjava/lang/String;)V

    return-object v0
.end method

.method public static zzk(Landroid/content/Context;Ljava/lang/String;)Landroid/os/WorkSource;
    .locals 4

    const/4 v3, 0x0

    if-nez p0, :cond_1

    :cond_0
    return-object v3

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzoc;->zzh(ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "WorkSourceUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Could not find package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_2
    const-string/jumbo v0, "WorkSourceUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Could not get applicationInfo from package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method private static zzrZ()Ljava/lang/reflect/Method;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/os/WorkSource;

    const-string/jumbo v2, "add"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static zzsa()Ljava/lang/reflect/Method;
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/zznx;->zzrT()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-class v1, Landroid/os/WorkSource;

    const-string/jumbo v2, "add"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static zzsb()Ljava/lang/reflect/Method;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/os/WorkSource;

    const-string/jumbo v2, "size"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static zzsc()Ljava/lang/reflect/Method;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/os/WorkSource;

    const-string/jumbo v2, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static zzsd()Ljava/lang/reflect/Method;
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/zznx;->zzrT()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-class v1, Landroid/os/WorkSource;

    const-string/jumbo v2, "getName"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
