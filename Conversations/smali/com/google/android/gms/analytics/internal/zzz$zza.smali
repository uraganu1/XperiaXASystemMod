.class Lcom/google/android/gms/analytics/internal/zzz$zza;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/analytics/internal/zzq$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/internal/zzz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/analytics/internal/zzq$zza",
        "<",
        "Lcom/google/android/gms/analytics/internal/zzaa;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzQj:Lcom/google/android/gms/analytics/internal/zzf;

.field private final zzSD:Lcom/google/android/gms/analytics/internal/zzaa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;)V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzz$zza;->zzQj:Lcom/google/android/gms/analytics/internal/zzf;

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzaa;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/internal/zzaa;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzz$zza;->zzSD:Lcom/google/android/gms/analytics/internal/zzaa;

    return-void
.end method


# virtual methods
.method public zzc(Ljava/lang/String;I)V
    .locals 2

    .prologue
    const-string/jumbo v0, "ga_dispatchPeriod"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzz$zza;->zzQj:Lcom/google/android/gms/analytics/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzjm()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    const-string/jumbo v1, "Int xml configuration name not recognized"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/analytics/internal/zzaf;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzz$zza;->zzSD:Lcom/google/android/gms/analytics/internal/zzaa;

    iput p2, v0, Lcom/google/android/gms/analytics/internal/zzaa;->zzSH:I

    goto :goto_0
.end method

.method public zzf(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const-string/jumbo v1, "ga_dryRun"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzz$zza;->zzQj:Lcom/google/android/gms/analytics/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzjm()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    const-string/jumbo v1, "Bool xml configuration name not recognized"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/analytics/internal/zzaf;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzz$zza;->zzSD:Lcom/google/android/gms/analytics/internal/zzaa;

    if-nez p2, :cond_1

    :goto_1
    iput v0, v1, Lcom/google/android/gms/analytics/internal/zzaa;->zzSI:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public zzj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    return-void
.end method

.method public zzk(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const-string/jumbo v0, "ga_appName"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ga_appVersion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "ga_logLevel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzz$zza;->zzQj:Lcom/google/android/gms/analytics/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zzjm()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    const-string/jumbo v1, "String xml configuration name not recognized"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/analytics/internal/zzaf;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzz$zza;->zzSD:Lcom/google/android/gms/analytics/internal/zzaa;

    iput-object p2, v0, Lcom/google/android/gms/analytics/internal/zzaa;->zzSE:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzz$zza;->zzSD:Lcom/google/android/gms/analytics/internal/zzaa;

    iput-object p2, v0, Lcom/google/android/gms/analytics/internal/zzaa;->zzSF:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzz$zza;->zzSD:Lcom/google/android/gms/analytics/internal/zzaa;

    iput-object p2, v0, Lcom/google/android/gms/analytics/internal/zzaa;->zzSG:Ljava/lang/String;

    goto :goto_0
.end method

.method public synthetic zzkq()Lcom/google/android/gms/analytics/internal/zzp;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzz$zza;->zzle()Lcom/google/android/gms/analytics/internal/zzaa;

    move-result-object v0

    return-object v0
.end method

.method public zzle()Lcom/google/android/gms/analytics/internal/zzaa;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzz$zza;->zzSD:Lcom/google/android/gms/analytics/internal/zzaa;

    return-object v0
.end method
