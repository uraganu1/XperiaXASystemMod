.class public Lcom/google/android/gms/internal/zzni;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static final zzaok:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "\\$\\{(.*?)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzni;->zzaok:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static zzcV(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/google/android/gms/common/internal/zze;->zzakF:Lcom/google/android/gms/common/internal/zze;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/common/internal/zze;->zzb(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method