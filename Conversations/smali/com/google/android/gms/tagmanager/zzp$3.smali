.class Lcom/google/android/gms/tagmanager/zzp$3;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzp$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzp;->zzaw(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbim:Lcom/google/android/gms/tagmanager/zzp;

.field final synthetic zzbin:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzp;Z)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzp$3;->zzbim:Lcom/google/android/gms/tagmanager/zzp;

    iput-boolean p2, p0, Lcom/google/android/gms/tagmanager/zzp$3;->zzbin:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/tagmanager/Container;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/gms/tagmanager/zzp$3;->zzbin:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/Container;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/Container;->getLastRefreshTime()J

    move-result-wide v2

    const-wide/32 v4, 0x2932e00

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/google/android/gms/tagmanager/zzp$3;->zzbim:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v4}, Lcom/google/android/gms/tagmanager/zzp;->zzc(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/internal/zzmq;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzmq;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    move v2, v0

    :goto_1
    if-nez v2, :cond_2

    :goto_2
    return v0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v1, v0

    goto :goto_0
.end method
